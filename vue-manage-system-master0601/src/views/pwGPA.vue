<template>
  <Transition>
    <div>
      <h1 class="centered-title">绩点审核</h1>

      <div class="space1"></div>
      <el-card>
        <el-row>
          <el-col :span="4">
            <el-input
              placeholder="请输入学生学号"
              clearable
              v-model="queryInfo.query"
              @clear="getStudentList"
            >
              <el-button
                slot="append"
                icon="el-icon-search"
                @click="searchStudent"
              ></el-button>
            </el-input>
          </el-col>
          <el-col :span="3">
            <el-button type="primary" @click="searchStudent">搜索学生</el-button>
          </el-col>
        </el-row>



        <div class="space2"></div>
        <el-table :data="paginatedStudents" stripe border bordereight="250" style="width: 100%" v-slot="scope">
          <el-table-column type="index" width="50"></el-table-column>
          <el-table-column prop="name" label="姓名">
            <template #default="scope">
            <div :class="{ 'highlighted-row': scope.row.isHighlighted }">
              {{ scope.row.name }}
            </div>
            </template>
          </el-table-column>
          <el-table-column prop="id" label="学号">
            <template #default="scope">
            <div :class="{ 'highlighted-row': scope.row.isHighlighted }">
              {{ scope.row.id }}
            </div>
            </template>
          </el-table-column>
          <el-table-column prop="department" label="学苑">
            <template #default="scope">
            <div :class="{ 'highlighted-row': scope.row.isHighlighted }">
              {{ scope.row.department }}
            </div>
            </template>
          </el-table-column>
          <el-table-column prop="gpa" label="绩点">
            <template #default="scope">
            <div :class="{ 'highlighted-row': scope.row.isHighlighted }">
              {{ scope.row.gpa }}
            </div>
            </template>
          </el-table-column>
          <el-table-column prop="action1" label="操作" fixed="right">
            <template #default="scope">
              <el-button type="link" @click="show1(scope.row)">查看</el-button>
            </template>
          </el-table-column>
          <el-table-column prop="action2" label="操作" fixed="right">
            <template #default="scope">
              <el-button type="link" @click="showDialog2(scope.row)">修改</el-button>
            </template>
          </el-table-column>
        </el-table>

        <!--  
        <el-table style="width: 100%" border :data="tableData" v-slot="scope">
          <template v-for="(item,index) in tableHead">
            <el-table-column :prop="item.column_name" :label="item.column_comment" :key="index" v-if="item.column_name != 'id'" @click='getIndex(index)'></el-table-column>
          </template>
          {{scope.row}}
        </el-table>
       -->


        
        <el-dialog title="详情"  v-model="dialogVisible"  v-bind="$attrs">
          <el-form :model="currentStudent" label-width="80px">
            <el-form-item label="姓名">
              <el-input v-model="currentStudent.name" disabled></el-input>
            </el-form-item>
            <el-form-item label="学号">
              <el-input v-model="currentStudent.id" disabled></el-input>
            </el-form-item>
            <el-form-item label="学苑">
              <el-input v-model="currentStudent.department" disabled></el-input>
            </el-form-item>
            <el-form-item label="绩点">
              <el-input v-model="currentStudent.gpa" disabled></el-input>
            </el-form-item>
          </el-form>
          <div slot="footer" class="dialog-footer">
            <el-button type="primary" @click="submitForm1">刷 新</el-button>
            <el-button @click="dialogVisible = false">关 闭</el-button>
          </div>
        </el-dialog>


        
        <el-dialog title="修改绩点"  v-model="applyVisible" v-bind="$attrs">
          <el-form :model="currentStudent" label-width="80px">
            <el-form-item label="姓名">
              <el-input v-model="currentStudent.name" disabled></el-input>
            </el-form-item>
            <el-form-item label="学号">
              <el-input v-model="currentStudent.id" disabled></el-input>
            </el-form-item>
            <el-form-item label="学苑">
              <el-input v-model="currentStudent.department" disabled></el-input>
            </el-form-item>
            <el-form-item label="已录入绩点">
              <el-input v-model="currentStudent.gpa" disabled></el-input>
            </el-form-item>
            <el-form-item label="修改绩点">
              <el-input v-model="currentStudent.newgpa"></el-input>
            </el-form-item>
          </el-form>
          <div slot="footer" class="dialog-footer">
            <el-button type="primary" @click="submitForm2">确 定</el-button>
            <el-button @click="applyVisible = false">取 消</el-button>
          </div>
        </el-dialog>
        
        <el-pagination
          @size-change="handleSizeChange"
          @current-change="handleCurrentChange"
          :current-page="queryInfo.pagenum"
          :page-sizes="[10, 20, 50]"
          :page-size="queryInfo.pagesize"
          layout="total, sizes, prev, pager, next, jumper"
          :total="Students.length"
          background
        ></el-pagination>
      </el-card>
    </div>
  </Transition>
</template>

<script>
import { checkStuGPA } from "../api/changeStuInfo.js";
import { changeGPA } from "../api/changeStuInfo.js";
export default {
  inheritAttrs: false,
  computed: {
    crumbs() {
      const routes = this.$route.matched;
      const crumbs = [];

      routes.forEach(route => {
        if (route.meta.breadcrumb) {
          crumbs.push(...route.meta.breadcrumb);
        }
      });

      return crumbs;
    },
    paginatedStudents() {
      const start = (this.queryInfo.pagenum - 1) * this.queryInfo.pagesize;
      const end = start + this.queryInfo.pagesize;
      return this.Students.slice(start, end);
    },
  },
  data() {
    return {
      queryInfo: {
        query: "",
        pagenum: 1,
        pagesize: 10
      },
      /**
      Students: [
        { name: '张三', id: '10001', department: '软件学院', gpa: 2.0, applygpa: 2.0, status: '已通过' },
        { name: '李四', id: '10002', department: '计算机学院', gpa: 3.0, applygpa: 2.0, status: '审核中' },
        { name: '王五', id: '10003', department: '信息科学学院', gpa: 2.0, applygpa: 3.5, status: '待审核' },
        { name: '张三', id: '10001', department: '软件学院', gpa: 2.0, applygpa: 2.0, status: '已通过' },
        { name: '李四', id: '10002', department: '计算机学院', gpa: 3.0, applygpa: 2.0, status: '审核中' },
        { name: '王五', id: '10003', department: '信息科学学院', gpa: 2.0, applygpa: 3.5, status: '待审核' },        { name: '张三', id: '10001', department: '软件学院', gpa: 2.0, applygpa: 2.0, status: '已通过' },
        { name: '李四', id: '10002', department: '计算机学院', gpa: 3.0, applygpa: 2.0, status: '审核中' },
        { name: '王五', id: '10003', department: '信息科学学院', gpa: 2.0, applygpa: 3.5, status: '待审核' },        { name: '张三', id: '10001', department: '软件学院', gpa: 2.0, applygpa: 2.0, status: '已通过' },
        { name: '李四', id: '10002', department: '计算机学院', gpa: 3.0, applygpa: 2.0, status: '审核中' },
        { name: '王五', id: '10003', department: '信息科学学院', gpa: 2.0, applygpa: 3.5, status: '待审核' },
      ],
      tableHead:[
          {
            column_name: "column_name",column_comment:"姓名"
          },
          {
            column_name: "column_age",column_comment:"年龄"
          },
          {
            column_name: "column_sex",column_comment:"性别"
          }
      ],
      // 表格数据
      tableData: [{
          column_age: '3',
          column_name: '鞠婧祎',
          column_sex: '女'
        },
        {
          column_age: '25',
          column_name: '魏大勋',
          column_sex: '男'
        },
        {
          column_age: '18',
          column_name: '关晓彤',
          column_sex: '女'
      }],
      */
      Students: [],
      currentStudent: {},

      dialogVisible: false,
      applyVisible: false,
    };
  },
  methods: {
    getIndex(index){
      console.log(index);
    },
    handleSizeChange(newSize) {
      this.queryInfo.pagesize = newSize;
    },
    handleCurrentChange(newPage) {
      this.queryInfo.pagenum = newPage;
    },
    searchStudent() {
      const studentId = this.queryInfo.query;
     if (studentId) {
      const index = this.Students.findIndex((student) =>student.id.toString() === studentId);
      //console.log(typeof this.Students[0].id);//number类型，即int
      //console.log(typeof studentId);//string类型，因此要进行类型转换后再对比
      if (index !== -1) {
      const pageSize = this.queryInfo.pagesize;
      const pageNum = Math.ceil((index + 1) / pageSize);
      this.queryInfo.pagenum = pageNum;
        // 将匹配到的学生行设为高亮
        this.Students.forEach((student, idx) => {
            student.isHighlighted = idx === index;
          });
      // 滚动页面到匹配的学生行
      this.$nextTick(() => {
        this.scrollToRow(index);
      });
     } else {
      // 如果学号不存在，给出相应的提示或处理逻辑
      console.log('学号不存在');
    }
     }
  },
  scrollToRow(index) {
  const currentPage = this.queryInfo.pagenum;
  const pageSize = this.queryInfo.pagesize;
  const startIndex = (currentPage - 1) * pageSize;
  const relativeIndex = index - startIndex;
  const table = document.querySelector('.el-table__body-wrapper');
  console.log(table);
  const row = table.querySelector(`.el-table__row`);
  if (row) {
    row.scrollIntoView({ behavior: 'smooth' });
  }
},
    /*
    getStudentList() {
      // TODO: Implement the logic to retrieve student list based on the queryInfo
      // You can make an API request or filter the existing student list.
    },
    goAddPage() {
      this.$router.push("goods/add");
    },
    */
    show1(row) {
      console.log(row)
      this.currentStudent = Object.assign({}, row);
      console.log(row)
      this.dialogVisible = true;
    },
    showDialog1(row) {
      console.log(row)
      this.currentStudent = Object.assign({}, row);
      console.log(row)
      this.dialogVisible = true;
    },
    showDialog2(row) {
      this.currentStudent = Object.assign({}, row);
      this.applyVisible = true;
    },
    submitForm1() {
      this.dialogVisible = false;
      this.$nextTick(() => {
        this.fetchStudentGPAList();
      });
    },
    submitForm2() {
      console.log(this.currentStudent.id, this.currentStudent.gpa, this.currentStudent.newgpa)
      // 调用评委修改学生成绩的方法
      changeGPA(this.currentStudent.id, this.currentStudent.gpa, this.currentStudent.newgpa)
        .then(response => {
          // 处理成功响应
          console.log(response.data);  // 可根据需要进行处理
        this.applyVisible = false;
        this.$nextTick(() => {
        this.fetchStudentGPAList();
      });
        })
        .catch(error => {
          // 处理错误响应
          console.error(error);  // 可根据需要进行处理
        });
    },
    fetchStudentGPAList() {
      checkStuGPA().then(response => {
        this.Students = response.data;
      }).catch(error => {
        console.log(error);
      });
    },
  },
  mounted() {
    this.fetchStudentGPAList();
  }
}
</script>

<style>
.highlighted-row {
  background-color: #c6f3af;
}
.centered-title {
  text-align: center;
}
.filter-buttons {
  display: flex;
  justify-content: flex-start;
  margin-top: 10px;
}
.space1{
  height: 10px;
}
.space2{
  height: 20px;
}
</style>
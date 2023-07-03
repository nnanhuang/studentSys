<template>
  <Transition>
    <div class="container">
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
                @click="handleCurrentChange"
              ></el-button>
            </el-input>
          </el-col>
          <el-col :span="3">
            <el-button type="primary" @click="fetchStudentVolunList">搜索学生</el-button>
          </el-col>
        </el-row>
        <div class="space2"></div>
        <el-table
          :data="Students"
          stripe
          border
          bordereight="250"
          style="width: 100%"
        >
          <el-table-column type="index" width="50"></el-table-column>
          <el-table-column prop="name" label="姓名"></el-table-column>
          <el-table-column prop="id" label="学生ID"></el-table-column>
          <el-table-column prop="department" label="学苑"></el-table-column>
          <el-table-column prop="gpa" label="绩点"></el-table-column>
          <el-table-column prop="action" label="操作" fixed="right">
            <el-button type="text" @click="showDialog1(scope.$index)">查看</el-button>
          </el-table-column>
          <el-table-column prop="action" label="操作" fixed="right">
            <el-button type="text" @click="showDialog2(scope.$index)">修改</el-button>
          </el-table-column>
        </el-table>
        <el-dialog title="详情" :visible.sync="checkVisible">
          <el-form :model="currentStudent" label-width="80px">
            <el-form-item label="姓名">
              <el-input v-model="currentStudent.name" disabled></el-input>
            </el-form-item>
            <el-form-item label="学生ID">
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
            <el-button @click="checkVisible = false">关 闭</el-button>
          </div>
        </el-dialog>
        <el-dialog title="修改绩点" :visible.sync="applyVisible">
          <el-form :model="currentStudent" label-width="80px">
            <el-form-item label="姓名">
              <el-input v-model="currentStudent.name" disabled></el-input>
            </el-form-item>
            <el-form-item label="学生ID">
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
          :total="total"
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
  data() {
    return {
      queryInfo: {
        query: "",
        pagenum: 1,
        pagesize: 10
      },
      Students: [],
      currentStudent: {},
      checkVisible: false,
      applyVisible: false
    };
  },
  methods: {
    showDialog1(index) {
      this.currentStudent = this.Students[index];
      this.checkVisible = true;
    },
    showDialog2(index) {
      console.log(index)
      this.currentStudent = this.Students[index];
      this.applyVisible = true;
    },
    submitForm1() {
      this.fetchStudentGPAList();
      this.checkVisible = false;
      // TODO: update current Student's gpa
    },
    submitForm2() {
      changeGPA(this.currentStudent.id, this.currentStudent.gpa, this.currentStudent.newgpa)
        .then(() => {
          console.log("success");
          this.applyVisible = false;
        })
        .catch(error => {
          console.log(error);
        });
      this.applyVisible = false;
      // TODO: update current Student's gpa
    },
    handleCurrentChange(newPage) {
      this.queryInfo.pagenum = newPage;
      this.fetchStudentGPAList();
    },
    fetchStudentGPAList() {
      const { query, pagenum, pagesize } = this.queryInfo;
      checkStuGPA(query, pagenum, pagesize)
        .then(response => {
          this.Students = response.data;
        })
        .catch(error => {
          console.log(error);
        });
    }
  },
  mounted() {
    this.fetchStudentGPAList();
  }
};
</script>

<style>
.container {
  display: flex;
  flex-direction: column;
  align-items: center;
  height: 80vh;
  padding: 10px;
}
.centered-title {
  text-align: center;
}
.filter-buttons {
  display: flex;
  justify-content: flex-start;
  margin-top: 10px; /* 可以根据需要调整按钮与表格之间的距离 */
}
.space1 {
  height: 10px;
}
.space2 {
  height: 20px;
}
</style>

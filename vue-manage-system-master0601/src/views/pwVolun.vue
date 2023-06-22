<template>
  <Transition>
  <div>
    <div>
    <h1 class="centered-title">志愿时长审核</h1>
    </div>
    <div class="space1"></div>
    <div>
    <el-card>
    <el-row >
        <el-col :span="4">
          <el-input
            placeholder="请输入学生学号"
            clearable
            v-model="queryInfo.query"
            @clear="fetchVolunteerList"
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
    <!-- 
      <el-select v-model="filterStatus" placeholder="选择状态" @change="handleStatusChange">
      <el-option value="">全部</el-option>
      <el-option value="已修改">已修改</el-option>
      <el-option value="未修改">未修改</el-option>
    </el-select>
     -->
    <el-table :data="paginatedVolunteers"   stripe  border  bordereight="250" style="width: 100%">
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
      <el-table-column prop="hours" label="志愿时长">
        <template #default="scope">
            <div :class="{ 'highlighted-row': scope.row.isHighlighted }">
              {{ scope.row.hours }}
            </div>
            </template>
        <!--  
        <template #default="scope">
            <div>
              <span>{{ scope.row.hours }} 小时</span>
            </div>
            </template>
            -->
      </el-table-column>
      <el-table-column prop="status" label="状态" :filters="statusFilters" :filter-method="handleStatusFilter">
         <template #default="scope">
         <div :class="{ 'highlighted-row': scope.row.isHighlighted }">
         {{ scope.row.status }}
         </div>
         </template>
         </el-table-column>
      <el-table-column prop="action1" label="操作" fixed="right">
        <template #default="scope">
          <el-button type="link" @click="showDialog1(scope.row)">查看</el-button>
        </template>
      </el-table-column>
      <el-table-column prop="action2" label="操作" fixed="right">
        <template #default="scope">
          <el-button type="link" @click="showDialog2(scope.row)">修改</el-button>
        </template>
      </el-table-column>
    </el-table>

    <el-dialog title="详情" v-model="checkVisible" v-bind="$attrs">
      <el-form :model="currentVolunteer" label-width="80px">
        <el-form-item label="姓名">
          <el-input v-model="currentVolunteer.name" disabled></el-input>
        </el-form-item>
        <el-form-item label="学号">
          <el-input v-model="currentVolunteer.id" disabled></el-input>
        </el-form-item>
        <el-form-item label="学苑">
          <el-input v-model="currentVolunteer.department" disabled></el-input>
        </el-form-item>
        <el-form-item label="志愿时长">
          <el-input v-model="currentVolunteer.hours" disabled></el-input>
        </el-form-item>
        <el-form-item label="状态">
              <el-input v-model="currentVolunteer.status" disabled></el-input>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm1">刷 新</el-button>
        <el-button  @click="checkVisible = false">关 闭</el-button>
      </div>
    </el-dialog>

    <el-dialog title="修改志愿时长" v-model="applyVisible" v-bind="$attrs">
      <el-form :model="currentVolunteer" label-width="80px">
        <el-form-item label="姓名">
          <el-input v-model="currentVolunteer.name" disabled></el-input>
        </el-form-item>
        <el-form-item label="学号">
          <el-input v-model="currentVolunteer.id" disabled></el-input>
        </el-form-item>
        <el-form-item label="学苑">
          <el-input v-model="currentVolunteer.department" disabled></el-input>
        </el-form-item>
        <el-form-item label="状态">
              <el-input v-model="currentVolunteer.status" disabled></el-input>
        </el-form-item>
        <el-form-item label="已录入时长">
          <el-input v-model="currentVolunteer.hours" disabled></el-input>
        </el-form-item>
        <el-form-item label="修改时长">
          <el-input v-model="currentVolunteer.newhours"></el-input>
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
        :total="volunteers.length"
        background
      >
      </el-pagination>
  </el-card>
  </div>

  </div>
  </Transition>
</template>

<script>
import { checkStuVol } from "../api/changeStuInfo.js";
import { changeVol } from "../api/changeStuInfo.js";
export default {
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
    /*
    filteredVolunteers() {
    if (!this.volunteers || this.volunteers.length === 0) {
      return []; // 如果 volunteers 为空或未请求到，返回一个空数组
    }
    console.log(this.filteredStatus)
    if (this.filteredStatus === '') {
      return this.volunteers; // 如果筛选状态为空，则返回所有志愿者数据
    } else {
      return this.volunteers.filter((volunteer) => this.filteredStatus.includes(volunteer.status));
    }
  },
  */
  paginatedVolunteers() {
    const start = (this.queryInfo.pagenum - 1) * this.queryInfo.pagesize;
    const end = start + this.queryInfo.pagesize;

    return this.volunteers.slice(start, end);
    /*
    let slicedVolunteers = this.filteredVolunteers.slice(start, end);

    // 如果当前页数据不足 pagesize，并且还有剩余数据需要补齐
    if (slicedVolunteers.length < this.queryInfo.pagesize && end < this.filteredVolunteers.length) {
      const remainingCount = this.queryInfo.pagesize - slicedVolunteers.length;
      const remainingVolunteers = this.filteredVolunteers.slice(end, end + remainingCount);
      slicedVolunteers = slicedVolunteers.concat(remainingVolunteers);
    }

    return slicedVolunteers;
    */
  }
  },
  data() {
    return {
      queryInfo: {
        query: "",
        pagenum: 1,
        pagesize: 10
      },
      volunteers: [
        /*
        { name: '张三', id: '10001', department: '软件学院', hours: 20 ,applyhours: 20 ,status: '已通过' },
        { name: '李四', id: '10002', department: '计算机学院', hours: 30,applyhours: 20 ,status: '审核中'},
        { name: '王五', id: '10003', department: '信息科学学院', hours: 10 ,  applyhours: 20,status: '待审核'},
        */
      ],
      currentVolunteer: {},
      checkVisible: false,
      applyVisible: false,
      statusFilters: [ // 筛选选项
        { text: '已修改', value: '已修改' },
        { text: '未修改', value: '未修改' }
      ],
      filteredStatus: '' // 筛选的状态值
    };
  },
  methods: {
    handleStatusFilter(value, row) {
      //this.filteredStatus = value; // 将选中的筛选值赋给 filteredStatus
      return row.status === value; // 根据状态值进行筛选
    },
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
      const index = this.volunteers.findIndex((volunteer) =>volunteer.id.toString() === studentId);
      //console.log(typeof this.Students[0].id);//number类型，即int
      //console.log(typeof studentId);//string类型，因此要进行类型转换后再对比
      if (index !== -1) {
      const pageSize = this.queryInfo.pagesize;
      const pageNum = Math.ceil((index + 1) / pageSize);
      this.queryInfo.pagenum = pageNum;
        // 将匹配到的学生行设为高亮
        this.volunteers.forEach((volunteer, idx) => {
        volunteer.isHighlighted = idx === index;
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
    showDialog1(row) {
      this.currentVolunteer = Object.assign({}, row);
      this.checkVisible = true;
    },
    showDialog2(row) {
      this.currentVolunteer = Object.assign({}, row);
      this.applyVisible = true;
    },
    submitForm1() {
      this.checkVisible = false;
      this.$nextTick(() => {
        this.fetchVolunteerList();
      });
      // TODO: update current volunteer's hours
    },
    submitForm2() {
      console.log(this.currentVolunteer.id, this.currentVolunteer.hours, this.currentVolunteer.newhours)
      // 调用评委修改学生志愿时长的方法
      changeVol(this.currentVolunteer.id, this.currentVolunteer.hours, this.currentVolunteer.newhours)
        .then(response => {
          // 处理成功响应
          console.log(response.data);  // 可根据需要进行处理
        this.applyVisible = false;
        this.$nextTick(() => {//实现完成dom后即时响应
        this.fetchVolunteerList();
      });
        })
        .catch(error => {
          // 处理错误响应
          console.error(error);  // 可根据需要进行处理
          this.applyVisible = false;
        });
    },
    fetchVolunteerList() {
      checkStuVol().then(response => {
        this. volunteers = response.data;
      }).catch(error => {
        console.log(error);
      });
    }
  },mounted() {
    this.fetchVolunteerList();
  }
};
</script>

<style>
.highlighted-row {
  background-color: #c6f3af;
}
.centered-title {
  text-align: center;
}
.space1{
  height: 10px;
}
.space2{
  height: 20px;
}
.filter-buttons {
  display: flex;
  justify-content: flex-start;
  margin-top: 10px; /* 可以根据需要调整按钮与表格之间的距离 */
}
.el-input--mini {
  display: inline-block;
  width: 200px;
  float: right;
}
</style>

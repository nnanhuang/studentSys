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
            @clear="getStudentList"
          >
            <el-button
              slot="append"
              icon="el-icon-search"
              @click="handleCurrentChange()"
            ></el-button>
          </el-input>
        </el-col>
        <el-col :span="3">
          <el-button type="primary" @click="goAddPage">搜索学生</el-button>
        </el-col>
    </el-row>
    <div class="space2"></div>
    <el-table :data="volunteers"   stripe  border  bordereight="250" style="width: 100%">
      <el-table-column type="index" width="50"></el-table-column>
      <el-table-column prop="name" label="姓名"></el-table-column>
      <el-table-column prop="id" label="学号"></el-table-column>
      <el-table-column prop="department" label="学苑"></el-table-column>
      <el-table-column prop="hours" label="志愿时长">
        <template slot-scope="{row}">
          <span>{{ row.hours }} 小时</span>
        </template>
      </el-table-column>
      <el-table-column prop="action" label="操作" fixed="right">
          <el-button type="text" @click="showDialog1(row)">查看</el-button>
      </el-table-column>
      <el-table-column prop="action" label="操作" fixed="right">
          <el-button type="text" @click="showDialog2(row)">修改</el-button>
      </el-table-column>
    </el-table>
    <el-dialog title="详情" :visible.sync="checkVisible">
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
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm1">刷 新</el-button>
        <el-button  @click="checkVisible = false">关 闭</el-button>
      </div>
    </el-dialog>
    <el-dialog title="修改志愿时长" :visible.sync="applyVisible">
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
        <el-form-item label="已录入志愿时长">
          <el-input v-model="currentVolunteer.hours" disabled></el-input>
        </el-form-item>
        <el-form-item label="修改志愿时长">
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
        :total="total"
        background
      >
      </el-pagination>
  </el-card>
  </div>

  </div>
  </Transition>
</template>

<script>
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
  },
  data() {
    return {
      queryInfo: {
        query: "",
        pagenum: 1,
        pagesize: 10
      },
      volunteers: [
        { name: '张三', id: '10001', department: '软件学院', hours: 20 ,applyhours: 20 ,status: '已通过' },
        { name: '李四', id: '10002', department: '计算机学院', hours: 30,applyhours: 20 ,status: '审核中'},
        { name: '王五', id: '10003', department: '信息科学学院', hours: 10 ,  applyhours: 20,status: '待审核'},
      ],
      currentVolunteer: {},
      checkVisible: false,
      applyVisible: false
    };
  },
  methods: {
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
      // TODO: update current volunteer's hours
    },
    submitForm2() {
      this.applyVisible = false;
      // TODO: update current volunteer's hours
    },
  },
};
</script>

<style>
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

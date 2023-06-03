<template>
  <div>

    <div style="height: 2px;"></div> 
    <el-card>
      <el-row :gutter="20">
        <el-col :span="8">
        </el-col>
      </el-row>
      
      <div style="height: 2px;"></div>
      <div>
        <el-button type="primary" style="float:right" @click="downLoad">导出为excel</el-button>
      </div>
      <div style="height: 50px;"></div>

      <el-table :data="goodslist" stripe border style="width: 100%">
        <el-table-column prop="id" label="学生id" header-align="center"> </el-table-column>
        <el-table-column prop="studentId" label="条目id" header-align="center"></el-table-column>
        <el-table-column prop="socialScore" label="社会实践分数" header-align="center"></el-table-column>
        <el-table-column prop="sciScore" label="科研分数情况" header-align="center"></el-table-column>
        <el-table-column prop="volunteerScore" label="志愿服务分数" header-align="center"></el-table-column>
        <el-table-column prop="orgScore" label="学科骨干服务分数" header-align="center"></el-table-column>
        <el-table-column prop="sumScore" label="个人学年总结分数" header-align="center"></el-table-column>
        <el-table-column prop="studyScore" label="学习成绩" header-align="center"></el-table-column>
        <el-table-column prop="finalScore" label="学生总分" header-align="center"></el-table-column>
      </el-table>
      <div style="height: 20px;"></div> 
      <div style="display: flex; justify-content: center;">
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
    </div>
    </el-card>
  </div>
</template>

<script>
import { getScoreSum } from "../api/login.js";
export default {
  data() {
    return {
      queryInfo: {
        query: "",
        pagenum: 1,
        pagesize: 10
      },
      goodslist: [],
      total:0,
    };
  },
  mounted() {
    getScoreSum().then((res) => {
      console.log(res);
      this.goodslist = res;
    });
  },
  methods: {
    async getGoodsList() {
      getScoreSum().then((res) => {
        this.goodslist = res;
      });
    },
    downLoad() {  //导出excel文件
      window.location.href='http://localhost:28080/scoreSum/download';
      ELMessage.success("导出成功");
    },
    handleSizeChange(newSize) {
      this.queryInfo.pagesize = newSize;
      this.getGoodsList();
    },
    handleCurrentChange(newPage) {
      this.queryInfo.pagenum = newPage;
      this.getGoodsList();
    },
    // eslint-disable-next-line no-unused-vars
    edit(row){
      alert(JSON.stringify(row));
    },
    removeById(id) {
      this.$confirm("此操作将永久删除该商品, 是否继续?", "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning"
      })
        .then(async () => {
          const { data } = await this.$http.delete(`goods/${id}`);
          if (data.meta.status !== 200) {
            return this.$message.error(data.meta.msg);
          }
          this.getGoodsList();
          this.$message({
            type: "success",
            message: "删除成功!"
          });
        })
        .catch(() => {
          this.$message({
            type: "info",
            message: "已取消删除"
          });
        });
    },
    goAddPage() {
      this.$router.push("goods/add");
    }
  }
};
</script>


<style lang="less" scoped></style>


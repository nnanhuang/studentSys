<template>
  <Transition>
    <div>
      <div class="space1"></div>
      <el-card>
        <!--表格主体-->
        <h1 class="centered-title">骨干服务情况</h1>
        <div class="space2"></div>
        <el-table :data="ServePositionList" stripe border bordereight="250" style="width: 100%">
          <el-table-column type="index" width="50"></el-table-column>
          <el-table-column prop="time" label="时间"></el-table-column>
          <el-table-column prop="content" label="内容"></el-table-column>
          <!-- <el-table-column prop="material" label="证明材料"></el-table-column> -->
          <el-table-column prop="action1" label="操作" fixed="right">
            <template #default="scope">
              <el-button type="link" @click="showDialog1(scope.row)">修改</el-button>
            </template>
          </el-table-column>
          <el-table-column prop="action2" label="操作" fixed="right">
            <template #default="scope">
              <el-button type="link" @click="showDialog2(scope.row)">删除</el-button>
            </template>
          </el-table-column>
        </el-table>

        <!--弹窗1：修改-->
        <el-dialog title="修改"  v-model="dialogVisible"  v-bind="$attrs">
          <el-form :model="ServePosition" label-width="80px">
            <el-form-item label="起止时间">
              <el-input v-model="ServePosition.time" placeholder="xxxx.xx-xxxx.xx"></el-input>
            </el-form-item>
            <el-form-item label="具体内容">
              <el-input v-model="ServePosition.content"></el-input>
            </el-form-item>
            <el-form-item label="证明材料">
                <el-upload
                  ref="fileUpload"
                  :auto-upload="false"
                  :on-change="handleMaterialChange"
                >
                  <el-button slot="trigger" size="small" type="primary">点击上传</el-button>
                </el-upload>
              </el-form-item>
          </el-form>
          <div slot="footer" class="dialog-footer">
            <el-button type="primary" @click="modifyServePosition">提 交</el-button>
            <el-button @click="dialogVisible = false">关 闭</el-button>
          </div>
        </el-dialog>

        <!--弹窗2：删除-->
        <el-dialog title="删除记录"  v-model="applyVisible" v-bind="$attrs">
          <el-form :model="ServePosition" label-width="80px">
            <el-form-item label="起止时间">
              <el-input v-model="ServePosition.time" disabled></el-input>
            </el-form-item>
            <el-form-item label="具体内容">
              <el-input v-model="ServePosition.content" disabled></el-input>
            </el-form-item>
          </el-form>
          <h1 class="delete-reminder">确定删除此条记录吗？</h1>
          <div slot="footer" class="dialog-footer">
            <el-button type="primary" @click="deleteServePosition">确 定</el-button>
            <el-button @click="applyVisible = false">取 消</el-button>
          </div>
        </el-dialog>

        <!--按钮：回到填报页面 -->
        <div class="centered-container">
          <el-form-item>  
            <el-button type="success" @click="back"  class="back">回到填报页面</el-button>
          </el-form-item>
        </div>
      </el-card>
    </div>
  </Transition>
</template>


<script>
import { viewServePosition } from "../api/login.js";
import { deleteServePosition } from "../api/login.js"
import { modifyServePosition } from "../api/login.js"

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
      ServePositionList: [],
      ServePosition: {},

      dialogVisible: false,
      applyVisible: false,
    };
  },
  mounted() {
    this.fetchServePositionList();
  },
  methods: {
    back() {
      this.$router.push({ path: '/addServePosition' })
    },
    handleSizeChange(newSize) {
      this.queryInfo.pagesize = newSize;
    },
    handleCurrentChange(newPage) {
      this.queryInfo.pagenum = newPage;
    },
    goAddPage() {
      this.$router.push("goods/add");
    },

    fetchServePositionList() {
      viewServePosition()
        .then(response => {
          console.log(response.data)
          this.ServePositionList = response.data;
        })
        .catch(error => {
          console.log(error);
        });
    },

    

    showDialog1(row) {
      this.ServePosition = Object.assign({}, row);    //将row的值赋给data()中的ServePosition
      this.dialogVisible = true;    //打开弹窗
    },

    showDialog2(row) {
      this.ServePosition = Object.assign({}, row);    //将row的值赋给data()中的ServePosition
      this.applyVisible = true;    //打开弹窗
    },

    deleteServePosition() {
      deleteServePosition(this.ServePosition.id).then(response => {
          //console.log(response.data)
          this.applyVisible = false;    //关闭弹窗
          this.fetchServePositionList();    //刷新列表
          ElMessage.success('选中的记录已成功删除')    //提示成功删除
      }).catch(error => {
          console.log(error);
      });
    },
    handleMaterialChange(material) {
      const reader = new FileReader();
        reader.onload = () => {
          const base64String = reader.result.split(",")[1];
          this.ServePosition.material = base64String;
        };
        reader.readAsDataURL(material.raw);
    },
    modifyServePosition() {
      //console.log(this.ServePosition.content)
      modifyServePosition(this.ServePosition.id,this.ServePosition.time,this.ServePosition.content,this.ServePosition.material).then(response => {
          //console.log(response.data)
          this.dialogVisible = false;    //关闭弹窗
          this.fetchServePositionList();    //刷新列表
          ElMessage.success('修改成功')    //提示信息
      }).catch(error => {
          console.log(error);
      });
    },
    
  },
}
</script>



<style>
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
.centered-container {
  padding: 20px;
  display: flex;
  justify-content: center;
}
.delete-reminder {
  padding: 20px;
  display: flex;
  justify-content: center;
}
.dialog-footer {
  display: flex;
  justify-content: center;
  align-items: center;
}
</style>
<template>
    <Transition>
      <div>
        <div class="space1"></div>
        <el-card>
          <!--表格主体-->
          <div class="space2"></div>
          <h1 class="centered-title">社会实践</h1>
          <div class="space3"></div>
          <el-table :data="SocialList" stripe border bordereight="250" style="width: 100%">
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
         
          <el-dialog title="修改"  v-model="dialogVisible"  v-bind="$attrs" >
            <el-form :model="Social" label-width="80px">
              <el-form-item label="时间">
                <el-input v-model="Social.time" ></el-input>
              </el-form-item>
              <el-form-item label="具体内容">
                <el-input v-model="Social.content" ></el-input>
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
            <div slot="footer" class="dialog-footer centered-buttons">
              <el-button type="primary" @click="modifySocial">提 交</el-button>
              <el-button @click="dialogVisible = false">关 闭</el-button>
            </div>
          </el-dialog>
  
          <!--弹窗2：删除-->
          <el-dialog title="删除记录"  v-model="applyVisible" v-bind="$attrs">
            <el-form :model="Social" label-width="80px">
              <el-form-item label="时间">
                <el-input v-model="Social.time" disabled></el-input>
              </el-form-item>
              <el-form-item label="具体内容">
                <el-input v-model="Social.content" disabled></el-input>
              </el-form-item>
            </el-form>
            <h1 class="delete-reminder">确定删除此条记录吗？</h1>
            <div slot="footer" class="dialog-footer centered-buttons">
              <el-button type="primary" @click="deleteSocial">确 定</el-button>
              <el-button @click="applyVisible = false">取 消</el-button>
            </div>
          </el-dialog>
  
          <!--按钮：回到填报页面 -->
          <div class="space2"></div>
          <div class="centered-container">
            <el-form-item>  
              <el-button type="success" @click="add"  class="add">新增记录</el-button>
            </el-form-item>
          </div>
        </el-card>
      </div>
    </Transition>
  </template>
  
  
  <script>
  import { viewSocial } from "../api/login.js"
  import { deleteSocial } from "../api/login.js"
  import { modifySocial } from "../api/login.js"
  
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
        SocialList: [
          { id: '1', stuId: '11111', type: "论文", content: "哈哈哈哈哈哈哈"},
          { id: '2', stuId: '11111', type: "论文", content: "哈哈哈哈哈哈哈"},
          { id: '3', stuId: '11111', type: "论文", content: "哈哈哈哈哈哈哈"},
          { id: '4', stuId: '11111', type: "论文", content: "哈哈哈哈哈哈哈"},
          { id: '5', stuId: '11111', type: "论文", content: "哈哈哈哈哈哈哈"},
          { id: '6', stuId: '11111', type: "论文", content: "哈哈哈哈哈哈哈"},
          ],
        Social: {},
  
        dialogVisible: false,
        applyVisible: false,
      };
    },
    mounted() {
      this.fetchSocialList();
    },
    methods: {
      add() { //把back改add
        this.$router.push({ path: '/addSocial' })
      },
      handleSizeChange(newSize) {
        this.queryInfo.pagesize = newSize;
      },
      handleCurrentChange(newPage) {
        this.queryInfo.pagenum = newPage;
      },
      fetchSocialList() {
        viewSocial()
          .then(response => {
            console.log(response.data)
            this.SocialList = response.data;
          })
          .catch(error => {
            console.log(error);
          });
      },
      goAddPage() {
        this.$router.push("goods/add");
      },
      showDialog1(row) {
        this.Social = Object.assign({}, row);    //将row的值赋给data()中的Social
        console.log(this.Social);
        this.dialogVisible = true;    //打开弹窗
      },
      showDialog2(row) {
        //console.log(row.id);
        this.Social = Object.assign({}, row);    //将row的值赋给data()中的Social
        //console.log(this.Social);
        this.applyVisible = true;    //打开弹窗
      },
      deleteSocial() {
        deleteSocial(this.Social.id,this.Social.time,this.Social.content,this.Social.stuId).then(response => {
            console.log(response.data)
            this.applyVisible = false;    //关闭弹窗
            this.fetchSocialList();    //刷新列表
            ElMessage.success('选中的记录已成功删除')    //提示成功删除
        }).catch(error => {
            console.log(error);
        });
      },
      handleMaterialChange(material) {
        const reader = new FileReader();
        reader.onload = () => {
          const base64String = reader.result.split(",")[1];
          this.social.material = base64String;
        };
        reader.readAsDataURL(material.raw);
      },
      modifySocial() {
        console.log(this.Social.content)
        modifySocial(this.Social.id,this.Social.time,this.Social.content,this.Social.material).then(response => {
            console.log(response.data)
            this.applyVisible = false;    //关闭弹窗
            this.fetchSocialList();    //刷新列表
            ElMessage.success('修改成功')    //提示信息
        }).catch(error => {
            console.log(error);
        });
      },
      
    },}
    
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
  .space3{
    height: 30px;
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
  .el-dialog__wrapper {
    display: flex;
    align-items: center;
    justify-content: center;
    
  }
  .centered-buttons {
    display: flex;
    justify-content: center;
  }
  
  
  </style>
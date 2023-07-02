<template>
  <div class="upload-tool">
    <span>
      <el-upload
        class="upload-demo"
        method="post"
        action="http://localhost:28080/userRole/upload"
        accept=".xlsx,.xls"
        :on-success="handleAvatarSuccess"
        :on-error="handleUploadError"
        :on-progress="uploadProgress"
        :show-file-list="false"
        :headers="headerObj"
        name="file"
      >
        <el-button type="success" size="medium" class="button" @click="reminder">导入excel</el-button>
      </el-upload>
    </span>   
  </div>

  <el-table :data="stuInfoList" stripe border style="width: 100%">
    <!--el-table-column prop="id" label="学生id" header-align="center"> </!--el-table-column-->
    <el-table-column type="index" width="50"></el-table-column>
    <el-table-column prop="user_id" label="用户id" header-align="center"></el-table-column>
    <el-table-column prop="role_id" label="角色" header-align="center"></el-table-column>
  </el-table>
</template>
 
<script>
import * as XLSX from 'xlsx/xlsx.mjs'
//import { getUserRole } from "../api/login.js";
 
export default {
  computed: {
    headerObj(){
      const jwt= 'Bearer ' + localStorage.getItem('ACCESS_TOKEN')
      return{
        Authorization:jwt
      };
    },
  },
  components: {
   
  },
  data() {
    return {
      UserRoleList: [],
    };
  },
  mounted() {
    // getUserRole().then((res) => {
    //   console.log(res);
    //   this.stuInfoList = res.data;
    // });
  },
  methods: {
    uploadProgress() {
      ElMessage.success('文件上传中')
    },
    reminder() {
      ElMessage.success('导入后请刷新页面！')
    },
    btnClick() {
      document.querySelector(".input-file").click();
    },
    refreshPage(){
      // getUserRole().then((res) => {
      //   console.log(res);
      //   this.stuInfoList = res.data;
      // });
    },
    handleUploadError(err, file, fileList) { //上传失败钩子函数
	    console.log('err', err)
		  console.log('err', JSON.parse(err.message))
		  if (file.status == 'fail') {
			  ElMessage.error("上传失败")
		  }
    },
    handleAvatarSuccess() { //上传成功
	    ElMessage.success("上传成功！")
    },
  }
};
</script>
 
<style>

.analysis-content{
  box-sizing: border-box;
  background: #efefef;
  padding:15px;
}

.analysis-content-head{
  box-sizing: border-box;
  background: #fff;
  padding:15px;
}

.analysis-content-body{
  box-sizing: border-box;
  margin-top: 15px;
  background: #fff;
  padding:15px;
  height:550px;
}

.input-file {
  display: none;
}

.column-content{
  box-sizing:border-box;padding:40px 15px 60px;
  

}
.el-checkbox-group{
    display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: flex-start;
}
.el-checkbox.is-bordered{
  margin-bottom:15px;
}
.el-checkbox.is-bordered+.el-checkbox.is-bordered {
  margin-left: 0;
}
.drawer-footer{
   text-align: center;
}
.button {
  margin-top: 10px;
}

</style>
 
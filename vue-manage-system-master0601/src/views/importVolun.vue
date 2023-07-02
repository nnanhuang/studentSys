<template>
  <div class="upload-tool">
    <span>
      <el-upload
        class="upload-demo"
        method="post"
        action="http://localhost:28080/volun/upload"
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
      <el-button type="danger" size="medium" class="button" @click="deleteAll">删除库中数据</el-button>
      <el-button type="primary" size="medium" class="button" @click="updateToSum">更新数据至成绩汇总表</el-button>
    </span>   
  </div>

  <el-table :data="volunList" stripe border style="width: 100%">
    <!--el-table-column prop="id" label="学生id" header-align="center"> </!--el-table-column-->
    <el-table-column prop="id" label="学生id" header-align="center"></el-table-column>
    <el-table-column prop="studentId" label="学生证号" header-align="center"></el-table-column>
    <el-table-column prop="duration" label="志愿时长" header-align="center"></el-table-column>
  </el-table>
</template>
 
<script>
import * as XLSX from 'xlsx/xlsx.mjs'
import { getVolunList } from "../api/ScoreAndImporting.js";
import { deleteVolun } from "../api/ScoreAndImporting.js";
import { updateToScoreSum1 } from "../api/ScoreAndImporting.js";
 
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
      volunList: [],
    };
  },
  mounted() {
    getVolunList().then((res) => {
      console.log(res);
      this.volunList = res.data;
    });
  },
  methods: {
    reminder() {
      ElMessage.success('导入后请刷新页面！')
    },
    uploadProgress() {
      ElMessage.success('文件上传中')
    },
    btnClick() {
      document.querySelector(".input-file").click();
    },
    refreshPage(){
      getVolunList().then((res) => {
        console.log(res);
        this.volunList = res.data;
      });
    },
    handleUploadError(err, file, fileList) { //上传失败钩子函数
	    console.log('err', err)
		  console.log('err', JSON.parse(err.message))
		  if (file.status == 'fail') {
			  ElMessage.error("上传失败")
		  }
      getVolunList().then((res) => {
        console.log(res);
        this.volunList = res.data;
      });
    },
    handleAvatarSuccess() { //上传成功
	    ElMessage.success("上传成功！")
      getVolunList().then((res) => {
        console.log(res);
        this.volunList = res.data;
      });
    },
    deleteAll(){
      deleteVolun();
      getVolunList().then((res) => {
        console.log(res);
        this.volunList = res.data;
      });
    },
    updateToSum(){
      updateToScoreSum1().then((res) => {
        ElMessage.success("操作完成")
      });
    }
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
 
<template>
  <div class="upload-tool">
    <span>
      <el-upload
        class="upload-demo"
        method="post"
        action="http://localhost:28080/gpa/upload"
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

  <h3 class="text-reminder">当前库中数据如下：</h3>

  <el-table :data="gpaList" stripe border style="width: 100%">
    <!--el-table-column prop="id" label="学生id" header-align="center"> </!--el-table-column-->
    <el-table-column prop="id" label="学生id" header-align="center"></el-table-column>
    <el-table-column prop="studentId" label="学生证号" header-align="center"></el-table-column>
    <el-table-column prop="score" label="学习成绩" header-align="center"></el-table-column>
  </el-table>
</template>
 
<script>
import * as XLSX from 'xlsx/xlsx.mjs'
import { getGpaList } from "../api/ScoreAndImporting.js";
import { deleteGpa } from "../api/ScoreAndImporting.js";
import { updateToScoreSum } from "../api/ScoreAndImporting.js";
 
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
      gpaList: [],
    };
  },
  mounted() {
    getGpaList().then((res) => {
      console.log(res);
      this.gpaList = res.data;
    });
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
      getGpaList().then((res) => {
        console.log(res);
        this.gpaList = res.data;
      });
    },
    handleUploadError(err, file, fileList) { //上传失败钩子函数
	    console.log('err', err)
		  console.log('err', JSON.parse(err.message))
		  if (file.status == 'fail') {
			  ElMessage.error("上传失败")
        getGpaList().then((res) => {
          console.log(res);
          this.gpaList = res.data;
        });
		  }
    },
    handleAvatarSuccess() { //上传成功
	    ElMessage.success("上传成功！")
      getGpaList().then((res) => {
        console.log(res);
        this.gpaList = res.data;
      });
    },
    deleteAll(){
      deleteGpa();
      getGpaList().then((res) => {
        console.log(res);
        this.gpaList = res.data;
      });
    },
    updateToSum(){
      updateToScoreSum().then((res) => {
        ElMessage.success("操作完成")
      });
    }
  }
};
</script>
 
<style>
.text-reminder{
  padding:15px;
}
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
 
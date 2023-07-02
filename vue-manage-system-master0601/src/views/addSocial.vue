<template>
    <Transition>
      <div class="container">
        <div class="space1"></div>
        <h1 class="centered-title">社会实践信息</h1>
        <div class="space1"></div>
        <div class="service-description">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;包括1.省市级社会实践2.北京大学校级社会实践(如学工部鸿雁计划，校团委、学生会、研究生会实践服务团)3.学校党委组织部支书培训4.教师研究课题调研项目等其他社会实践。在学生提交实践报告的基础上，从学生参与实践活动的时长、任务贡献和获奖情况等方面考核。
        </div>
        <div class="space2"></div>
        <div class="form-container">
          <el-form ref="socialForm" label-position="top">
              <el-row :gutter="10" class="social-item">
                <!-- <el-col :span="10">
                  <el-select v-model="research.type" placeholder="请选择科研类型">
                    <el-option label="论文" value="论文"></el-option>
                    <el-option label="专利" value="专利"></el-option>
                    <el-option label="比赛" value="比赛"></el-option>
                    <el-option label="其他" value="其他"></el-option>
                  </el-select>
                </el-col> -->
                <el-col :span="14">
                  <el-input
                    type="textarea"
                    v-model="social.time"
                    placeholder="请输入社会实践起止时间,参考格式: 2022.09 - 2022.12"
                  ></el-input>
                </el-col>
                <el-col :span="14">
                  <el-input
                    type="textarea"
                    v-model="social.content"
                    placeholder="请输入社会实践内容"
                  ></el-input>
                </el-col>
              </el-row>
              <el-row class="social-item">
                <el-col :span="14">
                  <el-upload
                    class="upload-demo"
                    drag
                    :auto-upload="false"
                    :on-change="handleMaterialChange"
                  >
                    <i class="el-icon-upload"></i>
                    <div class="el-upload__text">将证明材料文件拖到此处，或点击上传</div>
                    <div class="el-upload__tip">只能上传一个文件，格式不超过500kb</div>
                  </el-upload>
                </el-col>
              </el-row>
              <div class="space3"></div>
            <div class="centered-container">
            <el-form-item>  
              <el-button type="success" @click="do_view"  class="submit-button">回到查看界面</el-button>
              <el-button type="primary" @click="do_submit"  class="submit-button">提交本条记录</el-button>
            </el-form-item>
            </div>
          </el-form>
        </div>
      </div>
    </Transition>
  </template>
  
  <script>
  import { submitSocial } from "../api/login.js";
  export default {
    data() {
      return {
        social: {
          time: '',
          content: '',
          material: null, //add material
        },
      }
    },
    methods: {
      do_submit() {
        submitSocial(this.social.time,this.social.content,this.social.material).then(res =>{
          console.log(res)
          if(res.code == 200){
            alert("提交成功")
          } else {
            alert("提交失败")
          }
        })
      },
      handleMaterialChange(material) {
       
        if (!material || !material.raw) {
          this.$message.error('无效的文件');
          return;
        }

        const reader = new FileReader();
        reader.onload = () => {
          const base64String = reader.result.split(",")[1];
          this.social.material = base64String;
        };
        reader.readAsDataURL(material.raw);
      },

      do_view() {
        this.$router.push({ path: '/viewSubmittedSocial' })
      }
    }
  };
  </script>
  
  <style scoped>
  .upload-demo {
  border: 1px dashed #409eff;
  border-radius: 6px;
  padding: 20px 0;
  text-align: center;
  color: #999;
  cursor: pointer;
  background-color: #f5f7f9;
}
  .container {
    background-color: white;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  }
  .centered-title {
    text-align: center;
  }
  .service-description {
    text-align: left;
    margin-top: 0.5em;
  }
  
  .form-container {
    display: flex;
    justify-content: center;
    margin-top: 1em;
  }
  
  .social-item {
    margin-bottom: 1em;
  }
  
  .el-button {
    margin-right: 10px;
  }
  
  .el-form-item__label {
    width: 100px;
  }
  
  .el-form-item__content {
    flex: auto;
  }
  .space1{
    height: 20px;
  }
  .space3{
    height: 40px;
  }
  .space2{
    height: 30px;
  }
  
  .centered-container {
    display: flex;
    justify-content: center;
  }
  
  .submit-button {
    margin-left: 17px;
  }
  .indent {
    text-indent: 2em;
  }
  
  
  </style>
  
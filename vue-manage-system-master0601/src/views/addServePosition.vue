<template>
    <Transition>
        <div class="container">
            <h1 class="centered-title">学生骨干服务信息</h1>
            <div class="space1"></div>
            <div class="service-description">
                <p>请填写：服务同学的积极分子需提交入学以来担任学生服务岗位（包括服务学院各部门、学生党支部、团委、研究生会和学生会等）的工作业绩报告。</p>
            </div>
            <div class="space2"></div>
            <div class="form-container">
                <el-form ref="servePositionForm" label-position="top">
                    <el-row :gutter="10" class="servePosition-item">
                        <el-col :span="10">
                            <el-form-item label="起止时间">
                                <el-input v-model="servePosition.time" placeholder="xxxx.xx-xxxx.xx"></el-input>
                            </el-form-item>
                        </el-col>
                        <el-col :span="14">
                            <el-form-item label="岗位经历">
                                <el-input v-model="servePosition.content"></el-input>
                            </el-form-item>
                        </el-col>
                    </el-row>
                    <el-row class="servePositon-item">
                <el-col :span="14">
                  <el-upload
                    class="upload-demo"
                    drag
                    :auto-upload="false"
                    :on-change="handleMaterialChange"
                  >
                    <i class="el-icon-upload"></i>
                    <div class="el-upload__text">将证明材料文件拖到此处，或点击上传</div>
                    <div class="el-upload__tip">只能上传一个文件，大小不超过500kb</div>
                  </el-upload>
                </el-col>
              </el-row>
                    <div class="centered-container">
                        <el-form-item>
                            <el-button type="success" @click="do_view" class="submit-button">查看已提交记录</el-button>
                            <el-button type="primary" @click="do_submit" class="submit-button">提交本条记录</el-button>
                        </el-form-item>
                    </div>
                </el-form>
            </div>
        </div>
    </Transition>
</template>

<script>
    import {submitServePosition} from "../api/login.js";

    export default {
        data() {
            return {
                servePosition: {
                    time: '',
                    content: '',
                    material: null, //add material
                },
            }
        },
        methods: {
            do_submit() {
                submitServePosition(this.servePosition.time, this.servePosition.content,this.servePosition.material).then(res => {
                    console.log(res)
                    if (res.code == 200) {
                        ElMessage.success("提交成功")
                    } else {
                        ElMessage.error("提交失败")
                    }
                })
            },
            handleMaterialChange(material) {
                const reader = new FileReader();
        reader.onload = () => {
          const base64String = reader.result.split(",")[1];
          this.servePosition.material = base64String;
        };
        reader.readAsDataURL(material.raw);
    },
            do_view() {
                this.$router.push({path: '/viewSubmittedServePosition'})
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

    .servePosition-item {
        margin-bottom: 1em;
    }

    .space1 {
        height: 20px;
    }

    .space2 {
        height: 20px;
    }

    .centered-container {
        display: flex;
        justify-content: center;
    }

    .submit-button {
        margin-left: 17px;
    }

</style>



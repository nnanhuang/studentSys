<template>
  <h1 class="head">修改评分规则</h1>
  <div class="add-user">
    <div class="add1">
      <el-form ref="form" :model="weights" :rules="rules" label-width="100px" inline="true">
        <el-form-item label="绩点权重" prop="gpa">
          <el-input v-model="weights.gpa" placeholder="请输入绩点权重"></el-input>
        </el-form-item>

        <el-form-item label="上限" prop="gpa_limit">
          <el-input v-model="weights.gpa_limit" placeholder="请输入上限"></el-input>
        </el-form-item>

        <el-form-item>
          <!--el-button type="success" @click="submitPart1">提交单项修改</!--el-button-->
        </el-form-item>
      </el-form>
    </div>

    <div class="add1">
      <el-form ref="form" :model="weights" :rules="rules" label-width="100px" inline="true">
        <el-form-item label="志愿时长权重" prop="volun">
          <el-input v-model="weights.volun" placeholder="请输入志愿时长权重"></el-input>
        </el-form-item>

        <el-form-item label="上限" prop="volun_limit">
          <el-input v-model="weights.volun_limit" placeholder="请输入上限"></el-input>
        </el-form-item>

        <el-form-item>
          <!--el-button type="success" @click="submitPart1">提交单项修改</!--el-button-->
        </el-form-item>
      </el-form>
    </div>

    <div class="add1">
      <el-form ref="form" :model="weights" :rules="rules" label-width="100px" inline="true">
        <el-form-item label="科研情况权重" prop="sci">
          <el-input v-model="weights.sci" placeholder="请输入科研情况权重"></el-input>
        </el-form-item>

      <!-- 注释，单行或多行 
        <el-form-item label="上限" prop="sci_limit">
          <el-input v-model="weights.sci_limit" placeholder="请输入上限"></el-input>
        </el-form-item>
      -->
        <el-form-item label="上限" prop="sci_limit">
          <el-input v-model="weights.sci_limit" placeholder="请输入上限"></el-input>
        </el-form-item>
      

        <el-form-item>
          <!--el-button type="success" @click="submitPart1">提交单项修改</!--el-button-->
        </el-form-item>
      </el-form>
    </div>

    <div class="add1">
      <el-form ref="form" :model="weights" :rules="rules" label-width="100px" inline="true">
        <el-form-item label="学生骨干权重" prop="work">
          <el-input v-model="weights.work" placeholder="请输入学生骨干权重"></el-input>
        </el-form-item>

        <el-form-item label="上限" prop="work_limit">
          <el-input v-model="weights.work_limit" placeholder="请输入上限"></el-input>
        </el-form-item>

        <el-form-item>
          <!--el-button type="success" @click="submitPart1">提交单项修改</!--el-button-->
        </el-form-item>
      </el-form>
    </div>

    <div class="add1">
      <el-form ref="form" :model="weights" :rules="rules" label-width="100px" inline="true">
        <el-form-item label="社会实践权重" prop="practice">
          <el-input v-model="weights.practice" placeholder="请输入社会实践权重"></el-input>
        </el-form-item>

        <el-form-item label="上限" prop="practice_limit">
          <el-input v-model="weights.practice_limit" placeholder="请输入上限"></el-input>
        </el-form-item>

        <el-form-item>
          <!--el-button type="success" @click="submitPart1">提交单项修改</!--el-button-->
        </el-form-item>
      </el-form>
    </div>

    <div class="add1">
      <el-form ref="form" :model="weights" :rules="rules" label-width="100px" inline="true">
        <el-form-item label="个人总结权重" prop="summary">
          <el-input v-model="weights.summary" placeholder="请输入个人总结权重"></el-input>
        </el-form-item>

        <el-form-item label="上限" prop="name">
          <el-input v-model="weights.summary_limit" placeholder="请输入上限"></el-input>
        </el-form-item>

        <el-form-item>
          <!--el-button type="success" @click="submitPart1">提交单项修改</!--el-button-->
        </el-form-item>
      </el-form>
    </div>
  </div>

  <div class="submit-button">
    <el-form ref="form" :model="weights" :rules="rules" label-width="100px" inline="true">
      <el-form-item>
        <el-button type="primary" @click="submitForm">提交修改</el-button>
        <!--el-button @click="resetForm">重置</!--el-button-->
      </el-form-item>
    </el-form>
  </div>
</template>

<script>
import { ElMessage } from 'element-plus';
import { changeWeights } from "../api/login.js";
import { getRules } from "../api/login.js";
export default {
  name: "AlterWeights",
  data() {
    return {
      weights: {
        gpa: "",
        volun: "",
        sci: "",
        work:"",
        practice: "",
        summary:"",
        gpa_limit: "",
        volun_limit: "",
        sci_limit: "",
        work_limit:"",
        practice_limit: "",
        summary_limit:"",
      },
      rules: {
        gpa0: [{ required: true, message: "请输入", trigger: "blur" }],
        volun0: [{ required: true, message: "请输入", trigger: "change" }],
        sci0: [{ required: true, message: "请输入", trigger: "blur" }],
      }
    };
  },
  mounted() {
    getRules().then((res) => {
      console.log(res)
      this.weights.gpa = res.data.gpa;
      this.weights.volun = res.data.volun;
      this.weights.sci = res.data.sci;
      this.weights.work = res.data.org;
      this.weights.practice = res.data.social;
      this.weights.summary = res.data.sum;
      this.weights.gpa_limit = res.data.gpaLimit;
      this.weights.volun_limit = res.data.volunLimit;
      this.weights.sci_limit = res.data.sciLimit;
      this.weights.work_limit = res.data.orgLimit;
      this.weights.practice_limit = res.data.socialLimit;
      this.weights.summary_limit = res.data.sumLimit;
    });
  },
  methods: {
    submitForm() {
      this.$refs.form.validate(valid => {
        if (valid) {
          changeWeights(this.weights.gpa,this.weights.gpa_limit,this.weights.volun,this.weights.volun_limit,this.weights.sci,this.weights.sci_limit,this.weights.work,this.weights.work_limit,this.weights.practice,this.weights.practice_limit,this.weights.summary,this.weights.summary_limit).then(response => {
            console.log(response)
            getRules()
            ElMessage({
              message: '评分规则更改成功',
              type: 'success'
            })
          }).catch(error => {
            console.log(error)
          })
        } else {
          console.log("form validation failed");
        }
      });
    },
    // resetForm() {
    //   this.$refs.form.resetFields();
    // },
    submitPart1() {
      this.$refs.form.validate(valid => {
        if (valid) {
          changeWeights(this.weights.gpa,this.weights.gpa_limit).then(response => {
            console.log(response)
            ElMessage({
              message: '评分权重更改成功',
              type: 'success'
            })
          }).catch(error => {
            console.log(error)
          })
        } else {
          console.log("form validation failed");
        }
      });
    },
    submitPart2() {
      this.$refs.form.validate(valid => {
        if (valid) {
          changeWeights(this.weights.volun,this.weights.volun_limit).then(response => {
            console.log(response)
            ElMessage({
              message: '评分权重更改成功',
              type: 'success'
            })
          }).catch(error => {
            console.log(error)
          })
        } else {
          console.log("form validation failed");
        }
      });
    },
    submitPart3() {
      this.$refs.form.validate(valid => {
        if (valid) {
          changeWeights(this.weights.sci,this.weights.sci_limit).then(response => {
            console.log(response)
            ElMessage({
              message: '评分权重更改成功',
              type: 'success'
            })
          }).catch(error => {
            console.log(error)
          })
        } else {
          console.log("form validation failed");
        }
      });
    },
    submitPart4() {
      this.$refs.form.validate(valid => {
        if (valid) {
          changeWeights(this.weights.work,this.weights.work_limit).then(response => {
            console.log(response)
            this.$message({
              message: '评分权重更改成功',
              type: 'success'
            })
          }).catch(error => {
            console.log(error)
          })
        } else {
          console.log("form validation failed");
        }
      });
    },
    submitPart5() {
      this.$refs.form.validate(valid => {
        if (valid) {
          changeWeights(this.weights.summary,this.weights.summary_limit,).then(response => {
            console.log(response)
            this.$message({
              message: '评分权重更改成功',
              type: 'success'
            })
          }).catch(error => {
            console.log(error)
          })
        } else {
          console.log("form validation failed");
        }
      });
    },
    submitPart6() {
      this.$refs.form.validate(valid => {
        if (valid) {
          changeWeights(this.weights.gpa,this.weights.gpa_limit,this.weights.volun,this.weights.volun_limit,this.weights.sci,this.weights.sci_limit,this.weights.work,this.weights.work_limit,this.weights.practice,this.weights.practice_limit,this.weights.summary,this.weights.summary_limit,).then(response => {
            console.log(response)
            this.$message({
              message: '评分权重更改成功',
              type: 'success'
            })
          }).catch(error => {
            console.log(error)
          })
        } else {
          console.log("form validation failed");
        }
      });
    },
  },
};
</script>

<style>
.head {
  display: flex;
  justify-content: center;
}
.add-user {
  padding: 20px;
}
.submit-button {
  display: flex;
  justify-content: center;
}
.add1 {
  display: flex;
  justify-content: center;
}
</style>
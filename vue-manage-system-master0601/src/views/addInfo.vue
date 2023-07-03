<template>
  <Transition>
    <div class="container">
      <h1 class="centered-title">学生信息确认</h1>
      <div class="space1"></div>
      <el-form
        ref="form"
        :model="studentInfo"
        :rules="rules"
        label-width="100px"
      >
        <el-form-item label="学号" prop="stuNo">
          <el-input v-model="studentInfo.stuNo" :disabled="true"></el-input>
        </el-form-item>
        <el-form-item label="性别" prop="gender">
          <el-input v-model="studentInfo.gender" :disabled="true"></el-input>
        </el-form-item>
        <el-form-item label="手机号" prop="phone">
          <el-input v-model="studentInfo.phone" :disabled="true"></el-input>
        </el-form-item>
        <el-form-item label="邮箱" prop="email">
          <el-input v-model="studentInfo.email" :disabled="true"></el-input>
        </el-form-item>
        <el-form-item label="政治面貌" prop="political">
          <el-input v-model="studentInfo.political" :disabled="true"></el-input>
        </el-form-item>

        <div class="space2"></div>
        <div class="centered-container">
          <el-form-item>
            <!-- <el-button type="primary" @click="submitForm" class="submit"
              >提交</el-button -->
            >
          </el-form-item>
        </div>
      </el-form>
    </div>
  </Transition>
</template>

<script>
import { getStudentInfo } from "../api/login.js";
export default {
  name: "StudentInfoForm",
  data() {
    return {
      studentInfo: {
        stuNo: "",
        gender: "",
        phone: "",
        email: "",
        political: "",
      },
      rules: {
        phone: [{ required: true, message: "请输入电话", trigger: "blur" }],
        email: [{ required: true, message: "请输入邮件", trigger: "blur" }],
      },
    };
  },

  methods: {
    // submitForm() {
    //   // 将学生信息提交给后端
    //   alert("学生信息已提交");
    // },
    getStudentInfo() {
      //获得学生信息
      getStudentInfo()
        .then((response) => {
          console.log(response.data);
          const studentInfoData = response.data[0];

          this.studentInfo.stuNo = studentInfoData.stuNo;
          this.studentInfo.gender = studentInfoData.gender;
          this.studentInfo.phone = studentInfoData.phone;
          this.studentInfo.email = studentInfoData.email;
          this.studentInfo.political = studentInfoData.political;
          //this.studentInfo = response.data;
          console.log(this.studentInfo);
        })
        .catch((error) => {
          console.error("Failed ", error);
        });
    },
  },
  mounted() {
    this.getStudentInfo();
    this.$nextTick(() => {
      // 等待数据更新完成后再渲染组件
      this.$forceUpdate();
    });
  },
};
</script>
<style scoped>
.container {
  background-color: white;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}
.centered-title {
  text-align: center;
}
.centered-container {
  display: flex;
  justify-content: center;
}

.submit {
  margin-right: 80px;
}
.renew {
  margin-right: 80px;
}
.space1 {
  height: 20px;
}
.space2 {
  height: 20px;
}
</style>

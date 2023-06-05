<template>
  <Transition>
  <div class="add-user container">
    <h1 class="centered-title">个人学年总结</h1>
    <div class="space1"></div>
    <el-form ref="form" :model="user" :rules="rules" label-width="120px">
      <el-form-item label="学年" prop="year">
        <el-input v-model="user.year" :disabled="true"></el-input>
      </el-form-item>
      <el-form-item label="个人学年总结" prop="stu_statement">
        <el-input v-model="user.stu_statement"></el-input>
      </el-form-item>
      <div class="space2"></div>
      <div class="centered-container">
        <el-form-item>
          <el-button type="primary" @click="submitForm" class="submit-button">提交</el-button>
        </el-form-item>
      </div>
    </el-form>
  </div>
  </Transition>
</template>

<script>
export default {
  name: "StateMent",
  data() {
    return {
      user: {
        year: "123456",
        stu_statement: "",
      },
      rules: {
        stu_statement: [
          { required: true, message: "请填写个人学年总结", trigger: "blur" },
        ],
      },
    };
  },
  methods: {
    submitForm() {
      this.$refs.form.validate((valid) => {
        if (valid) {
          console.log(response);
        } else {
          console.log("form validation failed");
        }
      });
    },
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

.submit-button {
  margin-right: 110px;
}
.space1{
  height: 20px;
}
.space2{
  height: 20px;
}
</style>
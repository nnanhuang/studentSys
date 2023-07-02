<template>
  <Transition>
    <div class="container">
      <div class="space1"></div>
      <h1 class="centered-title">个人总结</h1>
      <div class="space1"></div>
      <div class="statement-description">
        请分别提交四条个人总结记录，个人总结-思想政治；个人总结-行为规范；个人总结-
        学习态度；个人总结-身心健康
      </div>
      <div class="space2"></div>
      <div class="form-container">
        <el-form ref="statementForm" label-position="top">
          <el-row :gutter="10" class="statement-item">
            <el-col :span="10">
              <el-select
                v-model="statement.type"
                placeholder="请选择个人总结类型"
              >
                <el-option label="思想政治" value="思想政治"></el-option>
                <el-option label="行为规范" value="行为规范"></el-option>
                <el-option label="学习态度" value="学习态度"></el-option>
                <el-option label="身体健康" value="身体健康"></el-option>
              </el-select>
            </el-col>
            <el-col :span="14">
              <el-input
                type="textarea"
                v-model="statement.content"
                placeholder="请输入内容"
              ></el-input>
            </el-col>
          </el-row>

          <div class="space3"></div>
          <div class="centered-container">
            <el-form-item>
              <el-button type="success" @click="do_view" class="submit-button"
                >回到查看界面</el-button
              >
              <el-button type="primary" @click="do_submit" class="submit-button"
                >提交本条记录</el-button
              >
            </el-form-item>
          </div>
        </el-form>
      </div>
    </div>
  </Transition>
</template>

<script>
import { submitStatement } from "../api/login.js";
export default {
  data() {
    return {
      statement: {
        type: "",
        content: "",
      },
    };
  },
  methods: {
    do_submit() {
      submitStatement(this.statement.type, this.statement.content).then(
        (res) => {
          console.log(res);
          if (res.code == 200) {
            alert("提交成功");
          } else {
            alert("提交失败");
          }
        }
      );
    },

    do_view() {
      this.$router.push({ path: "/viewSubmittedStatement" });
    },
  },
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
.space1 {
  height: 20px;
}
.space3 {
  height: 40px;
}
.space2 {
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

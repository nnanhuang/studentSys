<template>
  <Transition>
    <div class="container">
      <h1 class="centered-title">学生骨干服务信息</h1>
      <div class="space1"></div>
      <div class="service-description">
        <p>&emsp;服务同学的积极分子需提交入学以来担任学生服务岗位（包括服务学院各部门、学生党支部、团委、研究生会和学生会等）的工作业绩报告。</p>
      </div>
      <div class="space2"></div>
      <el-form ref="form" :model="formData" label-width="100px">
        <div v-for="(item, index) in formData.items" :key="index">
          <el-row>
            <el-col :span="10">
              <el-form-item label="时间">
                <el-input v-model="item.time" placeholder="请输入时间"></el-input>
              </el-form-item>
            </el-col>
            <el-col :span="10">
              <el-form-item label="岗位经历">
                <el-input v-model="item.experience" placeholder="请输入岗位经历"></el-input>
              </el-form-item>
            </el-col>
            <el-col :span="4">
              <el-button type="primary" icon="el-icon-plus" @click="addFormItem" class="">添加</el-button>
              <el-button type="danger" icon="el-icon-minus" @click="removeFormItem(index)" v-if="formData.items.length > 1">删除</el-button>
            </el-col>
          </el-row>
        </div>
      </el-form>
      <div class="centered-container">
      <el-button type="primary" @click="submitForm" class="submit-button">提交</el-button>
      </div>
    </div>
  </Transition>
</template>

<script>
export default {
  data() {
    return {
      formData: {
        items: [
          { time: '', experience: '' } // 初始表单项
        ]
      }
    };
  },
  methods: {
    addFormItem() {
      this.formData.items.push({ time: '', experience: '' });
    },
    removeFormItem(index) {
      this.formData.items.splice(index, 1);
    },
    submitForm() {
      this.$refs.form.validate((valid) => {
        if (valid) {
          // 在这里执行表单提交逻辑
          // 可以通过this.formData.items获取所有表单项数据
          console.log(this.formData.items);
          alert("提交成功")
        } else {
          console.log('表单校验失败！');
        }
      });
    }
  }
};
</script>

<style scoped>
.container {
  background-color: white;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

.service-description {
  text-align: left;
  margin-left: 2em;
  margin-top: 0.5em;
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

<template>
  <div class="container">
    <h1 class="centered-title">社会实践</h1>
    <div class="space1"></div>
    <p>
      包括1.省市级社会实践2.北京大学校级社会实践(如学工部鸿雁计划，校团委、学生会、研究生会实践服务团)3.学校党委组织部支书培训4.教师研究课题调研项目等其他社会实践。
    </p>
    <div class="space3"></div>
    <p>
      在学生提交实践报告的基础上，从学生参与实践活动的时长、任务贡献和获奖情况等方面考核。
    </p>
    <div class="space3"></div>
    <p>
      每行一条，请按照此格式:日期 计划名称(计划主办方):活动主题职务时长;
      例如:2020.07力行计划(校团委):赴某某地母校回访宣传活动 团员 3天
    </p>
    <div class="space4"></div>
    <el-form ref="form" :model="form" label-width="80px">
      <!-- 固定项目 -->
      <div class="form-row">
        <el-form-item label="时间" prop="time">
          <el-input v-model="form.time" />
        </el-form-item>

        <el-form-item label="活动主题" prop="theme">
          <el-input v-model="form.theme" />
        </el-form-item>

        <el-form-item label="职务" prop="position">
          <el-input v-model="form.position" />
        </el-form-item>

        <el-form-item label="时长" prop="duration">
          <el-input v-model="form.duration" />
        </el-form-item>

        <el-form-item>
          <i class="el-icon-delete" @click="clearForm"></i>
        </el-form-item>
      </div>

      <!-- 动态增加表单项 -->
      <!-- 不止一个项目，用div包裹起来 -->
      <div
        v-for="(item, index) in form.dynamicItems"
        :key="index"
        class="form-row"
      >
        <el-form-item :label="'时间'" :prop="'dynamicItems.' + index + '.time'">
          <el-input v-model="item.time"></el-input>
        </el-form-item>

        <el-form-item
          :label="'活动主题'"
          :prop="'dynamicItems.' + index + '.theme'"
        >
          <el-input v-model="item.theme"></el-input>
        </el-form-item>

        <el-form-item
          :label="'职务'"
          :prop="'dynamicItems.' + index + '.position'"
        >
          <el-input v-model="item.position"></el-input>
        </el-form-item>

        <el-form-item
          :label="'时长'"
          :prop="'dynamicItems.' + index + '.duration'"
        >
          <el-input v-model="item.duration"></el-input>
        </el-form-item>

        <el-form-item>
          <i class="el-icon-delete" @click="deleteItem(item, index)"></i>
        </el-form-item>
      </div>
      <div class="space2"></div>
      <div class="form-row" style="justify-content: center">
        <el-button @click="addItem" type="primary">添加</el-button>
        <el-button @click="submitForm" type="primary">提交</el-button>
      </div>
    </el-form>
  </div>
</template>

<script>
export default {
  data() {
    return {
      form: {
        time: "",
        theme: "",
        position: "",
        duration: "",
        dynamicItems: [],
      },
    };
  },
  methods: {
    addItem() {
      this.form.dynamicItems.push({
        time: "",
        theme: "",
        position: "",
        duration: "",
      });
    },
    deleteItem(item, index) {
      this.form.dynamicItems.splice(index, 1);
    },
    clearForm() {
      this.form.time = "";
      this.form.theme = "";
      this.form.position = "";
      this.form.duration = "";
    },
    submitForm() {
      // 进行表单提交逻辑

      console.log(this.form);
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

.container h1 {
  font-size: 40px;
  margin-bottom: 10px;
}

.container p {
  margin-bottom: 10px;
}

.form-row {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-bottom: 10px;
}

.container .el-form-item__label {
  width: 80px;
}

.container .el-form-item {
  margin-bottom: 0;
}

.container .el-button {
  margin-right: 10px;
}
.centered-title {
  text-align: center;
}
.space1{
  height: 15px;
}
.space2{
  height: 20px;
}
.space3{
  height: 5px;
}
.space4{
  height:20px;
}
</style>

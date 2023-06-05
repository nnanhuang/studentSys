<template>
  <Transition>
    <div class="container">
      <div class="space1"></div>
      <h1 class="centered-title">科研信息</h1>
      <div class="space1"></div>
      <div class="service-description">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请填写：在学院学习期间在国内核心期刊、国外期刊或国内外学术会议上发表过论文者或者申请专利（请注明第几作者)，参加国际、国内、市级、校级等有较高影响力的比赛并获奖者，如北京大学挑战杯比赛，软微学院创新创业大赛等。
      </div>
      <div class="space2"></div>
      <div class="form-container">
        <el-form ref="researchForm" label-position="top">
            <el-row :gutter="10" class="research-item">
              <el-col :span="10">
                <el-select v-model="research.type" placeholder="请选择科研类型">
                  <el-option label="论文" value="论文"></el-option>
                  <el-option label="专利" value="专利"></el-option>
                  <el-option label="比赛" value="比赛"></el-option>
                  <el-option label="其他" value="其他"></el-option>
                </el-select>
              </el-col>
              <el-col :span="14">
                <el-input
                  type="textarea"
                  v-model="research.content"
                  placeholder="请输入科研内容"
                ></el-input>
              </el-col>
            </el-row>
            <div class="space3"></div>
          <div class="centered-container">
          <el-form-item>  
            <el-button type="success" @click="do_view"  class="submit-button">查看已提交记录</el-button>
            <el-button type="primary" @click="do_submit"  class="submit-button">提交本条记录</el-button>
          </el-form-item>
          </div>
        </el-form>
      </div>
    </div>
  </Transition>
</template>

<script>
import { submitResearch } from "../api/login.js";
export default {
  data() {
    return {
      research: {
        type: '',
        content: '',
      },
    }
  },
  methods: {
    do_submit() {
      submitResearch(this.research.type,this.research.content).then(res =>{
        console.log(res)
        if(res.code == 200){
          alert("提交成功")
        } else {
          alert("提交失败")
        }
      })
    },
    do_view() {
      this.$router.push({ path: '/viewSubmittedSci' })
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

.research-item {
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

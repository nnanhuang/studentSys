<template>
    <Transition>
    <div class="container">
        <h1 class="centered-title">学生在线填报</h1>
    <div class="space1"></div>
        <el-form ref="form" :model="studentInfo" :rules="rules" label-width="100px">
            <el-form-item label="姓名" prop="name">
                <el-input v-model="studentInfo.name" placeholder="请输入姓名"></el-input>
            </el-form-item>
            <el-form-item label="姓名拼音" prop="pinyin">
                <el-input v-model="studentInfo.pinyin" placeholder="请输入姓名拼音"></el-input>
            </el-form-item>
            <el-form-item label="学号" prop="studentId">
                <el-input v-model="studentInfo.studentId" placeholder="请输入学号"></el-input>
            </el-form-item>
            <el-form-item label="身份证号" prop="idCard">
                <el-input v-model="studentInfo.idCard" placeholder="请输入身份证号"></el-input>
            </el-form-item>
            <el-form-item label="手机号" prop="phone">
                <el-input v-model="studentInfo.phone" placeholder="请输入手机号"></el-input>
            </el-form-item>
            <el-form-item label="邮箱" prop="email">
                <el-input v-model="studentInfo.email" placeholder="请输入电子邮件"></el-input>
            </el-form-item>
            <el-form-item label="性别" prop="gender">
                <el-radio-group v-model="studentInfo.gender">
                    <el-radio label="男">男</el-radio>
                    <el-radio label="女">女</el-radio>
                </el-radio-group>
            </el-form-item>
            <el-form-item label="政治面貌" prop="politic">
                <el-select v-model="studentInfo.major" placeholder="请选择政治面貌">
                    <el-option label="中共党员（含预备党员）" value="中共党员（含预备党员）"></el-option>
                    <el-option label="共青团员" value="共青团员"></el-option>
                    <el-option label="群众" value="群众"></el-option>
                    <el-option label="其他" value="其他"></el-option>
                </el-select>
            </el-form-item>
            <el-form-item label="专业名称" prop="major">
                <el-select v-model="studentInfo.major" placeholder="请选择专业">
                    <el-option label="第二学士学位、MEM、一级学科" value="第二学士学位、MEM、一级学科"></el-option>
                    <el-option label="软件工程与数据系统系" value="软件工程与数据系统系"></el-option>
                    <el-option label="网络软件与系统安全系" value="网络软件与系统安全系"></el-option>
                    <el-option label="集成电路与智能系统系" value="集成电路与智能系统系"></el-option>
                    <el-option label="金融信息与工程管理系" value="金融信息与工程管理系"></el-option>
                    <el-option label="集成电路与智能系统系" value="集成电路与智能系统系"></el-option>
                </el-select>
            </el-form-item>
            <el-form-item label="学年总结" prop="summary">
                <el-input v-model="studentInfo.summary" placeholder="请输入个人学年总结，600字左右"></el-input>
            </el-form-item>
            <div class="space2"></div>
            <div class="centered-container">
            <el-form-item>
                <el-button type="primary" @click="submitForm" class="submit">提交</el-button>
                <el-button @click="resetForm" class="renew">重置</el-button>
            </el-form-item>
        </div>
        </el-form>
    </div>
</Transition>
</template>

<script>
    export default {
        name: "StudentInfoForm",
        data() {
            return {
                studentInfo: {
                    name: "",
                    pinyin: "",
                    studentId: "",
                    gender: "男",
                    major: "",
                    phone: "",
                    email: "",
                    idCard: "",
                    politic:"",
                    research: "",
                    service: "",
                    practice: "",
                    summary: "",
                },
                rules: {
                    name: [{required: true, message: "请输入姓名", trigger: "blur"}],
                    studentId: [{required: true, message: "请输入学号", trigger: "blur"}],
                    major: [{required: true, message: "请选择专业", trigger: "change"}],
                    summary: [{required: true, message: "请输入个人学年总结，600字左右", trigger: "blur"}],
                },
            };
        },
        methods: {
            submitForm() {
                // 将学生信息提交给后端
                alert('学生信息已提交')
            },
            resetForm() {
                this.$refs.form.resetFields();
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

.submit {
  margin-right: 80px;
}
.renew {
  margin-right: 80px;
}
.space1{
  height: 20px;
}
.space2{
  height: 20px;
}
</style>
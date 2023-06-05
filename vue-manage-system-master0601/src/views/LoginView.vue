<template>
  <div class="login-container">
    <div class="login-box">
      <div class="login-logo">
        <a href="#">
          <img src="../assets/logo.png" alt="logo">
        </a>
      </div>
      <div class="login-form">
        <h3>用户登录</h3>
        <el-form ref="form" :model="loginForm" :rules="rules" label-position="left" label-width="0">
          <el-form-item prop="username">
            <el-input v-model="loginForm.username" placeholder="请输入用户名"></el-input>
          </el-form-item>
          <el-form-item prop="password">
            <el-input type="password" v-model="loginForm.password" placeholder="请输入密码"></el-input>
          </el-form-item>
          <el-form-item>
            <el-button type="primary" @click="do_login" :loading="loading">登录</el-button>
          </el-form-item>
        </el-form>
      </div>
    </div>
  </div>
</template>

<script>
import {login} from '../api/login.js'
import {setToken} from '../utils/auth'
import {getAccessToken} from '../utils/auth'
export default {
  data() {
    return {
      loginForm: {
        username: '',
        password: ''
      },
      rules: {
        username: [{ required: true, message: '请输入用户名', trigger: 'blur' }],
        password: [{ required: true, message: '请输入密码', trigger: 'blur' }]
      },
      loading: false
    }
  },
  methods: {
    do_login() {
      this.$refs.form.validate(valid => {
        if (valid) {
          this.loading = true
          //如果登陆成功，跳转到主页面
          login(this.loginForm.username,this.loginForm.password).then(res =>{
            console.log(res.data.accessToken)
            setToken(res.data.accessToken)
            this.$router.push({ path: '/' })
            }).catch(() => {
              // 登录失败，显示错误提示
              this.$message.error('用户名或密码错误')
              this.loading = false
            })
        }
      })
    }
  }
}
</script>

<style lang="scss">
.login-container {
  height: 100%;
  display: flex;
  justify-content: center;
  align-items: center;

  .login-box {
    width: 400px;
    height: 400px;
    border-radius: 5px;
    box-shadow: 0px 0px 10px #ccc;

    .login-logo {
      height: 100px;
      display: flex;
      justify-content: center;
      align-items: center;

      img {
        height: 80%;
      }
    }

    .login-form {
      padding: 20px;

      h3 {
        font-size: 24px;
        margin-bottom: 20px;
        text-align: center;
      }
    }
  }
}
</style>
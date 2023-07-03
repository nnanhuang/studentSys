<template>
  <div>
  <Transition>
    <div class="container">
      <div class = 'space1'></div>
      <div class="welcome-message"> {{ username }} ，欢迎您！</div>
      <div class = 'space4'></div>
      <div class="line"></div>
      <div class = 'space1'>
      </div>
      <div class="message">

        <!-- 表格中不包括 -->
        <!-- <el-form label-width="90px">
          <div class="element-container">
            <el-form-item label="学号/职工号" prop="student_number">
              <el-input ></el-input>
            </el-form-item>
            <el-form-item label="手机号" prop="phone">
              <el-input></el-input>
            </el-form-item>
            <el-form-item label="邮箱" prop="email">
              <el-input></el-input>
            </el-form-item>
          </div>
        </el-form> -->
      </div>
      <div class = 'space2'>

      </div>
      <div class="image-container">
        <div class="image-wrapper">
          <img class="compressed-image" src="../assets/img/plus.png" alt="Your Image">
        </div>
      </div>
    </div>
  </Transition>
  </div>
</template>




  
  <script>
import { ref } from 'vue';
import imgurl from '../assets/img/img.jpg';
import {getUsername} from "../api/login";


export default {

data() {
  return {
    username: "",
  }
},
created(){
  this.getName()
},
methods: {

  getName(){
    getUsername().then(res => {
      this.username = res.data
    })
  }

}
};




// const userID = ref('');
// const studentID = ref('');
// const phoneNumber = ref('');
// const email = ref('');

// const username = ref(localStorage.getItem('ms_username') || '');
</script>
  
<style scoped>
.container {
  display: flex;
  flex-direction: column;
  align-items: center;
  height: 80vh;
  padding: 10px;
}

.welcome-message {
  text-align: center;
  font-size: 40px;
  color: #378ee6;
  margin-top: 30px;
}

.line {
  width: calc(100% - 20px);
  height: 2px;
  background-color: #f2f2f2;
  margin-top: 10px;
  margin-bottom: 10px;
}

.message {
  display: flex;
  justify-content: center;
  width: 100%;
  max-width: 600px;
  margin-bottom: 20px;
}
.element-container {
  display: flex;
  justify-content: space-between;
  width: 100%;
  margin: 0 1%; /* 调整元素之间的距离 */
}

.image-container {
  display: flex;
  justify-content: center;
  margin-top: 20px;
  margin-bottom: 20px;
}
.space1{
  height: 27px;
}

.space2{
  height: 200px;
}
.space4{
  height: 10px;
}


.image-wrapper {
  width: 100%; /* 图片宽度与页面相同 */
  max-width: 1200px;
  margin-right: 10px;
  overflow: hidden;
}

.compressed-image {
  width: 100%;
  height: auto;
  object-fit: contain;
}


</style>
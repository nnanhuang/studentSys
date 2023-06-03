<template>
  <Transition>
  <div class="container">
    <h1 class="centered-title">学生骨干服务岗位在线评审</h1>
    <div class="space1"></div>
    <table class="my-table">
      <thead>
      <tr>
        <th>姓名</th>
        <th>年龄</th>
        <th>服务岗位</th>
        <th>评分</th>
      </tr>
      </thead>
      <tbody>
      <tr v-for="(student, index) in students" :key="student.id">
        <td>{{ student.name }}</td>
        <td>{{ student.age }}</td>
        <td>{{ student.servePosition }}</td>
        <td>
          <input type="number" min="0" max="100" v-model="scores[index]">
        </td>
      </tr>
      <!-- 目前还没开发后端并连接数据库，因此在前端设置点假数据 -->
      <tr>
        <td>张三</td>
        <td>22</td>
        <td>学生会会长</td>
        <td>
          <input type="number" min="0" max="100">
        </td>
      </tr>
      <tr>
        <td>李四</td>
        <td>21</td>
        <td>新闻部副部长</td>
        <td>
          <input type="number" min="0" max="100">
        </td>
      </tr>
      </tbody>
    </table>
    <div class="button-container">
      <button class="my-button" @click="submitScores">提交</button>
    </div>
  </div>
  </Transition>
</template>

<script>
import { ref, reactive } from 'vue';
export default {
  data() {
    return {
      students: [],
      scores: []
    }
  },
  // mounted() {
  //   // 从后端数据库中获取学生情况
  //   this.fetchStudents()
  // },
  // methods: {
  //   fetchStudents() {
  //     // 调用后端API获取学生列表
  //     this.students = data
  //     this.scores = new Array(data.length).fill(0)
  //   },
  //   submitScores() {
  //     // 将评分提交给后端API
  //     console.log(this.scores)
  //     alert('评分已提交')
  //   }
  // }
}
</script>

<style>
.space1{
  height: 10px;
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

.my-table {
  border-collapse: collapse;
  width: 100%;
}

.my-table th,
.my-table td {
  padding: 10px;
  text-align: left;
  vertical-align: top;
  border: 1px solid #ddd;
}

.my-table th {
  background-color: #f2f2f2;
  font-weight: bold;
}

.my-table tbody tr:nth-child(even) {
  background-color: #f2f2f2;
}

.button-container{
    margin-top: 20px;
    text-align: center;
  }

  .my-button {
    display: inline-block;
    padding: 10px 20px;
    font-size: 16px;
    font-weight: bold;
    text-align: center;
    text-decoration: none;
    white-space: nowrap;
    background-color: #4CAF50;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }

  .my-button:hover {
    background-color: #3e8e41;
  }
</style>
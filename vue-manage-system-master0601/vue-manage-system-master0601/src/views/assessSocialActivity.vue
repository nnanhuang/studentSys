
<template>
  <Transition>
    <div class="container">
      <h1 class="centered-title">社会实践在线评审</h1>
      <div class="space1"></div>
      <table class="my-table">
        <thead>
          <tr>
            <th>姓名</th>
            <th>学号</th>
            <th>是否评分</th>
            <th>评分</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="(student, index) in students" :key="student.id">
            <td>{{ student.name }}</td>
            <td>{{ student.id }}</td>
            <td>{{ student.socialActivity }}</td>
            <td>
              <input type="number" min="0" max="100" v-model="scores[index]" />
            </td>
          </tr>
          <!-- 目前还没开发后端并连接数据库，因此在前端设置点假数据 -->
          <tr>
            <td>张三</td>
            <td>22</td>
            <td>已评分</td>
            <button @click="showModal = true">评分</button>
            <teleport to="body">
              <socialPopups v-if="showModal" @close="showModal = false" />
            </teleport>
          </tr>
          <tr>
            <td>李四</td>
            <td>21</td>
            <td>未评分</td>
            <button @click="showModal = true">评分</button>
            <teleport to="body">
              <socialPopups v-if="showModal" @close="showModal = false" />
            </teleport>
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
import socialPopups from './socialPopups.vue';
export default {
  data() {
    return {
      students: [],
      scores: [],
    };
  },
  components: {
    socialPopups
  },
  data() {
    return {
      showModal: false
    };
  }
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
};
</script>

<style>
.modal {
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  background-color: #fff;
  padding: 20px;
  border: 1px solid #ccc;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
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
.space1{
  height: 10px;
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

.button-container {
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
  background-color: #4caf50;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.my-button:hover {
  background-color: #3e8e41;
}
</style>

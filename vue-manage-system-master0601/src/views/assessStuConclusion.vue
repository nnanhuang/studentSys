<<<<<<< HEAD
<template>
  <Transition>
  <div class="container">
    <h1 class="centered-title">个人学年总结在线评审</h1>
    <div class="space1"></div>
    <table class="my-table">
      <thead>
      <tr>
        <th>姓名</th>
        <th>年龄</th>
        <th>学年总结</th>
        <th>评分</th>
      </tr>
      </thead>
      <tbody>
      <tr v-for="(student, index) in students" :key="student.id">
        <td>{{ student.name }}</td>
        <td>{{ student.age }}</td>
        <td>{{ student.stuConclusion }}</td>
        <td>
          <input type="number" min="0" max="100" v-model="scores[index]">
        </td>
      </tr>
      <!-- 目前还没开发后端并连接数据库，因此在前端设置点假数据 -->
      <tr>
        <td>张三</td>
        <td>22</td>
        <td>非常优秀</td>
        <td>
          <input type="number" min="0" max="100">
        </td>
      </tr>
      <tr>
        <td>李四</td>
        <td>21</td>
        <td>进步巨大</td>
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
=======
<template>
  <Transition>
    <div>
      <div class="space1"></div>
      <el-card>
        <!--表格主体-->
        <div class="space2"></div>
        <h1 class="centered-title">学年总结评委评分</h1>
        <div class="space3"></div>
        <el-table :data="statementList" stripe border bordereight="250" style="width: 100%">
          <el-table-column type="index" width="50"></el-table-column>
          <el-table-column prop="name" label="姓名"></el-table-column>
          <el-table-column prop="stuNo" label="学号"></el-table-column>
          <el-table-column prop="isAssess" label="是否评分" fixed="right" :class="getAssessClass">
          </el-table-column>
          <el-table-column prop="action" label="评分" fixed="right" >
            <template #default="scope">
              <el-button type="link" @click="showDialog2(scope.row)">评分</el-button>
            </template>
          </el-table-column>
          <el-table-column prop="statementScore" label="得分" fixed="right"></el-table-column>
        </el-table>

        <!--弹窗：评分-->
        <el-dialog v-model="applyVisible" v-bind="$attrs">
          <div class="space2"></div>
          <h1 class="centered-title">学年总结评委评分</h1>
          <div class="space3"></div>
          <el-table :data="statementList2" stripe border bordereight="250" style="width: 100%">
            <el-table-column type="index" width="50"></el-table-column>
            <el-table-column prop="type" label="类型"></el-table-column>
            <el-table-column prop="content" label="内容"></el-table-column>
          </el-table>
          <div class="space2"></div>
          <el-form-item label="请评分：">
            <el-input v-model="scoreSum.socialScore" placeholder="分数区间在0-100"></el-input>
          </el-form-item>
          <div slot="footer" class="dialog-footer centered-buttons">
            <div class="space1"></div>
            <el-button type="primary" @click="submitSocialScore">确 定</el-button>
            <el-button @click="applyVisible = false">取 消</el-button>
          </div>
        </el-dialog>
      </el-card>
    </div>
  </Transition>
</template>

<script>

  export default {
    data() {
    return {
      statementList: [
        { stuNo: '001', name: 'Alice', isAssess: '已评分', statementScore: 90 },
        { stuNo: '002', name: 'Bob', isAssess: '未评分', statementScore: null },
        { stuNo: '003', name: 'Charlie', isAssess: '已评分', statementScore: 85 },
        { stuNo: '004', name: 'David', isAssess: '未评分', statementScore: null },
        { stuNo: '005', name: 'Eva', isAssess: '已评分', statementScore: 92 },
      ],
      statementList2: [
        { type: '思想政治', content: '学年总结内容1' },
        { type: '行为规范', content: '学年总结内容2' },
        { type: '学习态度', content: '学年总结内容3' },
        { type: '身体健康', content: '学年总结内容4' },
      ],
      applyVisible: false,
      scoreSum: {
        socialScore: null
      }
    };
  },
  methods: {
    showDialog2(row) {
      console.log('评分弹窗', row);
      // TODO: 弹出评分弹窗逻辑
      this.applyVisible = true; 
    },
    submitSocialScore() {
      console.log('提交社会实践评分', this.scoreSum.socialScore);
      // TODO: 提交评分逻辑
    },
  }
};

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
  
</script>

<style>
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
.space2{
  height: 20px;
}
.space3{
  height: 20px;
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
  background-color: #4CAF50;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.centered-buttons {
  display: flex;
  justify-content: center;
}

.my-button:hover {
  background-color: #3e8e41;
}
</style>
>>>>>>> 20b4c2d729e72d94ff5f063e6033dc080bafdc29

<template>
  <Transition>
    <div>
      <div class="space1"></div>
      <el-card>
        <!--表格主体-->
        <div class="space2"></div>
        <h1 class="centered-title">学年总结评委评分</h1>
        <div class="space3"></div>
        <el-table :data="statementList" stripe border border-right="250" style="width: 100%">
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
            <el-input v-model="scoreSum.statementScore" placeholder="分数区间在0-100"></el-input>
          </el-form-item>
          <div slot="footer" class="dialog-footer centered-buttons">
            <div class="space1"></div>
            <el-button type="primary" @click="submitStatementScore">确 定</el-button>
            <el-button @click="applyVisible = false">取 消</el-button>
          </div>
        </el-dialog>
      </el-card>
    </div>
  </Transition>
</template>

<script>
import { viewStatementT } from "../api/login.js";
import { submitStatementScore } from "../api/login.js";
import { viewStuStatementScore } from "../api/login.js";
import { ElMessage } from 'element-plus'


  export default {
    inheritAttrs: false,
    computed:{
      //面包屑导航，这个貌似不需要（我们用了tag把面包屑导航取消了）
      crumbs() {
      const routes = this.$route.matched;
      const crumbs = [];

      routes.forEach(route => {
        if (route.meta.breadcrumb) {
          crumbs.push(...route.meta.breadcrumb);
        }
      });

      return crumbs;
    },
    //实现分页功能，要是之后不用可以删掉
    paginatedStudents() {
      const start = (this.queryInfo.pagenum - 1) * this.queryInfo.pagesize;
      const end = start + this.queryInfo.pagesize;
      return this.Students.slice(start, end);
    },
  },
  data() {
    return {
      statementList: [
        { stuNo: '1', name: '11111', isAssess: "未评分", statementScore: null},
        ],
      statement: {
      },
      scoreSum:{
        statementScore: null,
      },
      dialogVisible: false,
      applyVisible: false,
      statementList2:[
        {
          type:'思想政治',
          content:'学年总结内容',
        }
      ]
    };
  },
  mounted() {
    this.fetchStatementList();
    this.fetchStatementList2();
  },
  methods: {
    handleSizeChange(newSize) {
      this.queryInfo.pagesize = newSize;
    },
    handleCurrentChange(newPage) {
      this.queryInfo.pagenum = newPage;
    },
    fetchStatementList() {
      viewStuStatementScore()
        .then(response => {
          console.log(response.data)
          this.statementList = response.data;
        })
        .catch(error => {
          console.log(error);
        });
    },
    fetchStatementList2() {
      viewStatementT(this.statement.stuNo,this.statement.name,this.statement.isAssess,this.statement.statementScore)
        .then(response => {
          console.log(response.data)
          this.statementList2 = response.data;
        })
        .catch(error => {
          console.log(error);
        });
    },
    showDialog2(row) {
      this.scoreSum.statementScore = '' //清空上一次填写的输入框
      //console.log(row.id);
      this.statement = Object.assign({}, row);    //将row的值赋给data()中的social
      console.log(this.statement);
      this.applyVisible = true;    //打开弹窗
      this.fetchStatementList2();
      //console.log(socialList2);
    },
    submitStatementScore(){
      submitStatementScore(this.statement.stuNo,this.statement.name,this.statement.isAssess,this.scoreSum.statementScore)
      .then(response => {
        console.log(response.data)
        this.applyVisible = false;    //关闭弹窗
        this.fetchStatementList();    //刷新列表
        ElMessage.success('已成功提交评分')    //提示成功删除
    }).catch(error => {
        console.log(error);
    });
    },
  },

  //   data() {
  //   return {
  //     statementList: [
  //       { stuNo: '001', name: 'Alice', isAssess: '已评分', statementScore: 90 },
  //       { stuNo: '002', name: 'Bob', isAssess: '未评分', statementScore: null },
  //       { stuNo: '003', name: 'Charlie', isAssess: '已评分', statementScore: 85 },
  //       { stuNo: '004', name: 'David', isAssess: '未评分', statementScore: null },
  //       { stuNo: '005', name: 'Eva', isAssess: '已评分', statementScore: 92 },
  //     ],
  //     statementList2: [
  //       { type: '思想政治', content: '学年总结内容1' },
  //       { type: '行为规范', content: '学年总结内容2' },
  //       { type: '学习态度', content: '学年总结内容3' },
  //       { type: '身体健康', content: '学年总结内容4' },
  //     ],
  //     applyVisible: false,
  //     scoreSum: {
  //       socialScore: null
  //     }
  //   };
  // },
  // methods: {
  //   showDialog2(row) {
  //     console.log('评分弹窗', row);
  //     // TODO: 弹出评分弹窗逻辑
  //     this.applyVisible = true; 
  //   },
  //   submitSocialScore() {
  //     console.log('提交社会实践评分', this.scoreSum.socialScore);
  //     // TODO: 提交评分逻辑
  //   },
  // }
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

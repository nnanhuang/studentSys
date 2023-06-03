<template>
  <Transition>
  <div>
      <div class="add-user">
        <h1>成绩查看</h1>
        <el-form ref="form" :model="user" :rules="rules" label-width="40px">
          <el-form-item label="学号" prop="stu_no">
            <el-input v-model="user.stu_no" :disabled="true"></el-input>
          </el-form-item>
          <el-form-item label="学年" prop="year">
            <el-input v-model="user.year" :disabled="true"></el-input>
          </el-form-item>
          <el-form-item label="GPA" prop="GPA">
            <el-input v-model="user.GPA" :disabled="true"></el-input>
          </el-form-item>
          <el-form-item>
          </el-form-item>
        </el-form>
      </div>
  </div>
  </Transition>
</template>

<script>
import { useSidebarStore } from '../store/sidebar';
import { useTagsStore } from '../store/tags';
import vHeader from '../components/header.vue';
import vSidebar from '../components/sidebar.vue';
import vTags from '../components/tags.vue';
export default {
  computed: {
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
  },
  name: "AddUser",
  data() {
    return {
      user: {
        stu_no: "",
        year: "",
        GPA: "",
      },
    };
  },
  methods: {
   
  },
};
</script>

<style scoped>


.add-user {
  margin-top: 30px;
  margin-left: 10px;
  margin-right: 10px;
  background-color:#fff;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
  display: flex;
  flex-direction: column;
  align-items: center;
}

.add-user h1{
  font-size: 30px;
  margin-bottom: 30px;
  color: #000;
}

.el-form-item {
  margin-bottom: 30px;
  display: flex;
  align-items: center;
}

.form-row {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  align-items: center;
}

.el-input {
  width: 400px;
  margin: 15px;
}
</style>















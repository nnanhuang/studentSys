<template>
    <Transition>
        <div>
            <div class="space1"></div>
            <el-card>
                <el-row >
                    <el-col :span="4">
                    <el-input
                        placeholder="请输入学生学号"
                        clearable
                        v-model="queryInfo.query"
                        @clear="fetchVolunteerList"
                    >
                        <el-button
                        slot="append"
                        icon="el-icon-search"
                        @click="searchStudent"
                        ></el-button>
                    </el-input>
                    </el-col>
                    <el-col :span="3">
                    <el-button type="primary" @click="searchStudent">搜索学生</el-button>
                    </el-col>
                </el-row>

                <!--表格主体-->
                <div class="space2"></div>
                <h1 class="centered-title">科研经历评委评分</h1>
                <div class="space3"></div>
                <el-table :data="paginatedStudents" stripe border bordereight="250" style="width: 100%">
                    <el-table-column type="index" width="50"></el-table-column>
                    <el-table-column prop="stuNo" label="学号"></el-table-column>
                    <el-table-column prop="name" label="姓名">
                    <template #default="scope">
                        <div :class="{ 'highlighted-row': scope.row.isHighlighted }">
                        {{ scope.row.name }}
                        </div>
                        </template>
                    </el-table-column>
                    <el-table-column prop="isAssess" label="是否评分" :filters="statusFilters" :filter-method="handleStatusFilter">
                        <template #default="scope">
                            <div :class="{ 'highlighted-row': scope.row.isHighlighted }">
                                {{ scope.row.isAssess }}
                            </div>
                        </template>
                    </el-table-column>

                    <el-table-column prop="action" label="评分" fixed="right">
                        <template #default="scope">
                            <el-button type="link" @click="showDialog2(scope.row)">评分</el-button>
                        </template>
                    </el-table-column>

                    <el-table-column prop="sciScore" label="得分" fixed="right"></el-table-column>
                </el-table>

                <!--弹窗：评分-->
                <el-dialog  title="" v-model="applyVisible" v-bind="$attrs">
                    <div class="space2"></div>
                    <h1 class="centered-title">科研成果评委评分</h1>
                    <div class="space3"></div>
                    <el-table :data="SciRecordList" stripe border bordereight="250" style="width: 100%">
                        <el-table-column type="index" width="30%"></el-table-column>
                        <el-table-column prop="type" label="类型" width="60%"></el-table-column>
                        <el-table-column prop="content" label="内容"></el-table-column>
                    </el-table>

                    <el-form-item label="请评分：">
                        <el-input v-model="scoreSum.sciScore"></el-input>
                    </el-form-item>

                    <div slot="footer" class="dialog-footer centered-buttons">
                        <el-button type="primary" @click="submit_SciScore">确 定</el-button>
                        <el-button @click="applyVisible = false">取 消</el-button>
                    </div>
                </el-dialog>

                <el-pagination
                    @size-change="handleSizeChange"
                    @current-change="handleCurrentChange"
                    :current-page="queryInfo.pagenum"
                    :page-sizes="[10, 20, 50]"
                    :page-size="queryInfo.pagesize"
                    layout="total, sizes, prev, pager, next, jumper"
                    :total="StuInfoList.length"
                    background
                >
                </el-pagination>
            </el-card>
        </div>
    </Transition>
</template>


<script>
    import { viewSciStuInfo } from "../api/login.js";
    import { submitSciScore } from "../api/login.js"
    import { viewSciRecordList } from "../api/login.js"

    export default {
        inheritAttrs: false,
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
            paginatedStudents() {
                const start = (this.queryInfo.pagenum - 1) * this.queryInfo.pagesize;
                const end = start + this.queryInfo.pagesize;
                return this.StuInfoList.slice(start, end);
            },
        },
        data() {
            return {
                StuInfoList: [
                    { stuNo: '1', name: '11111', isAssess: '未评分', orgScore: null},
                ],
                StuInfo: {},
                scoreSum: {
                    orgScore: null
                },
                SciRecordList: [
                    { time: '111', content: '222'}
                ],
                dialogVisible: false,
                applyVisible: false,

                queryInfo: {
                  query: "",
                  pagenum: 1,
                  pagesize: 10
                },

                statusFilters: [ // 筛选选项
                    { text: '已评分', value: '已评分' },//视情况可修改为已评分未评分
                    { text: '未评分', value: '未评分' }
                ],
                filteredStatus: '' // 筛选的状态值
            };
        },
        mounted() {
            this.fetchStuInfoList();
            //this.fetchServePosition2List();
        },
        methods: {
            handleStatusFilter(value, row) {
                //this.filteredStatus = value; // 将选中的筛选值赋给 filteredStatus
                return row.isAssess === value; // 根据状态值进行筛选
            },
            searchStudent() {
                const studentId = this.queryInfo.query;
                if (studentId) {//volunteers可根据表格数据修改
                //注意此处的volunteer为一个匿名函数中的占位符，用于表示数组中的每个元素
                //该占位符可以随意取名，但不能与外界重复
                const index = this.StuInfoList.findIndex((StuInfo) =>StuInfo.stuNo.toString() === studentId);
                //console.log(typeof this.Students[0].id);//number类型，即int
                //console.log(typeof studentId);//string类型，因此要进行类型转换后再对比
                if (index !== -1) {
                const pageSize = this.queryInfo.pagesize;
                const pageNum = Math.ceil((index + 1) / pageSize);
                this.queryInfo.pagenum = pageNum;
                    // 将匹配到的学生行设为高亮,如果不需要该功能可注释掉以下三行
                    this.StuInfoList.forEach((StuInfo, idx) => {
                        StuInfo.isHighlighted = idx === index;
                    });
                // 滚动页面到匹配的学生行
                this.$nextTick(() => {
                    this.scrollToRow(index);
                });
                } else {
                // 如果学号不存在，给出相应的提示或处理逻辑
                console.log('学号不存在');
                }
                }
            },
            scrollToRow(index) {//滚动页面的方法
                const currentPage = this.queryInfo.pagenum;
                const pageSize = this.queryInfo.pagesize;
                const startIndex = (currentPage - 1) * pageSize;
                const relativeIndex = index - startIndex;
                const table = document.querySelector('.el-table__body-wrapper');
                console.log(table);
                const row = table.querySelector(`.el-table__row`);
                if (row) {
                    row.scrollIntoView({ behavior: 'smooth' });
                }
            },
            handleSizeChange(newSize) {
                this.queryInfo.pagesize = newSize;
            },
            handleCurrentChange(newPage) {
                this.queryInfo.pagenum = newPage;
            },
            fetchStuInfoList() {
                viewSciStuInfo()
                    .then(response => {
                        console.log(response.data)
                        this.StuInfoList = response.data;
                    })
                    .catch(error => {
                        console.log(error);
                    });
            },
            fetchSciRecordList() {
                viewSciRecordList(this.StuInfo.stuNo, this.StuInfo.name, this.StuInfo.isAssess, this.StuInfo.sciScore)
                    .then(response => {
                        console.log(response.data)
                        this.SciRecordList= response.data;
                    })
                    .catch(error => {
                        console.log(error);
                    });
            },
            showDialog2(row) {
                this.scoreSum.sciScore = '' //清空上一次填写的输入框
                //console.log(row.id);
                this.StuInfo = Object.assign({}, row);    //将row的值赋给data()中的ServePosition
                //console.log(this.ServePosition);
                this.fetchSciRecordList()
                this.applyVisible = true;    //打开弹窗

            },
            submit_SciScore() {
                submitSciScore(this.StuInfo.stuNo, this.StuInfo.name, this.StuInfo.isAssess, this.scoreSum.sciScore).then(response => {
                    console.log(response.data)
                    this.applyVisible = false;    //关闭弹窗

                    this.fetchStuInfoList();    //刷新列表
                    ElMessage.success('已成功提交评分')
                }).catch(error => {
                    console.log(error);
                    ElMessage.error(error.message)
                });
            },

        },
    }

</script>
<style>
    .centered-title {
        text-align: center;
    }
    .filter-buttons {
        display: flex;
        justify-content: flex-start;
        margin-top: 10px;
    }
    .space1{
        height: 10px;
    }
    .space2{
        height: 20px;
    }
    .space3{
        height: 30px;
    }
    .centered-container {
        padding: 20px;
        display: flex;
        justify-content: center;
    }
    .delete-reminder {
        padding: 20px;
        display: flex;
        justify-content: center;
    }
    .el-dialog__wrapper {
        display: flex;
        align-items: center;
        justify-content: center;

    }
    .centered-buttons {
        display: flex;
        justify-content: center;
    }
    .highlighted-row {
        background-color: #c6f3af;
    }
</style>
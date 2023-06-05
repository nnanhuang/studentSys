<template>
    <Transition>
        <div>
            <div class="space1"></div>
            <el-card>
                <!--表格主体-->
                <div class="space2"></div>
                <h1 class="centered-title">社会实践评委评分</h1>
                <div class="space3"></div>
                <el-table :data="socialList" stripe border bordereight="250" style="width: 100%">
                    <el-table-column type="index" width="50"></el-table-column>
                    <el-table-column prop="name" label="姓名"></el-table-column>
                    <el-table-column prop="stuNo" label="学号"></el-table-column>
                    <el-table-column prop="isAssess" label="是否评分" fixed="right">
                    </el-table-column>
                    <el-table-column prop="action" label="评分" fixed="right">
                        <template #default="scope">
                            <el-button type="link" @click="showDialog2(scope.row)">评分</el-button>
                        </template>
                    </el-table-column>
                    <el-table-column prop="socialScore" label="得分" fixed="right"></el-table-column>
                </el-table>

                <!--弹窗：评分-->
                <el-dialog v-model="applyVisible" v-bind="$attrs">
                    <div class="space2"></div>
                    <h1 class="centered-title">社会实践评委评分</h1>
                    <div class="space3"></div>
                    <el-table :data="socialList2" stripe border bordereight="250" style="width: 100%">
                        <el-table-column type="index" width="50"></el-table-column>
                        <el-table-column prop="time" label="起止时间"></el-table-column>
                        <el-table-column prop="content" label="内容"></el-table-column>
                    </el-table>
                    <el-form-item label="请评分：">
                        <el-input v-model="scoreSum.socialScore" placeholder="分数区间在0-100"></el-input>
                    </el-form-item>
                    <div slot="footer" class="dialog-footer centered-buttons">
                        <el-button type="primary" @click="submitSocialScore">确 定</el-button>
                        <el-button @click="applyVisible = false">取 消</el-button>
                    </div>
                </el-dialog>
            </el-card>
        </div>
    </Transition>
</template>


<script>
    import {viewSocialT} from "../api/login.js";
    import {submitSPScore} from "../api/login.js";
    import {viewStuSocialScore} from "../api/login.js";

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
                return this.Students.slice(start, end);
            },
        },
        data() {
            return {
                socialList: [
                    {stuNo: '1', name: '11111', isAssess: "未评分", socialScore: null},
                ],
                social: {},
                scoreSum: {
                    socialScore: null,
                },
                dialogVisible: false,
                applyVisible: false,
                socialList2: [
                    {
                        time: '11',
                        content: '22',
                    }
                ]
            };
        },
        mounted() {
            this.fetchSocialList();
            this.fetchSocialList2();
        },
        methods: {
            handleSizeChange(newSize) {
                this.queryInfo.pagesize = newSize;
            },
            handleCurrentChange(newPage) {
                this.queryInfo.pagenum = newPage;
            },
            fetchSocialList() {
                viewStuSocialScore()
                    .then(response => {
                        console.log(response.data)
                        this.socialList = response.data;
                    })
                    .catch(error => {
                        console.log(error);
                    });
            },
            fetchSocialList2() {
                viewSocialT(this.social.stuNo, this.social.name, this.social.isAssess, this.social.socialScore)
                    .then(response => {
                        //console.log(this.social.stuNo)
                        console.log(response.data)
                        this.socialList2 = response.data;
                    })
                    .catch(error => {
                        console.log(error);
                    });
            },
            showDialog2(row) {
                this.scoreSum.orgScore = '' //清空上一次填写的输入框
                //console.log(row.id);
                this.social = Object.assign({}, row);    //将row的值赋给data()中的social
                console.log(this.social);
                this.applyVisible = true;    //打开弹窗
                this.fetchSocialList2();
                //console.log(socialList2);
            },
            submitSocialScore() {
                submitSPScore(this.social.stuNo, this.social.name, this.social.isAssess, this.scoreSum.socialScore)
                    .then(response => {
                        console.log(response.data)
                        this.applyVisible = false;    //关闭弹窗
                        this.fetchSocialList();    //刷新列表
                        ElMessage.success('已成功提交评分')    //提示成功删除
                    }).catch(error => {
                    console.log(error);
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

    .space1 {
        height: 10px;
    }

    .space2 {
        height: 20px;
    }

    .space3 {
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


</style>
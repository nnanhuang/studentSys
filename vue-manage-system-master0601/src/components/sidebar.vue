<template>
    <div class="sidebar">
        <el-menu
            class="sidebar-el-menu"
            :default-active="onRoutes"
            :collapse="sidebar.collapse"
            background-color="#324157"
            text-color="#bfcbd9"
            active-text-color="#20a0ff"
            unique-opened
            router
        >
            <template v-for="item in items">
                <template v-if="item.subs">
                    <el-sub-menu :index="item.index" :key="item.index" v-permiss="item.permiss">
                        <template #title>
                            <el-icon>
                                <component :is="item.icon"></component>
                            </el-icon>
                            <span>{{ item.title }}</span>
                        </template>
                        <template v-for="subItem in item.subs">
                            <el-sub-menu
                                v-if="subItem.subs"
                                :index="subItem.index"
                                :key="subItem.index"
                                v-permiss="item.permiss"
                            >
                                <template #title>{{ subItem.title }}</template>
                                <el-menu-item v-for="(threeItem, i) in subItem.subs" :key="i" :index="threeItem.index">
                                    {{ threeItem.title }}
                                </el-menu-item>
                            </el-sub-menu>
                            <el-menu-item v-else :index="subItem.index" v-permiss="item.permiss">
                                {{ subItem.title }}
                            </el-menu-item>
                        </template>
                    </el-sub-menu>
                </template>
                <template v-else>
                    <el-menu-item :index="item.index" :key="item.index" v-permiss="item.permiss">
                        <el-icon>
                            <component :is="item.icon"></component>
                        </el-icon>
                        <template #title>{{ item.title }}</template>
                    </el-menu-item>
                </template>
            </template>
        </el-menu>
    </div>
</template>

<script setup> //lang="ts"
import { computed } from 'vue';
import { useSidebarStore } from '../store/sidebar.ts';
import { useRoute } from 'vue-router';
import {getMenu} from "../api/dynamicRBAC.js";

const items = [
    /*
    {
        icon: 'Odometer',
        index: '/dashboard',
        title: '系统首页',
        permiss: '1',
    },
    {
        icon: 'Calendar',
        index: '1',
        title: '学工模块',
        permiss: '2',
        subs: [
            {
                icon:'null',
                index: '/import',
                title: '导入学生信息',
                permiss: '3',
                subs: [
                    {
                        icon:'null',
                        index: '/importExcel',
                        title: '导入基本信息',
                        permiss: '4',
                        subs:[]
                    },
                    {
                        index: '/importGpa',
                        title: '导入成绩信息',
                        permiss: '5',
                    },
                    {
                        index: '/importVolun',
                        title: '导入志愿服务信息',
                        permiss: '6',
                    },
                ],
            },
            {
                index: '/ScoreSummary',
                title: '导出学生信息',
                permiss: '7',
            },
         
        ],
    },
    {
        icon: 'Edit',
        index: '3',
        title: '评委模块',
        permiss: '8',
        subs: [
            {
                index: '/pwGPA',
                title: '绩点审核',
                permiss: '9',
            },
            {
                index: '/pwVolun',
                title: '志愿时长审核',
                permiss: '10',
            },
            {
                index: '4',
                title: '各项打分',
                permiss: '11',
                subs: [
                    {
                        index: '/assessResearch',
                        title: '学生科研情况',
                        permiss: '12',
                    },
                    {
                        index: '/assessServePosition',
                        title: '学生骨干服务',
                        permiss: '13',
                    },
                    {
                        index: '/assessSocialActivity',
                        title: '学生社会实践',
                        permiss: '14',
                    },
                    {
                        index: '/assessStuConclusion',
                        title: '学生学年总结',
                        permiss: '15',
                    },
                ],
            },
        ],
    },
    {
        icon: 'Setting',
        index: '/icon',
        title: '学生模块',
        permiss: '16',
        subs: [
            {
                index: '/checkgpa',
                title: '我的成绩',
                permiss: '17',
            },
            {
                index: '/checkvolun',
                title: '我的志愿时长',
                permiss: '18',
            },
            {
                index: '/addInfo',
                title: '基本信息填报',
                permiss: '19',
            },
            {
                index: '4',
                title: '成绩信息填报',
                permiss: '20',
                subs: [
                    {
                        index: '/addResearch',
                        title: '科研情况',
                        permiss: '21',
                    },
                    {
                        index: '/addServePosition',
                        title: '骨干服务',
                        permiss: '22',
                    },
                    {
                        index: '/addSocial',
                        title: '社会实践',
                        permiss: '23',
                    },
                    {
                        index: '/Statement',
                        title: '学年总结',
                        permiss: '24',
                    },
                ],
            },
        ],
    },
    */
];

const route = useRoute();
const onRoutes = computed(() => {
    return route.path;
});

const sidebar = useSidebarStore();

async function fetchMenu() {
  try {
    const response = await getMenu(); // 调用getMenu函数获取菜单数据
    console.log(response.data);
    items.splice(0, items.length, ...response.data); // 使用响应数据更新items数组
    console.log(items);
    // 更新侧边栏菜单项
    sidebar.setItems(items);
  } catch (error) {
    console.error('Failed to fetch menu:', error);
  }
}

fetchMenu(); // 在页面加载时调用接口获取菜单
</script>

<style scoped>
.sidebar {
    display: block;
    position: absolute;
    left: 0;
    top: 70px;
    bottom: 0;
    overflow-y: scroll;
}
.sidebar::-webkit-scrollbar {
    width: 0;
}
.sidebar-el-menu:not(.el-menu--collapse) {
    width: 200px;
}
.sidebar > ul {
    height: 100%;
}

</style>

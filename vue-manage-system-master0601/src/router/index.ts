import { createRouter, createWebHashHistory, RouteRecordRaw } from 'vue-router';
import { usePermissStore } from '../store/permiss';
import Home from '../views/home.vue';

const routes: RouteRecordRaw[] = [
    {
        path: '/',
        redirect: '/dashboard',
    },
    {
        path: '/',
        name: 'Home',
        component: Home,
        children: [
            {
                path: '/dashboard',
                name: 'dashboard',
                meta: {
                    title: '系统首页',
                    permiss: '1',
                },
                component: () => import(/* webpackChunkName: "dashboard" */ '../views/dashboard.vue'),
            },
            {
                path: '/checkgpa',
                name: 'checkgpa',
                meta: {
                    title: '确认成绩',
                    permiss: '16',
                },
                component: () => import(/* webpackChunkName: "table" */ '../views/checkgpa.vue'),
            },
            {
                path: '/checkvolun',
                name: 'checkvolun',
                meta: {
                    title: '确认志愿时长',
                    permiss: '17',
                },
                component: () => import(/* webpackChunkName: "" */ '../views/checkvolun.vue'),
            },
            {
                path: '/assessResearch',
                name: 'assessResearch',
                meta: {
                    title: '学生科研情况',
                    permiss: '11',
                },
                component: () => import(/* webpackChunkName: "form" */ '../views/assessResearch.vue'),
            },
            {
                path: '/assessServePosition',
                name: 'assessServePosition',
                meta: {
                    title: '学生骨干服务',
                    permiss: '12',
                },
                component: () => import(/* webpackChunkName: "tabs" */ '../views/assessServePosition.vue'),
            },
            {
                path: '/assessSocialActivity',
                name: 'assessSocialActivity',
                meta: {
                    title: '学生社会实践',
                    permiss: '13',
                },
                component: () => import(/* webpackChunkName: "donate" */ '../views/assessSocialActivity.vue'),
            },
            {
                path: '/assessStuConclusion',
                name: 'assessStuConclusion',
                meta: {
                    title: '学生学年总结',
                    permiss: '14',
                },
                component: () => import(/* webpackChunkName: "upload" */ '../views/assessStuConclusion.vue'),
            },
            {
                path: '/addInfo',
                name: 'addInfo',
                meta: {
                    title: '基本信息填报',
                    permiss: '18',
                },
                component: () => import(/* webpackChunkName: "icon" */ '../views/addInfo.vue'),
            },
            {
                path: '/user',
                name: 'user',
                meta: {
                    title: '个人中心',
                },
                component: () => import(/* webpackChunkName: "user" */ '../views/user.vue'),
            },
            {
                path: '/addResearch',
                name: 'addResearch',
                meta: {
                    title: '科研情况',
                    permiss: '20',
                },
                component: () => import(/* webpackChunkName: "editor" */ '../views/addResearch.vue'),
            },
            {
                path: '/viewSubmittedSci',
                name: 'viewSubmittedSci',
                meta: {
                    title: '已提交的科研情况',
                    permiss: '',
                },
                component: () => import(/* webpackChunkName: "editor" */ '../views/viewSci.vue'),
            },
            {
                path: '/viewSubmittedSocial',
                name: 'viewSubmittedSocial',
                meta: {
                    title: '已提交的社会实践情况',
                    permiss: '',
                },
                component: () => import(/* webpackChunkName: "editor" */ '../views/viewSocial.vue'),
            },
            {
                path: '/addServePosition',
                name: 'addServePosition',
                meta: {
                    title: '骨干服务',
                    permiss: '21',
                },
                component: () => import(/* webpackChunkName: "markdown" */ '../views/addServePosition.vue'),
            },
            {
                path: '/viewSubmittedServePosition',
                name: 'viewSubmittedServePosition',
                meta: {
                    title: '已提交的骨干服务情况',
                    permiss: '',
                },
                component: () => import(/* webpackChunkName: "editor" */ '../views/viewServePosition.vue'),
            },
            {
                path: '/Statement',
                name: 'Statement',
                meta: {
                    title: '学年总结',
                    permiss: '23',
                },
                component: () => import(/* webpackChunkName: "export" */ '../views/Statement.vue'),
            },
            {
                path: '/addSocial',
                name: 'addSocial',
                meta: {
                    title: '社会实践',
                    permiss: '22',
                },
                component: () => import(/* webpackChunkName: "import" */ '../views/addSocial.vue'),
            },
            {
                path: '/pwGPA',
                name: 'pwGPA',
                meta: {
                    title: '绩点审核',
                    permiss: '8',
                },
                component: () => import(/* webpackChunkName: "import" */ '../views/pwGPA.vue'),
            },
            {
                path: '/pwVolun',
                name: 'pwVolun',
                meta: {
                    title: '志愿时长审核',
                    permiss: '9',
                },
                component: () => import(/* webpackChunkName: "import" */ '../views/pwVolun.vue'),
            },
            {
                path: '/importExcel',
                name: 'importExcel',
                meta: {
                    title: '导入基本信息',
                    permiss: '3',
                },
                component: () => import(/* webpackChunkName: "import" */ '../views/importExcel.vue'),
            },
            {
                path: '/importGpa',
                name: 'importGpa',
                meta: {
                    title: '导入成绩信息',
                    permiss: '4',
                },
                component: () => import(/* webpackChunkName: "import" */ '../views/importGpa.vue'),
            },
            {
                path: '/importVolun',
                name: 'importVolun',
                meta: {
                    title: '志愿时长审核',
                    permiss: '5',
                },
                component: () => import(/* webpackChunkName: "import" */ '../views/importVolun.vue'),
            },
            {
                path: '/ScoreSummary',
                name: 'ScoreSummary',
                meta: {
                    title: '导出学生信息',
                    permiss: '6',
                },
                component: () => import(/* webpackChunkName: "import" */ '../views/ScoreSummary.vue'),
            },
            
]},
    {
        path: '/login',
        name: 'Login',
        meta: {
            title: '登录',
        },
        component: () => import(/* webpackChunkName: "login" */ '../views/Login2.vue'),
    },
    {
        path: '/403',
        name: '403',
        meta: {
            title: '没有权限',
        },
        component: () => import(/* webpackChunkName: "403" */ '../views/403.vue'),
    },
];

const router = createRouter({
    history: createWebHashHistory(),
    routes,
});

/** 
router.beforeEach((to, from, next) => {
    document.title = `${to.meta.title} | vue-manage-system`;
    const role = localStorage.getItem('ms_username');
    const permiss = usePermissStore();
    if (!role && to.path !== '/login') {
        next('/login');
    } else if (to.meta.permiss && !permiss.key.includes(to.meta.permiss)) {
        // 如果没有权限，则进入403
        next('/403');
    } else {
        next();
    }
});
*/

//重定向，可注释勿删
// import { getAccessToken } from '../utils/auth.js'
// router.beforeEach((to, from, next) => {
//     if (getAccessToken()) {
//       if (to.path === '/login') {
//         next({ path: '/' })
//       } 
//       next()
//     } else {
//       // 没有token
//       if (to.path === '/login') {
//         // 直接进入
//         next()
//       } else {
//         next('/login') // 否则全部重定向到登录页
//       }
//     }
//   })



export default router;

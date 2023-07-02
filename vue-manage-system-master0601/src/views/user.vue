<template>
	<div>
		<el-row :gutter="20">
			<el-col :span="12">
				<el-card shadow="hover">
					<template #header>
						<div class="clearfix">
							<span>基础信息</span>
						</div>
					</template>
					<div class="info">
						<div class="info-image" @click="showDialog">
							<el-avatar :size="100" :src="avatarImg" />
							<span class="info-edit">
								<i class="el-icon-lx-camerafill"></i>
							</span>
						</div>
						<div class="info-name">{{ username }}</div>
						<div class="info-desc">不可能！我的代码怎么可能会有bug！</div>
					</div>
				</el-card>
			</el-col>
			<el-col :span="12">
				<el-card shadow="hover">
					<template #header>
						<div class="clearfix">
							<span>修改密码</span>
						</div>
					</template>
					<el-form label-width="90px">
						<el-form-item label="用户名："> {{ username }} </el-form-item>
						<el-form-item label="旧密码：">
							<el-input type="password" v-model="oldPwd"></el-input>
						</el-form-item>
						<el-form-item label="新密码：">
							<el-input type="password" v-model="newPwd"></el-input>
						</el-form-item>
						<el-form-item>
							<el-button type="primary" @click="save">保存</el-button>
						</el-form-item>
					</el-form>
				</el-card>
			</el-col>
		</el-row>
	</div>
</template>

<script>
	import 'cropperjs/dist/cropper.css';
	import {updatePassword} from "../api/login";
	import {getUsername} from "../api/login";

	export default {
		data() {
			return {
				username: "",
				oldPwd: "",
				newPwd: ""
			}
		},
		created(){
			this.getName()
		},
		methods: {
			save(){
				updatePassword(this.oldPwd, this.newPwd).then(res => {
					console.log(res)
					if(res.code == 200){
						ElMessage.success("密码修改成功")
					}else if(res.code == 411){
						ElMessage.error("您输入的旧密码错误，请重新输入")
					}
				})
			},
			getName(){
				getUsername().then(res => {
					this.username = res.data
				})
			}

		}
	};

</script>

<style scoped>
.info {
	text-align: center;
	padding: 35px 0;
}
.info-image {
	position: relative;
	margin: auto;
	width: 100px;
	height: 100px;
	background: #f8f8f8;
	border: 1px solid #eee;
	border-radius: 50px;
	overflow: hidden;
}

.info-edit {
	display: flex;
	justify-content: center;
	align-items: center;
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.5);
	opacity: 0;
	transition: opacity 0.3s ease;
}
.info-edit i {
	color: #eee;
	font-size: 25px;
}
.info-image:hover .info-edit {
	opacity: 1;
}
.info-name {
	margin: 15px 0 10px;
	font-size: 24px;
	font-weight: 500;
	color: #262626;
}
</style>

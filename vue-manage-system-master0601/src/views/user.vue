<template>
	<div class="container">


			
				<el-card shadow="hover" width="200px">
					<template #header>
						<div class="clearfix">
							<h2>修改密码</h2>
						</div>
					</template>
					<div class="centered-container">
					<el-form label-width="100px">
						<el-form-item label="用户名："> {{ username }} </el-form-item>
						<el-form-item label="旧密码：">
							<el-input type="password" v-model="oldPwd"  class="long-input"></el-input>
						</el-form-item>
						<el-form-item label="新密码：">
							<el-input type="password" v-model="newPwd" class="long-input"></el-input>
						</el-form-item>
						<el-form-item>
							<el-button type="primary" @click="save" class="button">保存</el-button>
						</el-form-item>
					</el-form>
				</div>
				</el-card>


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
	width: 200px;
	height: 100px;
	background: #f8f8f8;
	border: 1px solid #eee;
	border-radius: 50px;
	overflow: hidden;
}
.center{
	display: flex;
  justify-content: center;
}
.centered-container {
  display: flex;
  justify-content: center;
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

.clearfix{
	text-align: center;
}

.container {
  background-color: white;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}
.long-input {
  width: 300px; /* Adjust the width as needed */
}

	.button {
  margin-left: 75px;
}


</style>
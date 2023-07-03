import request from "../utils/request.js";

// 用户登录
export function login(username, password) {
  const data = {
    username,
    password,
  };
  return request({
    url: "/auth/login",
    method: "post",
    data: data,
  });
}

// 获取用户信息
export function getInfo() {
  return request({
    url: "/user/profile/get",
    method: "get",
  });
}

// 获取学生成绩汇总数据
export function getScoreSum() {
  return request({
    url: "/scoreSum/getList",
    method: "get",
  });
}

// 用户注册
export function register(name, password, idCard, phone, email) {
  const data = {
    name,
    password,
    idCard,
    phone,
    email,
  };
  return request({
    url: "/auth/register",
    method: "post",
    data: data,
  });
}

//修改密码方法
export function updatePassword(oldPwd, newPwd) {
  return request({
    url: `/user/password/update?oldPwd=${oldPwd}&newPwd=${newPwd}`,
    method: "post",
  });
}

//获取用户名
export function getUsername() {
  return request({
    url: "/user/username/get",
    method: "get",
  });
}

//修改个人信息方法
export function changeDetails(name, phone, email) {
  const data = {
    name,
    phone,
    email,
  };
  return request({
    url: "/user/update",
    method: "put",
    data: data,
  });
}

// 提交科研信息
export function submitResearch(type, content, material) {
  const data = {
    type,
    content,
    material,
  };
  return request({
    url: "/sci/add",
    method: "post",
    data: data,
  });
}

// 查看科研情况
export function viewSci() {
  return request({
    url: "/sci/viewSubmitted",
    method: "post",
  });
}

// 删除科研记录
export function deleteRsch(id) {
  const data = {
    id,
  };
  return request({
    url: "/sci/delete",
    method: "post",
    data: data,
  });
}

// 修改科研记录
export function modifyRsch(id, type, content, material) {
  const data = {
    id,
    type,
    content,
    material,
  };
  return request({
    url: "/sci/modify",
    method: "post",
    data: data,
  });
}

// 提交社会实践记录
export function submitSocial(time, content, material) {
  const data = {
    time,
    content,
    material,
  };
  return request({
    url: "/social/add",
    method: "post",
    data: data,
  });
}

// 查看社会实践记录
export function viewSocial() {
  return request({
    url: "/social/viewSubmitted",
    method: "post",
  });
}

// 删除社会实践记录
export function deleteSocial(id) {
  const data = {
    id,
  };
  return request({
    url: "/social/delete",
    method: "post",
    data: data,
  });
}

// 修改社会实践记录
export function modifySocial(id, time, content, material) {
  const data = {
    id,
    time,
    content,
    material,
  };
  return request({
    url: "/social/modify",
    method: "post",
    data: data,
  });
}

// 提交骨干服务
export function submitServePosition(time, content, material) {
  const data = {
    time,
    content,
    material,
  };
  return request({
    url: "/servePosition/add",
    method: "post",
    data: data,
  });
}

// 查看已提交的骨干服务信息
export function viewServePosition() {
  return request({
    url: "/servePosition/viewSubmitted",
    method: "post",
  });
}

// 删除骨干服务记录
export function deleteServePosition(id) {
  const data = {
    id,
  };
  return request({
    url: "/servePosition/delete",
    method: "post",
    data: data,
  });
}

// 修改骨干服务记录
export function modifyServePosition(id, time, content, material) {
  const data = {
    id,
    time,
    content,
    material,
  };
  return request({
    url: "/servePosition/modify",
    method: "post",
    data: data,
  });
}

// 提交骨干服务评委打分
export function submitOrgScore(stuNo, name, isAssess, orgScore) {
  const data = {
    stuNo,
    name,
    isAssess,
    orgScore,
  };
  return request({
    url: "/servePosition/submitScore",
    method: "post",
    data: data,
  });
}

//********科研经历评分部分*****开始********

// 查看科研经历分数
export function viewSciStuInfo() {
  return request({
    url: "/sci/viewScoreInfo",
    method: "post",
  });
}

// 老师查看科研经历记录
export function viewSciRecordList(stuNo, name, isAssess, sciScore) {
  const data = {
    stuNo,
    name,
    isAssess,
    sciScore,
  };
  return request({
    url: "/sci/viewSubmittedT",
    method: "post",
    data: data,
  });
}

// 提交科研经历评委打分
export function submitSciScore(stuNo, name, isAssess, sciScore) {
  const data = {
    stuNo,
    name,
    isAssess,
    sciScore,
  };
  return request({
    url: "/sci/submitScore",
    method: "post",
    data: data,
  });
}
//********科研经历评分部分*****结束********

//----------------个人总结---------------------
// 提交
export function submitStatement(type, content) {
  const data = {
    type,
    content,
  };
  return request({
    url: "/sta/add",
    method: "post",
    data: data,
  });
}

// 查看
export function viewSta() {
  return request({
    url: "/sta/viewSubmitted",
    method: "post",
  });
}

// 删除
export function deleteSta(id) {
  const data = {
    id,
  };
  return request({
    url: "/sta/delete",
    method: "post",
    data: data,
  });
}

// 修改
export function modifySta(id, type, content) {
  const data = {
    id,
    type,
    content,
  };
  return request({
    url: "/sta/modify",
    method: "post",
    data: data,
  });
}
//----------结束------------

//---------个人总结评分----------------

// 查看分数
export function viewStuSumScore() {
  return request({
    url: "/sta/viewStuScore",
    method: "post",
  });
}

export function viewStatementT(stuNo, name, isAssess, sumScore) {
  //老师查看学生提交的个人总结信息
  const data = {
    stuNo,
    name,
    isAssess,
    sumScore,
  };
  return request({
    url: "/sta/viewSubmittedT",
    method: "post",
    data: data,
  });
}

// 提交个人总结评委打分
export function submitSumScore(stuNo, name, isAssess, sumScore) {
  const data = {
    stuNo,
    name,
    isAssess,
    sumScore,
  };
  return request({
    url: "/sta/submitScore",
    method: "post",
    data: data,
  });
}
//---------------结束-------------

//提交社会实践评委打分
export function submitSPScore(stuNo, name, isAssess, socialScore) {
  const data = {
    stuNo,
    name,
    isAssess,
    socialScore,
  };
  return request({
    url: "/social/submitSPSScore",
    method: "post",
    data: data,
  });
}

// 查看学生骨干服务分数
export function viewStuOrgScore() {
  return request({
    url: "/servePosition/viewStuScore",
    method: "post",
  });
}

// 查看学生提交的骨干服务信息
export function viewServePositionT(stuNo, name, isAssess, orgScore) {
  //老师查看学生提交的骨干服务信息
  const data = {
    stuNo,
    name,
    isAssess,
    orgScore,
  };
  return request({
    url: "/servePosition/viewSubmittedT",
    method: "post",
    data: data,
  });
}

// 查看某一个学生的社会实践分数
export function viewStuSocialScore() {
  return request({
    url: "/social/viewStuScore",
    method: "post",
  });
}

// 老师查看社会实践记录
export function viewSocialT(stuNo, name, isAssess, socialScore) {
  const data = {
    stuNo,
    name,
    isAssess,
    socialScore,
  };
  return request({
    url: "/social/viewSubmittedT",
    method: "post",
    data: data,
  });
}

// 获取学生成绩汇总数据
export function getStuInfo() {
  return request({
    url: "/studentInfo/getList",
    method: "get",
  });
}

//修改评分规则
export function changeWeights(
  gpa,
  gpaLimit,
  volun,
  volunLimit,
  sci,
  sciLimit,
  org,
  orgLimit,
  social,
  socialLimit,
  sum,
  sumLimit
) {
  const data = {
    gpa,
    volun,
    sci,
    org,
    social,
    sum,
    gpaLimit,
    volunLimit,
    sciLimit,
    orgLimit,
    socialLimit,
    sumLimit,
  };
  return request({
    url: "/rules/change",
    method: "post",
    data: data,
  });
}

// 获取评分规则
export function getRules() {
  return request({
    url: "/rules/get",
    method: "post",
  });
}
// 获取学生信息
export function getStudentInfo() {
  return request({
    url: "/info/get",
    method: "get",
  });
}

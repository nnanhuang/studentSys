import { getMenu } from '../api/dynamicRBAC.js'; // 导入获取菜单数据的函数

export async function fetchMenu() {
  try {
    const response = await getMenu(); // 调用获取菜单数据的函数
    console.log(response.data);
    items.splice(0, items.length, ...response.data); // 使用响应数据更新items数组
    console.log(items);
    // 更新侧边栏菜单项
    sidebar.setItems(items);
  } catch (error) {
    console.error('Failed to fetch menu:', error);
  }
}

import { defineStore } from 'pinia';
import { reactive } from 'vue';

export const useSidebarStore = defineStore('sidebar', {
	state: () => {
		return {
			collapse: false,
		};
	},
	getters: {},
	actions: {
		handleCollapse() {
			this.collapse = !this.collapse;
		},
	}
});

//items: [] // 添加一个items属性用于存储菜单项
			//items: reactive([]), // 将 items 定义为响应式对象
//setItems(items) { // 添加setItems方法用于更新菜单项
		//	this.items = items;
		//  },
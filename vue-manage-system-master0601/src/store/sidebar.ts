import { defineStore } from 'pinia';

export const useSidebarStore = defineStore('sidebar', {
	state: () => {
		return {
			collapse: false,
			items: [] // 添加一个items属性用于存储菜单项
		};
	},
	getters: {},
	actions: {
		handleCollapse() {
			this.collapse = !this.collapse;
		},
		setItems(items) { // 添加setItems方法用于更新菜单项
			this.items = items;
		  }
	}
});

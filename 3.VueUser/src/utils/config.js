const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
			menuList:[
				{
					name: '座位信息管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'自习室信息',
							url:'/index/zixishixinxiList'
						},
					]
				},
				{
					name: '留言板管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'留言板',
							url:'/index/messagesList'
						},
					]
				},
				{
					name: '公告管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'公告',
							url:'/index/gonggaoList'
						},
					]
				},
			]
        }
    },
    getProjectName(){
        return {
            projectName: "自习室系统"
        } 
    }
}
export default config

	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import yuyuezixishi from '@/views/yuyuezixishi/list'
	import yonghu from '@/views/yonghu/list'
	import zixishixinxi from '@/views/zixishixinxi/list'
	import messages from '@/views/messages/list'
	import config from '@/views/config/list'
	import gonggao from '@/views/gonggao/list'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/yuyuezixishi',
			name: '预约自习室',
			component: yuyuezixishi
		}
		,{
			path: '/yonghu',
			name: '用户',
			component: yonghu
		}
		,{
			path: '/zixishixinxi',
			name: '自习室信息',
			component: zixishixinxi
		}
		,{
			path: '/messages',
			name: '留言板',
			component: messages
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		,{
			path: '/gonggao',
			name: '公告',
			component: gonggao
		}
		]
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router

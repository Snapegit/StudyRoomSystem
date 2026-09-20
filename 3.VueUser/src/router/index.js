import { createRouter, createWebHashHistory } from 'vue-router'
import index from '../views'
import home from '../views/pages/home.vue'
import login from '../views/pages/login.vue'
import yonghuList from '@/views/pages/yonghu/list'
import yonghuDetail from '@/views/pages/yonghu/formModel'
import yonghuAdd from '@/views/pages/yonghu/formAdd'
import yonghuRegister from '@/views/pages/yonghu/register'
import yonghuCenter from '@/views/pages/yonghu/center'
import zixishixinxiList from '@/views/pages/zixishixinxi/list'
import zixishixinxiDetail from '@/views/pages/zixishixinxi/formModel'
import zixishixinxiAdd from '@/views/pages/zixishixinxi/formAdd'
import messagesList from '@/views/pages/messages/list'
import gonggaoList from '@/views/pages/gonggao/list'
import gonggaoDetail from '@/views/pages/gonggao/formModel'
import gonggaoAdd from '@/views/pages/gonggao/formAdd'
import yuyuezixishiList from '@/views/pages/yuyuezixishi/list'
import yuyuezixishiDetail from '@/views/pages/yuyuezixishi/formModel'
import yuyuezixishiAdd from '@/views/pages/yuyuezixishi/formAdd'

const routes = [{
		path: '/',
		redirect: '/index/home'
	},
	{
		path: '/index',
		component: index,
		children: [{
			path: 'home',
			component: home
		}
		, {
			path: 'yonghuList',
			component: yonghuList
		}, {
			path: 'yonghuDetail',
			component: yonghuDetail
		}, {
			path: 'yonghuAdd',
			component: yonghuAdd
		}
		, {
			path: 'yonghuCenter',
			component: yonghuCenter
		}
		, {
			path: 'zixishixinxiList',
			component: zixishixinxiList
		}, {
			path: 'zixishixinxiDetail',
			component: zixishixinxiDetail
		}, {
			path: 'zixishixinxiAdd',
			component: zixishixinxiAdd
		}
		, {
			path: 'messagesList',
			component: messagesList
		}
		, {
			path: 'gonggaoList',
			component: gonggaoList
		}, {
			path: 'gonggaoDetail',
			component: gonggaoDetail
		}, {
			path: 'gonggaoAdd',
			component: gonggaoAdd
		}
		, {
			path: 'yuyuezixishiList',
			component: yuyuezixishiList
		}, {
			path: 'yuyuezixishiDetail',
			component: yuyuezixishiDetail
		}, {
			path: 'yuyuezixishiAdd',
			component: yuyuezixishiAdd
		}
		]
	},
	{
		path: '/login',
		component: login
	}
	,{
		path: '/yonghuRegister',
		component: yonghuRegister
	}
]

const router = createRouter({
  history: createWebHashHistory(process.env.BASE_URL),
  routes
})

export default router

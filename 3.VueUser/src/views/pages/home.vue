<template>
	<div>
		<div class="home_box">
			<!-- 自习室信息首页展示 -->
			<div class="homeList_view">
				<div class="homeList_title">自习室信息展示</div>
				<div class="home_list_five">
					<div v-for="(item,index) in zixishixinxiHomeList" :class="'home_list_five_item' + (Number(index) + 1)" @click="detailClick('zixishixinxi',item.id)">
						<div class="img_box">
							<img class="home_img" v-if="isHttp(item.zixishitupian)" :src="item.zixishitupian.split(',')[0]" alt="">
							<img class="home_img" v-else :src="item.zixishitupian?$config.url + item.zixishitupian.split(',')[0]:''" alt="">
						</div>
						<div class="homeList_content">
							<div class="homeList_title1">
								{{item.zixishimingcheng}}
							</div>
						</div>
					</div>
				</div>
				<div class="homeList_more_view" @click="moreClick('zixishixinxi')">
					<span class="homeList_more_text">查看更多</span>
				</div>
			</div>
		</div>
	</div>
</template>

<script setup>
	import {
		ref,
		getCurrentInstance
	} from 'vue';
	import {
		useRouter
	} from 'vue-router';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const router = useRouter()
	//自习室信息首页展示
	const zixishixinxiHomeList = ref([])
	const getzixishixinxiHomeList = () => {
		context?.$http({
			url: 'zixishixinxi/list',
			method: 'get',
			params: {
				page: 1,
				limit: 6
			}
		}).then(res => {
			zixishixinxiHomeList.value = res.data.data.list
		})
	}
	//判断图片链接是否带http
	const isHttp = (str) => {
        return str && str.substr(0,4)=='http';
    }
	//跳转详情
	const detailClick = (table,id) => {
		router.push(`/index/${table}Detail?id=${id}`)
	}
	const moreClick = (table) => {
		router.push(`/index/${table}List`)
	}
	const init = () => {
		//自习室信息首页展示
		getzixishixinxiHomeList()
	}
	init()
</script>

<style lang="scss">
	.home_box {
		border-radius: 4px;
		padding: 0px;
		margin: 0 auto;
		background: none;
		display: flex;
		width: 100%;
		justify-content: space-between;
		align-items: flex-start;
		flex-wrap: wrap;
	}
	
	// 推荐
	.recomList_view {
		padding: 40px calc((100% - 1200px)/2) 60px;
		margin: 0px auto 0;
		background: #fff;
		width: 100%;
		position: relative;
		order: 0;
		.recomList_title {
			padding: 0 0 0 16px;
			margin: 0;
			color: #333;
			background: url(http://clfile.zggen.cn/20240422/4a00db5052144a458000239dd37beb14.png) repeat-x center bottom;
			font-weight: 600;
			width: 100%;
			font-size: 20px;
			border-color: #666;
			border-width: 0 0 0px;
			line-height: 60px;
			border-style: solid;
			text-align: left;
		}
		// list
		.recommend_list_two {
			padding: 0 20px;
			margin: 30px 0 0;
			display: flex;
			width: 100%;
			flex-wrap: wrap;
			.recommend_item {
				cursor: pointer;
				margin: 0;
				background: none;
				width: 100%;
				.recommend_img_box {
					margin: 0 0 6px;
					width: 100%;
					height: 200px;
					.recommend_img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.recommend_content {
					.recommend_title {
						overflow: hidden;
						color: #333;
						white-space: nowrap;
						background: none;
						font-weight: 500;
						width: 100%;
						font-size: 14px;
						line-height: 24px;
						text-overflow: ellipsis;
						text-align: left;
					}
					.recommend_price {
						color: #c00;
						font-weight: 500;
						width: 100%;
						font-size: 14px;
						line-height: 1;
						text-align: right;
					}
				}
			}
		}
		// list
		// animation
		.animation_box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		.animation_box img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box img:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		// animation
		// 更多
		.recommend_more_view {
			cursor: pointer;
			border: 0px solid #ddd;
			padding: 0;
			margin: 0;
			color: #333;
			line-height: 38px;
			right: calc((100% - 1200px)/2 + 20px);
			border-radius: 0px;
			top: 50px;
			background: none;
			width: 89px;
			position: absolute;
			text-align: right;
			height: 38px;
			.recommend_more_text {
				color: #666;
			}
			.el-icon {
				color: #666;
			}
		}
	}
	// 推荐
	// 新闻资讯
	.newsList_view {
		padding: 40px calc((100% - 1200px)/2)  60px;
		margin: 0 auto;
		background: url(http://clfile.zggen.cn/20240313/4f653787cb5d42f9b3bc30c0fcd53fee.gif),#f3f8f4;
		width: calc(100% - 0px);
		border-color: #ddd;
		border-width: 1px 0;
		position: relative;
		border-style: solid;
		order: 3;
		height: auto;

		.newsList_title {
			padding: 0 0 0 16px;
			margin: 0 auto 20px;
			color: #333;
			background: url(http://clfile.zggen.cn/20240422/4a00db5052144a458000239dd37beb14.png) repeat-x center bottom;
			font-weight: 600;
			width: 100%;
			font-size: 20px;
			border-color: #666;
			border-width:  0 0 0px;
			line-height: 60px;
			border-style: solid;
			text-align: left;
		}
		// list
		.news_list_four {
			padding: 0;
			margin: 40px 0 0;
			display: flex;
			width: 100%;
			justify-content: space-between;
			.news_left {
				flex-direction: column;
				display: flex;
				width: 50%;
				justify-content: space-between;
				align-items: flex-start;
				order: 2;
				.four_left_item{
					border: 0px dotted rgba(136, 179, 1,.5);
					cursor: pointer;
					border-radius: 8px;
					padding: 10px 20px 10px;
					margin: 0 0 20px;
					background: rgba(255,255,255,.3);
					display: flex;
					width: 100%;
					align-items: center;
					.time_box {
						border-radius: 4px;
						padding: 10px;
						background: linear-gradient(270deg, rgba(206,236,255,1) 0%, rgba(135,206,250,1) 100%);
						display: flex;
						width: 120px;
						align-items: flex-start;
						flex-wrap: wrap;
						.year{
							padding: 6px 0 0;
							color: #666;
							width: 100%;
							line-height: 1;
							text-align: center;
						}
						.date{
							color: #555;
							font-weight: bold;
							width: 100%;
							font-size: 24px;
							line-height: 1;
							text-align: center;
						}
					}
				}
				.content{
					margin: 0 0 0 10px;
					width: calc(100% - 130px);
					.news_title{
						overflow: hidden;
						white-space: nowrap;
						font-weight: bold;
						width: 100%;
						text-overflow: ellipsis;
					}
					.news_text{
						padding: 0;
						overflow: hidden;
						display: -webkit-box;
						line-height: 24px;
						text-overflow: ellipsis;
						-webkit-box-orient: vertical;
						-webkit-line-clamp: 2;
						height: 48px;
					}
				}
				
			}
			.news_right {
				margin: 0 20px 0 0;
				width: calc(50% - 20px);
				.four_right_item {
					cursor: pointer;
					margin: 0 0 0px;
					.img_box {
					width: 100%;
					font-size: 0;
					height: 480px;
						.news_img {
					border-radius: 8px;
					object-fit: cover;
					width: 100%;
					height: 100%;
						}
					}
					.content {
						width: 100%;
						text-align: center;
						.news_title {
							overflow: hidden;
							white-space: nowrap;
							width: 100%;
							font-size: 14px;
							line-height: 30px;
							text-overflow: ellipsis;
						}
					}
				}
			}
		}
		// list
		// animation
		.animation_box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(10px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		.animation_box img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box img:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		// animation
		// 更多
		.news_more_view {
			cursor: pointer;
			border: 0px solid #ddd;
			padding: 0px 0;
			margin: 0;
			color: #5d8e00;
			line-height: 38px;
			right: calc((100% - 1200px)/2 + 20px);
			border-radius: 0px;
			top: 50px;
			background: none;
			width: 89px;
			position: absolute;
			text-align: right;
			height: 38px;
			.news_more_text {
				color: #666;
			}
			.el-icon {
				color: #666;
			}
		}
	}
	// 新闻资讯
	// 首页展示
	.homeList_view {
		padding: 40px calc((100% - 1200px)/2) 0px;
		margin: 0;
		background: #fff;
		width: 100%;
		position: relative;
		order: 2;

		.homeList_title {
			padding: 0 0 0 16px;
			margin: 0 0 30px;
			color: #333;
			background: url(http://clfile.zggen.cn/20240422/4a00db5052144a458000239dd37beb14.png) repeat-x center bottom;
			font-weight: 600;
			width: 100%;
			font-size: 24px;
			border-color: #666;
			border-width: 0 0 0px;
			line-height: 60px;
			border-style: solid;
			text-align: left;
		}
		// list
		.home_list_five {
			display: flex;
			width: 100%;
			align-items: flex-start;
			flex-wrap: wrap;
			.home_list_five_item1 {
				padding: 10px;
				margin: 0 10px 10px;
				background: #fff;
				width: calc(25% - 20px);
				.img_box {
					object-fit: cover;
					width: 100%;
					height: 360px;
					.home_img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.homeList_content {
					padding: 10px;
					background: none;
					display: flex;
					flex-wrap: wrap;
					.homeList_title1 {
						width: 100%;
						text-align: center;
					}
					.homeList_title2 {
						width: 100%;
						text-align: center;
					}
					.homeList_title3 {
						width: 100%;
						text-align: center;
					}
					.homeList_title4 {
						width: 100%;
						text-align: center;
					}
					.homeList_title5 {
						width: 100%;
						text-align: center;
					}
				}
			}
			.home_list_five_item1:hover {
				cursor: pointer;
				padding: 10px;
				background: linear-gradient(270deg, rgba(206,236,255,1) 0%, rgba(135,206,250,1) 100%);
				transition: all 0s;
				.img_box {
					.home_img {
					}
				}
				.homeList_content {
					color: #fff;
					width: 100%;
					height: 100%;
					.homeList_title1 {
						color: inherit;
					}
					.homeList_title2 {
						color: inherit;
					}
					.homeList_title3 {
						color: inherit;
					}
					.homeList_title4 {
						color: inherit;
					}
					.homeList_title5 {
						color: inherit;
					}
				}
			}
			.home_list_five_item2 {
				padding: 10px;
				margin: 0 10px 10px;
				background: #fff;
				width: calc(50% - 20px);
				.img_box {
					object-fit: cover;
					width: 100%;
					height: 360px;
					.home_img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.homeList_content {
					padding: 10px;
					background: none;
					display: flex;
					flex-wrap: wrap;
					.homeList_title1 {
						width: 100%;
						text-align: center;
					}
					.homeList_title2 {
						width: 100%;
						text-align: center;
					}
					.homeList_title3 {
						width: 100%;
						text-align: center;
					}
					.homeList_title4 {
						width: 100%;
						text-align: center;
					}
					.homeList_title5 {
						width: 100%;
						text-align: center;
					}
				}
			}
			.home_list_five_item2:hover {
				cursor: pointer;
				padding: 10px;
				background: linear-gradient(270deg, rgba(206,236,255,1) 0%, rgba(135,206,250,1) 100%);
				transition: all 0s;
				.img_box {
					.home_img {
					}
				}
				.homeList_content {
					color: #fff;
					width: 100%;
					height: 100%;
					.homeList_title1 {
						color: inherit;
					}
					.homeList_title2 {
						color: inherit;
					}
					.homeList_title3 {
						color: inherit;
					}
					.homeList_title4 {
						color: inherit;
					}
					.homeList_title5 {
						color: inherit;
					}
				}
			}
			.home_list_five_item3 {
				padding: 10px;
				margin: 0 10px 10px;
				background: #fff;
				width: calc(25% - 20px);
				.img_box {
					object-fit: cover;
					width: 100%;
					height: 360px;
					.home_img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.homeList_content {
					padding: 10px;
					background: none;
					display: flex;
					flex-wrap: wrap;
					.homeList_title1 {
						width: 100%;
						text-align: center;
					}
					.homeList_title2 {
						width: 100%;
						text-align: center;
					}
					.homeList_title3 {
						width: 100%;
						text-align: center;
					}
					.homeList_title4 {
						width: 100%;
						text-align: center;
					}
					.homeList_title5 {
						width: 100%;
						text-align: center;
					}
				}
			}
			.home_list_five_item3:hover {
				cursor: pointer;
				padding: 10px;
				background: linear-gradient(270deg, rgba(206,236,255,1) 0%, rgba(135,206,250,1) 100%);
				transition: all 0s;
				.img_box {
					.home_img {
					}
				}
				.homeList_content {
					color: #fff;
					width: 100%;
					height: 100%;
					.homeList_title1 {
						color: inherit;
					}
					.homeList_title2 {
						color: inherit;
					}
					.homeList_title3 {
						color: inherit;
					}
					.homeList_title4 {
						color: inherit;
					}
					.homeList_title5 {
						color: inherit;
					}
				}
			}
			.home_list_five_item4 {
				padding: 10px;
				margin: 0 10px 10px;
				background: #fff;
				width: calc(25% - 20px);
				.img_box {
					object-fit: cover;
					width: 100%;
					height: 360px;
					.home_img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.homeList_content {
					padding: 10px;
					background: none;
					display: flex;
					flex-wrap: wrap;
					.homeList_title1 {
						width: 100%;
						text-align: center;
					}
					.homeList_title2 {
						width: 100%;
						text-align: center;
					}
					.homeList_title3 {
						width: 100%;
						text-align: center;
					}
					.homeList_title4 {
						width: 100%;
						text-align: center;
					}
					.homeList_title5 {
						width: 100%;
						text-align: center;
					}
				}
			}
			.home_list_five_item4:hover {
				cursor: pointer;
				padding: 10px;
				background: linear-gradient(270deg, rgba(206,236,255,1) 0%, rgba(135,206,250,1) 100%);
				transition: all 0s;
				.img_box {
					.home_img {
					}
				}
				.homeList_content {
					color: #fff;
					width: 100%;
					height: 100%;
					.homeList_title1 {
						color: inherit;
					}
					.homeList_title2 {
						color: inherit;
					}
					.homeList_title3 {
						color: inherit;
					}
					.homeList_title4 {
						color: inherit;
					}
					.homeList_title5 {
						color: inherit;
					}
				}
			}
			.home_list_five_item5 {
				padding: 10px;
				margin: 0 10px 10px;
				background: #fff;
				width: calc(50% - 20px);
				.img_box {
					object-fit: cover;
					width: 100%;
					height: 360px;
					.home_img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.homeList_content {
					padding: 10px;
					background: none;
					display: flex;
					flex-wrap: wrap;
					.homeList_title1 {
						width: 100%;
						text-align: center;
					}
					.homeList_title2 {
						width: 100%;
						text-align: center;
					}
					.homeList_title3 {
						width: 100%;
						text-align: center;
					}
					.homeList_title4 {
						width: 100%;
						text-align: center;
					}
					.homeList_title5 {
						width: 100%;
						text-align: center;
					}
				}
			}
			.home_list_five_item5:hover {
				cursor: pointer;
				padding: 10px;
				background: linear-gradient(270deg, rgba(206,236,255,1) 0%, rgba(135,206,250,1) 100%);
				transition: all 0s;
				.img_box {
					.home_img {
					}
				}
				.homeList_content {
					color: #fff;
					width: 100%;
					height: 100%;
					.homeList_title1 {
						color: inherit;
					}
					.homeList_title2 {
						color: inherit;
					}
					.homeList_title3 {
						color: inherit;
					}
					.homeList_title4 {
						color: inherit;
					}
					.homeList_title5 {
						color: inherit;
					}
				}
			}
			.home_list_five_item6 {
				padding: 10px;
				margin: 0 10px 10px;
				background: #fff;
				width: calc(25% - 20px);
				.img_box {
					object-fit: cover;
					width: 100%;
					height: 360px;
					.home_img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.homeList_content {
					padding: 10px;
					background: none;
					display: flex;
					flex-wrap: wrap;
					.homeList_title1 {
						width: 100%;
						text-align: center;
					}
					.homeList_title2 {
						width: 100%;
						text-align: center;
					}
					.homeList_title3 {
						width: 100%;
						text-align: center;
					}
					.homeList_title4 {
						width: 100%;
						text-align: center;
					}
					.homeList_title5 {
						width: 100%;
						text-align: center;
					}
				}
			}
			.home_list_five_item6:hover {
				cursor: pointer;
				padding: 10px;
				background: linear-gradient(270deg, rgba(206,236,255,1) 0%, rgba(135,206,250,1) 100%);
				transition: all 0s;
				.img_box {
					.home_img {
					}
				}
				.homeList_content {
					color: #fff;
					width: 100%;
					height: 100%;
					.homeList_title1 {
						color: inherit;
					}
					.homeList_title2 {
						color: inherit;
					}
					.homeList_title3 {
						color: inherit;
					}
					.homeList_title4 {
						color: inherit;
					}
					.homeList_title5 {
						color: inherit;
					}
				}
			}
			.home_list_five_item7 {
				padding: 0px;
				margin: 0 5px 10px;
				background: #fff;
				display: none;
				width: calc(25% - 10px);
				.img_box {
					object-fit: cover;
					width: 100%;
					height: 360px;
					.home_img {
						box-shadow: 0px 16px 16px -16px #000;
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.homeList_content {
					padding: 10px;
					background: none;
					display: flex;
					flex-wrap: wrap;
					.homeList_title1 {
						width: 100%;
						text-align: center;
					}
					.homeList_title2 {
						width: 100%;
						text-align: center;
					}
					.homeList_title3 {
						width: 100%;
						text-align: center;
					}
					.homeList_title4 {
						width: 100%;
						text-align: center;
					}
					.homeList_title5 {
						width: 100%;
						text-align: center;
					}
				}
			}
			.home_list_five_item7:hover {
				cursor: pointer;
				padding: 10px;
				background: linear-gradient(270deg, rgba(206,236,255,1) 0%, rgba(135,206,250,1) 100%);
				transition: all 0s;
				.img_box {
					.home_img {
					}
				}
				.homeList_content {
					color: #fff;
					width: 100%;
					height: 100%;
					.homeList_title1 {
						color: inherit;
					}
					.homeList_title2 {
						color: inherit;
					}
					.homeList_title3 {
						color: inherit;
					}
					.homeList_title4 {
						color: inherit;
					}
					.homeList_title5 {
						color: inherit;
					}
				}
			}
			.home_list_five_item8 {
				padding: 0px;
				margin: 0 5px 10px;
				background: none;
				display: none;
				width: calc(25% - 10px);
				.img_box {
					object-fit: cover;
					width: 100%;
					height: 360px;
					.home_img {
						box-shadow: 0px 16px 16px -16px #000;
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.homeList_content {
					padding: 10px;
					background: none;
					display: flex;
					flex-wrap: wrap;
					.homeList_title1 {
						width: 100%;
						text-align: center;
					}
					.homeList_title2 {
						width: 100%;
						text-align: center;
					}
					.homeList_title3 {
						width: 100%;
						text-align: center;
					}
					.homeList_title4 {
						width: 100%;
						text-align: center;
					}
					.homeList_title5 {
						width: 100%;
						text-align: center;
					}
				}
			}
			.home_list_five_item8:hover {
				cursor: pointer;
				padding: 10px;
				background: linear-gradient(270deg, rgba(206,236,255,1) 0%, rgba(135,206,250,1) 100%);
				transition: all 0s;
				.img_box {
					.home_img {
					}
				}
				.homeList_content {
					color: #fff;
					width: 100%;
					height: 100%;
					.homeList_title1 {
						color: inherit;
					}
					.homeList_title2 {
						color: inherit;
					}
					.homeList_title3 {
						color: inherit;
					}
					.homeList_title4 {
						color: inherit;
					}
					.homeList_title5 {
						color: inherit;
					}
				}
			}
		}
		// list
		// animation
		.animation_box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		.animation_box img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box img:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		// animation
		// 更多
		.homeList_more_view {
			cursor: pointer;
			border: 0px solid #ddd;
			padding: 0;
			margin: 0;
			z-index: 9;
			color: #fff;
			line-height: 38px;
			right: calc((100% - 1200px)/2 + 20px);
			border-radius: 0px;
			top: 50px;
			background: none;
			width: 89px;
			position: absolute;
			text-align: right;
			height: 38px;
			.homeList_more_text {
				color: #666;
			}
		}
	}
	// 首页展示
</style>
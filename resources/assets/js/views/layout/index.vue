<style lang="scss" rel="stylesheet/scss">
  @import 'main.scss';
</style>
<template>
  <div class="main">
    
    <!-- sidebar start -->
    <div class="sidebar-menu-con" :style="{width: '250px', overflow: 'auto'}">
      <shrinkable-menu
        :open-names="openedSubmenuArr"
        :menu-list="menuList">
      </shrinkable-menu>
    </div>
    <!-- sidebar end -->
    
    <!-- header start -->
    <div class="main-header-con">
      <div class="main-header">
        <div class="header-middle-con">
          <div class="main-breadcrumb">
            <img src="../../images/xixian.png" width="30px" style="vertical-align:middle;margin-top: -5px;"/>
            <span>沣西集团人力资源管理系统</span>
          </div>
        </div>
        <div class="header-avator-con">
          <!-- -->
          <Badge dot style="top: 20px;left: 110px;color: #fff">
            <a href="/#/sys-manage/notify">
              <Icon type="ios-notifications" size="20" color="#fff"></Icon>
            </a>
          </Badge>
          <!--dropdown start -->
          <div class="user-dropdown-menu-con">
            <Row type="flex" justify="end" align="middle" class="user-dropdown-innercon">
              <Dropdown transfer trigger="click" @on-click="clickDropdown">
                <a href="javascript:void(0)">
                  <span class="main-user-name" key="main-user-name">{{ userName }}</span>
                  <Icon type="arrow-down-b"></Icon>
                </a>
                <DropdownMenu slot="list">
                  <DropdownItem name="userCenter">个人中心</DropdownItem>
                  <DropdownItem name="logout" divided>退出登录</DropdownItem>
                </DropdownMenu>
              </Dropdown>
              <Avatar src="/images/avatar.png" style="margin-left: 10px;"></Avatar>
            </Row>
          </div>
          <!-- dropdown end -->
        </div>
      </div>
      <div class="tags-con">
        <tags-page-opened></tags-page-opened>
      </div>
    </div>
    <!-- header end -->
    
    <!-- router-view start -->
    <div class="single-page-con" :style="{left: '250px'}">
      <div class="single-page">
        <keep-alive :include="cachePage">
          <router-view></router-view>
        </keep-alive>
      </div>
      <!--      <Footer class="layout-footer-center">-->
      <!--        <p>版权所有：陕西微软创新中心有限公司 陕ICP备15012717号</p>-->
      <!--        <p>地址：陕西省西咸新区沣西新城康定路与兴咸路十字西南角（西部云谷B3楼5层）</p>-->
      <!--        <p>E-mail：mic@micshaanxi.com 邮编：712000 电话：（029）38020667</p>-->
      <!--      </Footer>-->
    </div>
    <!-- router-view end -->
    <!-- layout footer -->
  </div>
</template>
<script>
  import shrinkableMenu from './components/shrinkable-menu/shrinkable-menu.vue';
  import tagsPageOpened from './components/tags-page-opened.vue';
  import breadcrumbNav from './components/breadcrumb-nav.vue';
  import messageTip from './components/message-tip.vue';
  import util from '../../libs/util.js';
  import {getRouter} from '../../api/system';
  import layout from '../../views/layout';
  import {logout} from "../../api/login";

  export default {
    components: {
      shrinkableMenu,
      tagsPageOpened,
      breadcrumbNav,
      messageTip
    },
    data() {
      return {
        menus: [],
        userName: '',
        openedSubmenuArr: this.$store.state.app.openedSubmenuArr
      };
    },
    computed: {
      menuList() {
        return this.menus;
      },
      pageTagsList() {
        return this.$store.state.app.pageOpenedList; // 打开的页面的页面对象
      },
      currentPath() {
        return this.$store.state.app.currentPath; // 当前面包屑数组
      },
      cachePage() {
        return this.$store.state.app.cachePage;
      },
      lang() {
        return this.$store.state.app.lang;
      },
      mesCount() {
        return this.$store.state.app.messageCount;
      }
    },
    methods: {
      init() {
        // if (!this.getObjArr('router')) {
        getRouter().then(data => {
          this.menus = this.filterAsyncRouter(data.result);
          // this.saveObjArr('router', this.menus); //存储路由到localStorage
        });
        // } else {//从localStorage拿到了路由
        //   this.menus = this.getObjArr('router');//拿到路由
        // }
        this.userName = this.$store.getters.user.name;

        let messageCount = 3;
        this.messageCount = messageCount.toString();
      },
      getObjArr(name) { //localStorage 获取数组对象的方法
        return JSON.parse(window.localStorage.getItem(name));
      },
      saveObjArr(name, data) { //localStorage 存储数组对象的方法
        localStorage.setItem(name, JSON.stringify(data))
      },
      toggleClick() {
        this.shrink = !this.shrink;
      },
      clickDropdown(name) {
        if (name === 'userCenter') {
          // 用户中心
          // util.openNewPage(this, 'home');
          this.$router.push({
            name: 'profile'
          });
        } else if (name === 'logout') {
          // 退出登录
          // this.$store.commit("logout", this);
          // this.$store.commit("clearOpenedSubmenu");
          // 强制刷新页面 重新加载router
          // location.reload();
          // console.log(this)
          logout().then(res => {
            if (res.result === true) {
              location.reload();
              // this.$store.dispatch('logout').then(() => this.$router.push('/login'));
            }
          });
          // this.$store.dispatch('logout').then(() => this.$router.push('login'));
          // //this.$store.commit('clearOpenedSubmenu');
        }
      },
      filterAsyncRouter(asyncRouterMap) { //遍历后台传来的路由字符串，转换为组件对象
        return asyncRouterMap.filter(route => {
          if (route.component) {
            if (route.component === 'layout') { //Layout组件特殊处理
              route.component = layout;
            } else {
              route.component = require('@/' + route.component + '.vue');
            }
          }
          if (route.children && route.children.length) {
            route.children = this.filterAsyncRouter(route.children)
          }
          return true;
        });
      },
      checkTag(name) {
        let openpageHasTag = this.pageTagsList.some(item => {
          if (item.name === name) {
            return true;
          }
        });
        if (!openpageHasTag) { //  解决关闭当前标签后再点击回退按钮会退到当前页时没有标签的问题
          util.openNewPage(this, name, this.$route.params || {}, this.$route.query || {});
        }
      }
    },
    mounted() {
      this.init();
    }
  };
</script>

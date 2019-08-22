<style lang="scss" rel="stylesheet/scss">
  @import 'main.scss';
</style>
<template>
  <div class="main">    
    <!-- header start -->
    <div class="main-header-con">
      <div class="main-header" style="background: #fff;">
        <div class="header-middle-con">
          <div class="main-breadcrumb">
            <img src="../../images/xixian.png" width="30px" style="vertical-align:middle;margin-top: -5px;"/>
            <span style="color:#515a6e">沣西现代企业管理平台</span>
          </div>
        </div>
        <div class="header-avator-con">
          <!-- -->
          <Badge dot style="top: 20px;left: 110px;color: #fff">
            <a href="/#/sys-manage/notify">
              <Icon type="ios-notifications" size="20" color="#515a6e"></Icon>
            </a>
          </Badge>
          <!--dropdown start -->
          <div class="user-dropdown-menu-con">
            <Row type="flex" justify="end" align="middle" class="user-dropdown-innercon">
              <Dropdown transfer trigger="click" @on-click="clickDropdown">
                <a href="javascript:void(0)">
                  <span class="main-user-name" key="main-user-name" style="color:#515a6e">{{ userName }}</span>
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
    </div>
    <div style="margin-top: 100px;">
        <h2 style="text-align: center;">经营管理</h2>
        <Row :gutter="16" style="width:80%; margin:auto">
            <Col span="6" style="margin-top:15px;">
              <Card style="100%">
                  <div style="text-align:center">
                      <img src="https://web.dev/images/collections/fast.svg" width="90%">
                      <h3 style="margin-top:15px;text-align: left;">投资云平台</h3>
                      <h4 style="margin-top:15px;text-align: left;">投资云平台投资云平台投资云平台投资云平台投资云平台投资云平台</h4>
                  </div>
              </Card>
            </Col>
            <Col span="6" style="margin-top:15px;">
              <Card style="100%">
                  <div style="text-align:center">
                      <img src="https://web.dev/images/collections/accessible.svg" width="90%">
                      <h3 style="margin-top:15px;text-align: left;">工程项目管理</h3>
                      <h4 style="margin-top:15px;text-align: left;">工程项目管理工程项目管理工程项目管理工程项目管理工程项目管理</h4>
                  </div>
              </Card>
            </Col>
            <Col span="6" style="margin-top:15px;">
              <Card style="100%">
                  <div style="text-align:center">
                      <img src="https://web.dev/images/collections/reliable.svg" width="90%">
                      <h3 style="margin-top:15px;text-align: left;">招投标管理</h3>
                      <h4 style="margin-top:15px;text-align: left;">招投标管理招投标管理招投标管理招投标管理招投标管理招投标管理招投标管理</h4>
                  </div>
              </Card>
            </Col>
            <Col span="6" style="margin-top:15px;">
              <Card style="100%">
                  <div style="text-align:center">
                      <img src="https://web.dev/images/collections/reliable.svg" width="90%">
                      <h3 style="margin-top:15px;text-align: left;">督查督办管理</h3>
                      <h4 style="margin-top:15px;text-align: left;">督查督办管理督查督办管理督查督办管理督查督办管理督查督办管理督查督办管理</h4>
                  </div>
              </Card>
            </Col>
            <Col span="6" style="margin-top:15px;">
              <Card style="100%">
                  <div style="text-align:center">
                      <img src="https://web.dev/images/collections/reliable.svg" width="90%">
                      <h3 style="margin-top:15px;text-align: left;">安健环管理</h3>
                      <h4 style="margin-top:15px;text-align: left;">安健环管理安健环管理安健环管理安健环管理安健环管理安健环管理安健环管理</h4>
                  </div>
              </Card>
            </Col>
          </Row>
          <br>
          <h2 style="text-align: center;">项目建设管理</h2>
          <Row :gutter="16" style="width:80%; margin:auto">
            <Col span="6" style="margin-top:15px;">
              <Card style="100%">
                  <div style="text-align:center">
                      <img src="https://web.dev/images/collections/fast.svg" width="90%">
                      <h3 style="margin-top:15px;text-align: left;">智能路灯</h3>
                      <h4 style="margin-top:15px;text-align: left;">智能路灯智能路灯智能路灯智能路灯智能路灯智能路灯智能路灯智能路灯</h4>
                  </div>
              </Card>
            </Col>
            <Col span="6" style="margin-top:15px;">
              <Card style="100%">
                  <div style="text-align:center">
                      <img src="https://web.dev/images/collections/accessible.svg" width="90%">
                      <h3 style="margin-top:15px;text-align: left;">智慧园区</h3>
                      <h4 style="margin-top:15px;text-align: left;">智慧园区智慧园区智慧园区智慧园区智慧园区智慧园区智慧园区智慧园区</h4>
                  </div>
              </Card>
            </Col>
            <Col span="6" style="margin-top:15px;">
              <Card style="100%">
                  <div style="text-align:center">
                      <img src="https://web.dev/images/collections/reliable.svg" width="90%">
                      <h3 style="margin-top:15px;text-align: left;">智慧管廊</h3>
                      <h4 style="margin-top:15px;text-align: left;">智慧管廊智慧管廊智慧管廊智慧管廊智慧管廊智慧管廊智慧管廊智慧管廊</h4>
                  </div>
              </Card>
            </Col>
            <Col span="6" style="margin-top:15px;">
              <Card style="100%">
                  <div style="text-align:center">
                      <img src="https://web.dev/images/collections/reliable.svg" width="90%">
                      <h3 style="margin-top:15px;text-align: left;">智慧能源</h3>
                      <h4 style="margin-top:15px;text-align: left;">智慧能源智慧能源智慧能源智慧能源智慧能源智慧能源智慧能源智慧能源智慧能源</h4>
                  </div>
              </Card>
            </Col>
            <Col span="6" style="margin-top:15px;">
              <Card style="100%">
                  <div style="text-align:center">
                      <img src="https://web.dev/images/collections/reliable.svg" width="90%">
                      <h3 style="margin-top:15px;text-align: left;">CIM+AI</h3>
                      <h4 style="margin-top:15px;text-align: left;">CIM+AICIM+AICIM+AIC</h4>
                  </div>
              </Card>
            </Col>
          </Row>
          <br>
          <h2 style="text-align: center;">内控管理</h2>
          <Row :gutter="16" style="width:80%; margin:auto">
            <Col span="6" style="margin-top:15px;">
              <Card style="100%">
                  <div style="text-align:center">
                      <img src="https://web.dev/images/collections/fast.svg" width="90%">
                      <h3 style="margin-top:15px;text-align: left;">无纸化办公</h3>
                      <h4 style="margin-top:15px;text-align: left;">无纸化办公无纸化办公无纸化办公无纸化办公无纸化办公无纸化办公</h4>
                  </div>
              </Card>
            </Col>
            <Col span="6" style="margin-top:15px;">
              <Card style="100%">
                  <div style="text-align:center">
                      <img src="https://web.dev/images/collections/accessible.svg" width="90%">
                      <h3 style="margin-top:15px;text-align: left;">统一通讯</h3>
                      <h4 style="margin-top:15px;text-align: left;">统一通讯统一通讯统一通讯统一通讯统一通讯统一通讯统一通讯统一通讯</h4>
                  </div>
              </Card>
            </Col>
            <Col span="6" style="margin-top:15px;">
              <Card style="100%">
                  <div style="text-align:center">
                      <img src="https://web.dev/images/collections/reliable.svg" width="90%">
                      <h3 style="margin-top:15px;text-align: left;">人力资源云平台</h3>
                      <h4 style="margin-top:15px;text-align: left;">人力资源云平台人力资源云平台人力资源云平台人力资源云平台人力资源云平台</h4>
                  </div>
              </Card>
            </Col>
            <Col span="6" style="margin-top:15px;">
              <Card style="100%">
                  <div style="text-align:center">
                      <img src="https://web.dev/images/collections/reliable.svg" width="90%">
                      <h3 style="margin-top:15px;text-align: left;">财务管理</h3>
                      <h4 style="margin-top:15px;text-align: left;">财务管理财务管理财务管理财务管理财务管理财务管理财务管理财务管理财务管理</h4>
                  </div>
              </Card>
            </Col>
          </Row>
      </div>
      <Footer class="layout-footer-center" style="background: #fff;">
        <p>版权所有：陕西微软创新中心有限公司 陕ICP备15012717号</p>
        <p>地址：陕西省西咸新区沣西新城康定路与兴咸路十字西南角（西部云谷B3楼5层）</p>
        <p>E-mail：mic@micshaanxi.com 邮编：712000 电话：（029）38020667</p>
      </Footer>  
  </div>
</template>
<script>
  // import shrinkableMenu from './components/shrinkable-menu/shrinkable-menu.vue';
  // import tagsPageOpened from './components/tags-page-opened.vue';
  // import breadcrumbNav from './components/breadcrumb-nav.vue';
  // import messageTip from './components/message-tip.vue';
  import util from '../../libs/util.js';
  import {getRouter} from '../../api/system';
  import layout from '../../views/layout';
  import {logout} from "../../api/login";

  export default {
    components: {
      // shrinkableMenu,
      // tagsPageOpened,
      // breadcrumbNav,
      // messageTip
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

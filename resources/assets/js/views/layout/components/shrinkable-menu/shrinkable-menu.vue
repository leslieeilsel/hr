<template>
  <!-- 设置左侧导航栏背色 -->
  <div class="menu">
    <slot name="top"></slot>
    <sidebar-menu
      :menu-list="menuList"
      :open-names="openNames"
      @on-change="handleChange"
    ></sidebar-menu>
  </div>
</template>

<script>
  import sidebarMenu from './components/sidebarMenu.vue';
  import util from '@/libs/util';

  export default {
    name: 'shrinkableMenu',
    components: {
      sidebarMenu,
    },
    props: {
      menuList: {
        type: Array,
        required: true
      },
      openNames: {
        type: Array
      }
    },
    methods: {
      // name 是路由名，此方法为子组件 emit 的方法
      handleChange(name) {
        if (name === 'dashboard') {
          window.open('http://datav.aliyuncs.com/share/ab70533a98a16e5dd238d61f1ba0bf4c', '_blank');
          return;
        }
        if (name === 'daping2') {
          window.open('http://datav.aliyuncs.com/share/c7cb48e836718ed3b53fc7df75386bb6?nsukey=aYxkMKmdCOLxZch0nzmfjHpmeNiLr%2FEASjFKDlwoT9RgL8MKOWYwHyVkPKPAZkXNH7bIPLI8kCOXhjNQNAsY%2FunfDQeVQTy68bpgZQYj%2BHTlcqyexldNEq4HEHlBymYW7taajlJE8MhDVLGA7FSRYrXiLCq%2BQ91L9NH4eU2YIwOnq0O', '_blank');
          return;
        }
        let willpush = true;
        if (this.beforePush !== undefined) {
          if (!this.beforePush(name)) {
            willpush = false;
          }
        }
        // 路由跳转
        if (willpush) {
          this.$router.push({
            name: name
          });
        }
        this.$emit('on-change', name);
      }
    }
  };
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
  .menu {
    width: 100%;
    height: 100%;
    background-color: #fff;
  }
</style>


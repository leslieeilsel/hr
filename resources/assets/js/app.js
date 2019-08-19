window.Vue = require('vue');

import App from './app.vue'
import store from './store'
import i18n from './lang'
import {router} from './router'

import iView from 'iview'
import 'iview/dist/styles/iview.css'

Vue.use(iView);

Vue.prototype.$Message.config({
  duration: 5
});

const app = new Vue({
  el: '#app',
  i18n,
  store,
  router,
  render: h => h(App)
});

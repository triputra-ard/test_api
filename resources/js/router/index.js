import Vue from "vue";
import VueRouter from "vue-router";
import auth from "../app/auth/router";
import home from "../app/dashboard/router";
import error from "../app/errors/router";
import axios from 'axios';
import VueAxios from 'vue-axios';
import { beforeEach }from './beforeEach';

const routes = [...auth, ...home, ...error];

Vue.use(VueRouter);
Vue.use(VueAxios,axios);

const router = new VueRouter({
  mode: "history",
  routes,
});

router.beforeEach(beforeEach);

export default router;

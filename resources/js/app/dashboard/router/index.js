import {Home, Dashboard, Profile, Twobind} from "../components";

export default [
  {
    path:'/',
    component: Home,
    name: 'home',
    meta:{
      guest:true,
      authenticated:false,
    }
  },
  {
    path:'/dashboard',
    component: Dashboard,
    name:'dashboard',
    meta:{
      guest:false,
      authenticated:true,
    }
  },
  {
    path:'/profile',
    component: Profile,
    name:'profile',
    meta:{
      guest:false,
      authenticated:true,
    }
  },
  {
    path:'/twobind',
    component: Twobind,
    name:'twobind',
    meta:{
      guest:false,
      authenticated:true,
    }
  }
]

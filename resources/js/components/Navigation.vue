<template>
  <div class="navbar navbar-expand-lg navbar-dark bg-success fixed-top">
    <div class="container">
      <router-link :to="{ name: 'home' }" class="navbar-brand">Halo dari Vue</router-link>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto" v-if="! user.authenticated">
          <li class="nav-item active">
            <router-link :to="{ name: 'login'}" class="nav-link">Login</router-link>
          </li>
          <li class="nav-item active">
            <router-link :to="{ name: 'register'}" class="nav-link">Sign Up</router-link>
          </li>
        </ul>
        <ul class="navbar-nav ml-auto" v-if="user.authenticated">
          <li class="nav-item active">
            <router-link :to="{ name: 'profile'}" class="nav-link">Profil {{ user.data.name }} </router-link>
          </li>
          <li class="nav-item active">
            <router-link :to="{ name: 'twobind'}" class="nav-link">Two Bind</router-link>
          </li>
          <li class="nav-item active">
            <a href="#" class="nav-link" @click.prevent="SignOut">Logout</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>
<script>
  import {mapGetters , mapActions} from "vuex";

  export default{
    computed:{
      ...mapGetters({
        user : "auth/user",
      })
    },
    methods:{
      ...mapActions({
        logout: "auth/logout",
      }),
      SignOut(){
        this.logout().then(() => {
          this.$router.push({ name: 'home' });
        })
      }

    }
  }
</script>

<template>
  <div class="card">
    <div class="card-header">
      <h1 class="text-center">Login</h1>
    </div>
    <div class="card-body">
      <div class="alert alert-danger" v-if="errors.message">{{ errors.message }}</div>
      <form @submit.prevent="loginSubmit">
        <div class="form-group">
          <label> Email </label>
          <input class="form-control" type="email" :class="{'is-invalid': errors.email}" v-model="submit.email">
          <span class="invalid-feedback" role="alert" v-if="errors.email">
            <strong>
              {{ errors.email[0] }}
            </strong>
          </span>
        </div>
        <div class="form-group">
          <label> Password </label>
          <input class="form-control" type="password" :class="{'is-invalid': errors.password}" v-model="submit.password">
          <span class="invalid-feedback" role="alert" v-if="errors.password">
            <strong>
              {{ errors.password[0] }}
            </strong>
          </span>
        </div>
        <div class="form-group">
          <button type="submit" class="btn btn-success">Login</button>
        </div>
      </form>
    </div>
  </div>
</template>

<script>
import {mapActions} from 'vuex';
export default {
  data(){
    return {
      submit: {},
      email:null,
      password:null,
      errors:[]
    }
  },
  methods:{
    ...mapActions({
      login: "auth/login",
    }),
    loginSubmit(){
      this.login({
        payload: {
            email : this.submit.email,
            password: this.submit.password
        },
        context: this
      })
      // .then((response) => {
      //   this.$router.replace({ name: 'dashboard' });
      // });
      // console.log(this.submit.name+","+this.submit.email+","+this.submit.password);
    }
  }
}
</script>

<template>
  <div class="card">
    <div class="card-header">
      <h1 class="text-center">Register</h1>
    </div>
    <div class="card-body">
      <div class="alert alert-danger" v-if="errors.message">{{ errors.message}}</div>
      <form @submit.prevent="registerSubmit">
        <div class="form-group">
          <label> Nama </label>
          <input class="form-control" type="text" :class="{'is-invalid': errors.name}" required v-model="submit.name">
          <span class="invalid-feedback" role="alert" v-if="errors.name">
            <strong>
              {{ errors.name[0] }}
            </strong>
          </span>
        </div>
        <div class="form-group">
          <label> Email </label>
          <input class="form-control" type="email" :class="{'is-invalid': errors.email}" required v-model="submit.email">
          <span class="invalid-feedback" role="alert" v-if="errors.email">
            <strong>
              {{ errors.email[0] }}
            </strong>
          </span>
        </div>
        <div class="form-group">
          <label> Password </label>
          <input class="form-control" type="password" required :class="{'is-invalid': errors.password}" v-model="submit.password">
          <span class="invalid-feedback" role="alert" v-if="errors.password">
            <strong>
              {{ errors.password[0] }}
            </strong>
          </span>
        </div>
        <div class="form-group">
          <button type="submit" class="btn btn-primary">Register</button>
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
      name:null,
      email:null,
      errors:[]
    }
  },
  methods:{
    ...mapActions({
      register: "auth/register",
    }),
    registerSubmit(){
      this.register({
        payload: {
            name: this.submit.name,
            email : this.submit.email,
            password: this.submit.password
        },
        context: this
      });
      // .then((result) => {
      //   this.$router.replace({ name : 'login' });
      // })
      // console.log(this.submit.name+","+this.submit.email+","+this.submit.password);
    }
  }
}
</script>

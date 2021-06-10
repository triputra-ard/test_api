import store from "../store";

export const beforeEach = (to, from, next) => {
  store.dispatch("auth/checkTokenExists")
  .then(() => {
    // if (to.meta.guest) {
    //   next({ name: "login"});
    //   return;
    // }
    next();
  })
  .catch((err) => {
    if(to.meta.authenticated){
      localStorage.setItem("intended", to.name);
      next({ name : 'login'});
      return;
    }else {
      next();
    }
  });
}

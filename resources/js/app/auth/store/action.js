import { setHttpToken } from '../../../helpers';
import routers from '../../../router';
import { isEmpty } from 'lodash';

export const register = ({dispatch}, { payload, context}) => {
  return axios
  .post('/api/auth/register',payload)
  .then((response)=>{
    routers.push({ name : 'login' });
  })
  .catch((err) => {
      context.errors = err.response.data.errors;
  });
}
export const login = ({dispatch}, {payload, context}) =>{
  return axios
  .post('/api/auth/login',payload)
  .then((response)=>{
    dispatch("setToken", response.data.meta.token).then(() => {
      dispatch("fetchUser", response.data).then(() => {
        const lastRoute = localStorage.getItem("intended");
        if (isEmpty(lastRoute)) {
          routers.push({ name: 'dashboard' });
          return;
        }else {
          routers.push({ name: lastRoute });
        }

      });
    });
  })
  .catch((err) => {
    context.errors = err.response.data.errors;
    console.log(err.response.data.errors)
  });
}
export const logout = ({dispatch})=>{
  return axios.post('/api/auth/logout')
  .then(() => {
    dispatch("removeToken");
  })
}
export const setToken = ({commit, dispatch}, token) => {
  if (isEmpty(token)) {
       return dispatch("checkTokenExists")
       .then((token) => {
           setHttpToken(token);
       });
   }else {
     commit("setToken", token);
     setHttpToken(token);
   }
}
export const fetchUser = ({commit}) => {
  // commit("setAuthenticated", true);
  // commit("setUserData", user);
  return axios.get('/api/user')
  .then((response) => {
    commit("setAuthenticated", true);
    commit("setUserData", response.data);
  })
  .catch((err) => {
    console.log(err.response.data.errors);
  });
}

export const removeToken = ({ commit }) => {
  commit("setAuthenticated", false);
  commit("setUserData", null);
  commit("setToken", null);
  setHttpToken(null);
}

export const checkTokenExists = () =>{

  const token = localStorage.getItem('access_token');

    if (isEmpty(token)) {
        return Promise.reject("NO_STORAGE_FOUND");
    }
    else {
        return Promise.resolve(token);
    }
}

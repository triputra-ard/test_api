import state from "./state";
import * as mutations from "./mutation";
import * as getters from "./gather";
import * as actions from "./action";

export default{
  namespaced: true,
  state,
  mutations,
  getters,
  actions,
}

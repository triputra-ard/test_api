<template>
<div class="container">
  <div class="col-md-8 offset-xl-2">
      <div class="card mb-3" style="margin-top:70px;">
          <div class="card-header text-white bg-info">Example Component</div>
          <div class="card-body">
              <div class="form-group">
                <input class="form-control" type="text" name="" :value="input" placeholder="Enter text">
              </div>
              <p class="text-dark">{{ input }}</p>
              <div class="form-group">
                <input type="checkbox" id="checkbox" v-model="checked">
                <label for="checkbox">{{ checked }}</label>
              </div>
          </div>
      </div>
  </div>
</div>
</template>

<script>
export default {
  data(){
    return{
      input:'',
      checked:false,
    }
  }
}
</script>

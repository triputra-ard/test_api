<template>
  <div class="page">
    <navigation></navigation>
    <main class="mt-5 mr-auto ml-auto py-5 px-5">
      <router-view></router-view>
    </main>
  </div>
</template>

<script>
import navigation from './Navigation';
export default {
  components:{
    navigation,
  }
}
</script>

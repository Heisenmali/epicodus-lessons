<template>
  <div id="app">
    <doctors></doctors>
  </div>
</template>

<script>
import Doctors from './components/Doctors.vue'

export default {
  name: 'app',
  components: {
    'doctors': Doctors
  },
  data () {
    return {

    }
  }
}
</script>

<style>
#app {
  margin: 0 15vw;
}
</style>

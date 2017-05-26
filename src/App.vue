<template>
  <div id="app">
    <doctor></doctor>
  </div>
</template>

<script>
import Doctor from './components/Doctor.vue'
export default {
  name: 'app',
  components: {
    'doctor': Doctor
  },
  data () {
    return {

    }
  }
}
</script>

<style>

</style>

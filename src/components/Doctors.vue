<template>
  <div>
    <h1>Find a doctor</h1>
     <form v-if="formShow" class="black-80">
      <label class="db fw4 lh-copy f6">Enter a condition</label>
      <input v-model="condition" class="pa2 input-reset ba bg-transparent w-100 measure">
    </form>
      <div class="mt3">
        <a v-on:click="formControl" class="f6 link dim br1 ba ph3 pv2 mb2 dib black" href="#0">{{formShow ? 'get doctors' : 'new search'}}</a>
      </div>
      
    
    <div v-for="doctor in doctors">
      <doctor v-bind:doctor="doctor"></doctor>
    </div>
  </div>
</template>

<script>
import Doctor from './Doctor.vue'

export default {
 name: 'doctors',
 components: {
   'doctor': Doctor
 },
  data () {
    return {
      doctors: false,
      apiKey: 'bf2df4b942c1fcc62beccf775d417167',
      condition: '',
      formShow: true
    }
  },
  methods: {
    getApi: function() {
      fetch('https://api.betterdoctor.com/2016-03-01/doctors?query='+ this.condition +'&location=45.5231%2C-122.6765%2C%205&user_location=45.5231%2C-122.6765&skip=0&limit=20&user_key=' + this.apiKey)
      .then(response => {
        return response.json();
      })
      .then(data => {
        this.doctors = data.data;
        console.log(this.doctors)
      });
    },
    formControl: function() {
      if (this.formShow === true) {
        this.getApi();
      }
      this.formShow = !this.formShow;
    }
  }
}
</script>

<style>

</style>

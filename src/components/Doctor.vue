<template>
  <div>
    <form>
      <input v-bind="cond">
    </form>
  
    <button v-on:click="getApi">Click me!</button>
    
    <div v-if="doctors" v-for="doctor in doctors">
      <h2> {{doctor.profile.first_name}} {{doctor.profile.last_name}} - {{doctor.profile.title}} </h2>
      <p v-for="specialty in doctor.specialties"> {{specialty.actor}} </p>
      <p v-for="address in doctor.practices"> {{address.visit_address.street}} - {{address.visit_address.zip}} {{address.visit_address.city}} </p>
    </div>
  </div> 
</template>

<script>
export default {
  name: 'doctor',
  data () {
    return {
      doctors: false,
      apiKey: 'bf2df4b942c1fcc62beccf775d417167',
      condition: ''
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
    }
  }
}
</script>

<style>

</style>

<template>
  <div class="bb b--gray doc">

    <h2> {{doctor.profile.first_name}} {{doctor.profile.last_name}} - {{doctor.profile.title}} </h2>
    <article class="cf">
      
      <!--Show specialties-->
      <div>
        <a v-on:click="showSpec = !showSpec" class="f6 link dim br1 ba ph3 pv2 mb2 dib black" href="#0">{{showSpec ? 'hide specialities' : 'show specialities'}}</a>
        
        <!--Show addresses-->
        <a v-on:click="showAdd = !showAdd" class="f6 link dim br1 ba ph3 pv2 mb2 dib black" href="#0">{{showAdd ? 'hide addresses' : 'show addresses'}}</a>
      </div>
      
      <div id="specialty" v-if="showSpec" class="fl w-100 w-50-ns">
        <p v-for="specialty in doctor.specialties"> {{specialty.actor}} </p>
      </div>
      

      
      <div id="address" v-if="showAdd" class="fl w-100 w-50-ns">
        <p v-for="address in doctor.practices"> 
          {{address.visit_address.street}} - {{address.visit_address.zip}} {{address.visit_address.city}}
        </p>
      </div>

    </article>
  </div> 
</template>

<script>
export default {
  name: 'doctor',
  components: {

  },
  props: {
    doctor: {
    }
  },
  data () {
    return {
      showSpec: false,
      showAdd: false,
      
    }
  }
  
}
</script>

<style>
.doc {
  padding: 10vh 0;
}
</style>

<template>
  <div class="test">
    <p> {{this.stuff.first}} </p>
    <p> {{this.stuff.last}} </p>
    <button v-on:click="async">Async</button>
  </div>
</template>

<script>

export default {
  name: 'test', 
  data() {
    return {
      title: "hello world",
      stuff: ["hi"],
      user: {
        firstName: "Nik",
        lastName: "Long"
      },
      showName: true, 
      items: [
        {title: 'Item One'},
        {title: 'Item Two'},
        {title: 'Item Three'}
      ]
    }
  },
  created () {
    this.async()
  },
  methods: {
    async: function() {
      console.log(this.stuff)
      fetch('http://localhost:4567/exp')
        .then(response => response.json())
        .then(data => {
          console.log(this.stuff)
          this.stuff = data
          console.log(this.stuff)
      });
    }
  }
}
</script>

<style scoped>

</style>



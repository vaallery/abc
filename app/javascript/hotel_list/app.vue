<template>
  <div id="hotel-list-app">
    <p>{{ message }}</p>
    <hotel-list :hotels="hotels"></hotel-list>
  </div>
</template>

<script>
  import HotelList from './components/hotel-list'
  import hotels_data from './services/hotels'

  export default {
    data () {
      return {
        hotels: hotels_data,
        message: "Тут будет список отелей с картой!"
      }
    },
    components: {
      HotelList
    }
  }
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>

<template>
  <div id="hotel-list-app">
    <p>{{ message }}</p>
    <hotel-list :hotels="hotels"></hotel-list>
  </div>
</template>

<script>
  import HotelList from './components/hotel-list'
  import {getHotels} from './services/hotels'

  export default {
    data () {
      return {
        hotels: {},
        message: "Тут будет список отелей с картой!"
      }
    },
    components: {
      HotelList
    },
    created() {
      getHotels().then(response  => {
        this.hotels = response.body
      }).catch(error => {
        this.hotels = {}
      });
    }
  }
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>

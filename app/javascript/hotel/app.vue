<template>
  <div id="hotel-app">

    <search-app></search-app>
    <slot name="title-bar"></slot>

    <div class="page-wrapper">
      <div class="container">
        <slot name="info"></slot>
        <soft-filter></soft-filter>
        <rooms-app></rooms-app>
        <slot name="services"></slot>
      </div>
    </div>
  </div>
</template>

<script>
  import rooms_data from "./servises/rooms";
  import RoomsApp from "./components/rooms-app";
  import SearchApp from "./components/search-app";
  import SoftFilter from "./components/sort-filter";

  export default {
    name: "app",
    data(){
      return {
        stay_time: 'day',
        guest_count: {guest1: false, guest2: false, guest3: false, guest4: false},
        rooms: rooms_data,
        configurations: {},
        bookings: []
      }
    },
    components: {SearchApp, RoomsApp, SoftFilter }
  }
</script>

<style scoped>

</style>

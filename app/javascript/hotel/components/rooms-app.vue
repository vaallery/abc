<template>
  <div>
    <div class="sort-filter-guests">
      <div class="wrapper">
        <div class="row">
          <div class="col-md-3">
            <div class="title">Количество гостей</div>
          </div>
          <div class="col-md-1">
            <span class="guest-1" :class="guest_count.guest1 ? 'active' : null "></span>
          </div>
          <div class="col-md-1">
            <span class="guest-2"></span>
          </div>
          <div class="col-md-1">
            <span class="guest-3 active"></span>
          </div>
          <div class="col-md-1">
            <span class="guest-4"></span>
          </div>
        </div>
      </div>
    </div>
    <div class="rooms">
      <div class="wrapper">
        <div class="row">
          <rooms-list :rooms="rooms"
                      :guest_count="guest_count"
                      :stay_time="stay_time"
                      @selected="onSelect"></rooms-list>
          <bookings-list v-model="bookings"></bookings-list>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  import BookingsList from "./bookings-list";
  import RoomsList from "./rooms-list";
  import rooms_data from "../servises/rooms";

  export default {
    name: "rooms-app",
    data(){
      return {
        stay_time: 'day',
        guest_count: {guest1: false,guest2: false,guest3: false,guest4: false},
        rooms: rooms_data,
        configurations: {},
        bookings: []
      }
    },
    methods: {
      onSelect($event, conf, count) {
        this.bookings += [{conf: conf, count: count}]
      }
    },
    components: { BookingsList, RoomsList }
  }
</script>

<style scoped>

</style>

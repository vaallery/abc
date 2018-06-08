<template>
  <div>
    <div class="sort-filter-guests">
      <div class="wrapper">
        <div class="row">
          <div class="col-md-3">
            <div class="title">Количество гостей</div>
          </div>
          <!--TODO В момент инициализации active работает, но не меняется по клику. хз почему - выяснить-->
          <div v-for="i in [1,2,3]" class="col-md-1">
            <span :class="['guest-'+i, {active : guest(i)}]"
                  v-on:click.self.capture="changeGuestFilter(i)"></span>
          </div>
          <!--TODO другой вариант того же, но тоже не работает-->
          <div class="col-md-1">
            <span class="guest-4"
                  :class="guest4 ? 'active' : ''"
                  v-on:click="changeGuestFilter(4)"></span>
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
    // props: ['bookings'],
    data(){
      return {
        stay_time: 'day',
        guest_count: [true, true, true, true, true],
        rooms: rooms_data,
        configurations: {},
        bookings: []
      }
    },
    methods: {
      onSelect(conf) {
        console.log(conf);
        console.log(count);
        this.bookings += [{conf: conf, count: count}]
      },
      changeGuestFilter(i) {
        // console.log(this.guest_count[i]);
        this.guest_count[i] = !this.guest_count[i];
        // console.log(this.guest_count[i]);
        return true
      },
      guest(i){
        // console.log(i);
        return this.guest_count[i]
      },
      guest4() {
        return this.guest_count[4]
      }
    },
    components: { BookingsList, RoomsList }
  }
</script>

<style scoped>

</style>

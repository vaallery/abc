<template>
  <div class="hotel-list clearfix">
    <div class="wrap" :class="{'can-scroll': scrollableContainer}" ref="scrollContainer">
      <div v-if="hotels.length > 0">
        <div v-for="hotel in hotels">
          <hotel-item :hotel="hotel"></hotel-item>
        </div>
      </div>
      <div v-else>
        Отелей удовлетворяющих условиям фильтра не обраружено, ....
      </div>
      <mugen-scroll
          class="you-can-add-custom-class-name"
          :handler="onScrolledDown"
          :should-handle="!loading"
          :scroll-container="scrollableContainer && 'scrollContainer'">
        loading <span class="loading dots"></span>
      </mugen-scroll>
    </div>


  </div>
</template>

<script>
  import MugenScroll from 'vue-mugen-scroll'
  // import {getHotels} from '../services/hotels'
  import HotelItem from "./hotel-item";
  export default {
    name: "hotel-list",
    props: ['hotels', 'loading'],
    data() {
      return {
        scrollableContainer: '',
        // hotels: {},
        // total_count: 0,
        // pages_loaded: 0,
        // loading: false
      }
    },
    methods: {
      onScrolledDown() {
        this.$emit('scrolled-down')
      },

      // fetchHotels() {
      //   this.loading = true;
      //   getHotels(this.pages_loaded+1).then(response  => {
      //     this._setHotels(response.body);
      //     this.loading = false;
      //   }).catch(error => {
      //     this._clearHotels();
      //     this.loading = false;
      //   });
      // },
      // _setHotels(data) {
      //   this.hotels = [...this.hotels, ...data.hotels];
      //   this.pages_loaded++;
      //   this.total_count = data.total_count
      // },
      // _clearHotels() {
      //   this.hotels = {};
      //   this.pages_loaded = 0;
      //   this.total_count = 0
      // }
    },
    // created() {
    //   this.fetchHotels()
    // },
    components: {HotelItem, MugenScroll}
  }
</script>

<style scoped>
.hotel-list{
  width: 748px;
  background:#f4f5f6;
  font-family: sans-serif;
  font-size:14px;
  padding: 5px;
  /*height: 600px;*/
  z-index: 0;
}
</style>

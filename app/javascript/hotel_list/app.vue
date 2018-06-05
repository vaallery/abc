<template>
  <div id="hotel-list-app">
    <filters v-model="filters"
             :filters_for_select="filters_for_select"
             @aply="reFetchHotels"></filters>
    <button v-on:click="reFetchHotels">Применить</button>
    <div class="count">Всего удовлетворяющих фильту: {{ total_count }} Загружено страниц: {{ pages_loaded }}</div>
    <hotel-list :hotels="hotels"
                :loading="loading"
                @scrolled-down="fetchHotels"></hotel-list>

  </div>
</template>

<script>
  import HotelList from './components/hotel-list'
  import Filters from './components/filters'
  import {getHotels} from './services/hotels'
  import {getFilters} from './services/filters'

  export default {
    data () {
      return {
        base_search: {
          direction: 1,
          start_date: '',
          end_date: ''
        },

        hotels: {},
        total_count: 0,
        pages_loaded: 0,
        loading: false,

        filters_for_select: {},
        filters: {
          accommodations: [],
          airports: [],
          stations: [],
          services: []
        },
        message: "Тут будет список отелей с картой!"
      }
    },
    methods: {
      fetchFilter() {
        this.filters_for_select = getFilters(this.base_search.direction)

        // getFilters(this.base_search.direction).then(response => {
        //   this.filters_for_select = response.body
        // })
      },

      reFetchHotels() {
        this._clearHotels();
        this.fetchHotels()
      },

      fetchHotels() {
        this.loading = true;
        getHotels(this.pages_loaded+1, this.filters).then(response  => {
          this._setHotels(response.body);
          this.loading = false;
        }).catch(error => {
          this._clearHotels();
          this.loading = false;
        });
      },
      _setHotels(data) {
        this.hotels = [...this.hotels, ...data.hotels];
        this.pages_loaded++;
        this.total_count = data.total_count
      },
      _clearHotels() {
        this.hotels = {};
        this.pages_loaded = 0;
        this.total_count = 0
      }

    },
    created() {
      this.fetchHotels();
      this.fetchFilter()
    },
    components: {HotelList,Filters}
  }
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>

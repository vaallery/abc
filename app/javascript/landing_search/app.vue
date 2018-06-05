<template>
  <div class="search-wrapper">
    <div class="search-tabs">
      <div class="nav-tabs-navigation">
        <ul class="nav nav-tabs">
          <li class="for-day">
            <a :class="{active_tab: stay_period=='day'}" v-on:click="stay_period='day'"><i class="icon-day"></i> На сутки</a>
          </li>
          <li class="for-hour">
            <a :class="{active_tab: stay_period=='hour'}" v-on:click="stay_period='hour'"><i class="icon-hour"></i> На час</a>
          </li>
        </ul>
      </div>
      <div class="tab-content">
        <section class="section-day">
          <div id="d-wrap" class="wrapper-day">
            <div class="s-city">
              <div class="city-wrap">
                <span>Место назначения</span>
                <input v-model="search" placeholder="Москва">
              </div>
            </div>
            <div v-if="stay_period=='day'" class="s-date" >
              <div class="date-wrap">
                <span>Дата заезда и выезда</span>
                <input>
              </div>
            </div>
            <div v-if="stay_period=='hour'" class="select-date-hour" >
              <div class="date-wrap">
                <span>Дата заезда</span>
                <input>
              </div>
              <div class="time-wrap">
                <span>Время заезда</span>
                <input>
              </div>
            </div>
            <div class="s-rooms">
              <div class="rooms-wrap">
                <span>Номера</span>
                <select-number v-model="rooms"></select-number>
              </div>
            </div>
            <div class="s-adult">
              <div class="adult-wrap">
                <span>Взрослых</span>
                <select-number v-model="adult"></select-number>
              </div>
            </div>
            <div class="s-children">
              <div class="children-wrap">
                <span>Детей</span>
                <select-number v-model="children"></select-number>
              </div>
            </div>
            <button class="s-btn">Найти отели</button>
          </div>
        </section>
      </div>
      <div class="search-content">
      </div>
    </div>
  </div>
</template>

<script>
  import selectNumber from './components/select-number';
  export default {
    props: ['base_search_params'],
    data () {
      return {
        stay_period: 'day', // Возможные значения 'day', 'hour'
        search: '',
        start_date: '',
        rooms: 5,
        adult: 0,
        children: 0
      }
    },
    components: { selectNumber }
  }
</script>

<style scoped>
  p {
    font-size: 2em;
    text-align: center;
  }
</style>

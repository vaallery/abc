<template>
  <div class="filters-wrapper">
    <div class="container">
      <div class="filters">
        <div class="filter-item">
          <span class="filter-label">Тип размещения</span>
          <span v-show="!checked_1.length" @click="active = 'accommodations'" class="filter-select">Любой</span>
          <span v-show="checked_1.length" @click="active = 'accommodations'" class="filter-selected" v-html="'<span>'+ checked_1 +'</span>'"></span>
          <div  v-show="active === 'accommodations'" class="accommodations">
            <div v-for="accommodation in filters_for_select.accommodations">
              <input v-model="checked_1" type="checkbox" :id="accommodation.slug" :value="accommodation.name"  @input="updateFilter($event, 'accommodations')">
              <label  :for="accommodation.slug">{{accommodation.name}}</label>
            </div>
          </div>
        </div>
        <div class="filter-item">
          <span class="filter-label">Расположение</span>
          <span v-show="!checked_2.length" @click="active = 'airports'" class="filter-select">Любой</span>
          <span v-show="checked_2.length" @click="active = 'airports'" class="filter-selected" v-html="'<span>'+ checked_2 +'</span>'"></span>
          <div  v-show="active === 'airports'" class="airports-list">
            <span>Аэропорты</span>
            <div class="airports">
              <div v-for="place in filters_for_select.airports">
                <input v-model="checked_2" type="checkbox" :id="place.slug" :value="place.id" @input="updateFilter($event, 'airports')">
                <label :for="place.slug">{{place.name}}</label>
              </div>
            </div>
            <span>ЖД Вокзалы</span>
            <div class="airports">
              <div v-for="place in filters_for_select.stations">
                <input v-model="checked_2" type="checkbox" :id="place.slug" :value="place.id" @input="updateFilter($event, 'stations')">
                <label :for="place.slug">{{place.name}}</label>
              </div>
            </div>
          </div>
        </div>
        <div class="filter-item">
          <span class="filter-label">Услуга и удобства</span>
          <span v-show="!checked_3.length" @click="active = 'services'" class="filter-select">Любой</span>
          <span v-show="checked_3.length" @click="active = 'services'" class="filter-selected" v-html="'<span>'+ checked_3 +'</span>'"></span>
          <div v-show="active ===  'services'" class="services">
            <div v-for="service in filters_for_select.services">
              <input v-model="checked_3" type="checkbox" :id="service.id" :value="service.id" @input="updateFilter($event, 'services')">
              <label :for="service.slug">{{service.name}}</label>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div v-if="active" @click="active = false" class="overlay"></div>
  </div>
</template>

<script>
  export default {
    name: "filters",
    model: { prop: 'filters', event: 'change' },
    props: {
      filters: Object,
      filters_for_select: Object
    },
    data() {
      return {
        active: false,
        checked_1: [],
        checked_2: [],
        checked_3: []
      }
    },
    methods: {
      updateFilter($event, filter_name) {
        let id = $event.target.value,
            $filters = this.filters,
            $filter = $filters[filter_name],
            $$i = $filter.indexOf(id);
        if ($event.target.checked) {
          $$i < 0 && ($filters[filter_name] = $filter.concat([id]))
        } else {
          $$i > -1 &&
          ($filters[filter_name] = $filter
              .slice(0, $$i)
              .concat($filter.slice($$i + 1)))
        }
        this.$emit('change', $filters)
      },
    },
    created(){
      console.log(this.filters);
    }
  }
</script>

<style scoped>

  .filters-wrapper {
    height:100px;
    background: linear-gradient(45deg, #3268b7, #6c488e);
    background: linear-gradient(45deg, rgba(50, 104, 183, 0.95), rgba(108, 72, 142, 0.95));
  }

  .overlay{
    position: fixed;
    left: 0;
    right: 0;
    top: 0;
    bottom: 0;
    z-index:10;
  }

  .filter-item {
    display:  inline-block;
    position: relative;
    vertical-align:  top;
    margin: 0 10px;
    z-index:20;
    cursor: pointer;
  }

  .filter-label {

    display: inline-block;
    padding: 10px 0;
    width: 200px;
    font-size: 12px;
    text-transform: uppercase;
    font-weight: bold;
    color: #96b4e5;
    letter-spacing: 0.02em;
    cursor:default;
  }

  .filter-select {
    cursor: pointer;
    display: block;
    width: 220px;
    border-bottom: 1px solid #96b4e5;
    color: #fff;
    font-size:17px;
    padding: 0 2px;
  }

  .accommodations,
  .airports-list,
  .services{
    position:absolute;
    width: 100%;
    z-index:9;
    background:#fff;
    border:1px solid #ddd;
    padding:10px;
    border-radius:2px;
  }

  .filter-item label{
    font-weight:normal;
    padding:5px;

  }

  .airports-list > span{
    display:block;
    font-weight:bold;
    margin-left:-10px;
    margin-right:-10px;
    padding:5px 10px;
    border-bottom:1px solid #ddd;
  }

  .filter-selected {
    cursor: pointer;
    display: block;
    width: 220px;
    border-bottom: 1px solid #96b4e5;
    color: #fff;
    font-size: 15px;
    padding: 0 2px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
  }
</style>

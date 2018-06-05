<template>
  <div class="filters">
    <h2>Фильтры</h2>
    <h3>Тип размещения</h3>
    <div class="accommodations">
      <div v-for="accommodation in filters_for_select.accommodations">
        <input type="checkbox" :id="accommodation.slug" :value="accommodation.id"  @input="updateFilter($event, 'accommodations')">
        <label :for="accommodation.slug">{{accommodation.name}}</label>
      </div>
    </div>
    <h3>Расположение</h3>
    <h4>Аэропорты</h4>
    <div class="airports">
      <div v-for="place in filters_for_select.airports">
        <input type="checkbox" :id="place.slug" :value="place.slug" @input="updateFilter($event, 'airports')">
        <label :for="place.slug">{{place.name}}</label>
      </div>
    </div>
    <h4>ЖД Вокзалы</h4>
    <div class="stations">
      <div v-for="place in filters_for_select.stations">
        <input type="checkbox" :id="place.slug" :value="place.slug" @input="updateFilter($event, 'stations')">
        <label :for="place.slug">{{place.name}}</label>
      </div>
    </div>
    <h3>Услуга или удобства</h3>
    <div class="services">
      <div v-for="service in filters_for_select.services">
        <input type="checkbox" :id="service.id" :value="service.id" @input="updateFilter($event, 'services')">
        <label :for="service.slug">{{service.name}}</label>
      </div>
    </div>
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
      }
    },
    created() {
      console.log(this.filters)
    }
  }
</script>

<style scoped>

</style>

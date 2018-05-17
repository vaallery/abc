<template>
  <div class="hotel">
    <p>{{hotel.hotel_category.name}}</p>
    <p>{{hotel.name}}</p>
    <p>{{hotel.address}}</p>
    <p>{{rating_formatted(hotel.rating)}} {{hotel.rating}}</p>
    <p>Отзывов {{hotel.review_count}}</p>
    <div>
      <p v-for="place in hotel.places">{{place.name}} {{place.distance}}</p>
    </div>
    <div>
      <p v-for="service in hotel.services">{{service.name}}</p>
    </div>
  </div>
</template>

<script>
  export default {
    name: "hotel-item",
    props: ['hotel'],
    computed: {
      rating_formatted(rating) {
        if (rating>8) {
          return 'Великолепно'
        } else if (rating>6 && rating<=8) {
          return 'Хорошо'
        } else {
          return 'Удовлетворительно'
        }
      }
    }
  }
</script>

<style scoped>
.hotel {
  border: 1px solid #000000;
  margin: 2px;
  padding: 5px;
}
</style>
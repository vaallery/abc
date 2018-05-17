<template>
  <div class="hotel-list">
    <div v-for="hotel in hotels">
      <hotel-item :hotel="hotel"></hotel-item>
    </div>
  </div>
</template>

<script>
  import HotelItem from "./hotel-item";
  export default {
    name: "hotel-list",
    props: ["hotels"],
    components: {HotelItem}
  }
</script>

<style scoped>
.hotel-list{
  border: 1px solid #000000;
  width: 50%;
}
</style>
<template>
  <div class="hotel-list clearfix">
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
  width: 748px;
  background:#f4f5f6;
  font-family: sans-serif;
  font-size:14px;
  padding: 5px;
  /*height: 600px;*/
  z-index: 0;
}
</style>

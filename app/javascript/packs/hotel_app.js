import Vue from 'vue'
import HotelApp from '../hotel/app'

document.addEventListener('DOMContentLoaded', () => {
  const el = document.getElementById("hotel-app").appendChild(document.createElement('hotel-app'));
  const app = new Vue({
    el,
    render: h => h(HotelApp)
  });
  console.log(app)
});

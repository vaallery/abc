import Vue from 'vue'
import HotelListApp from '../hotel_list/app'

document.addEventListener('DOMContentLoaded', () => {
  const el = document.body.appendChild(document.createElement('application'))
  const app = new Vue({
    el,
    render: h => h(HotelListApp)
  })

  console.log(app)
})
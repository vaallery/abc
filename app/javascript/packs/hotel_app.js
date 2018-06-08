import Vue from 'vue/dist/vue.esm'
import App from '../hotel/app'

// document.addEventListener('DOMContentLoaded', () => {
//   const el = document.getElementById("hotel-app").appendChild(document.createElement('hotel-app'));
//   const app = new Vue({
//     el,
//     render: h => h(HotelApp)
//   });
//   console.log(app)
// });


document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    el: '#hotel-app',
    components: { App }
  })
  console.log(app)
})

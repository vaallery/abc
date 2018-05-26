import Vue from 'vue'
import LandingSearchApp from '../landing_search/app'

document.addEventListener('DOMContentLoaded', () => {
  const el = document.getElementById("landing-search-app").appendChild(document.createElement('landing-search-app'));
  const app = new Vue({
    el,
    render: h => h(LandingSearchApp)
  });
  console.log(app)
});


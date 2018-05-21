import Vue from 'vue';
import VueResource from 'vue-resource';

Vue.use(VueResource);

export const getHotels = () => {
  return Vue.http.get('/api/v1/hotels.json');
};


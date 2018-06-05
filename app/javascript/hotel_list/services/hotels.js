import Vue from 'vue';
import VueResource from 'vue-resource';

Vue.use(VueResource);

export const getHotels = (page,filters) => {
  return Vue.http.get('/api/v1/hotels.json', {params: {page: page, filters: filters}});
};


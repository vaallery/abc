import Vue from 'vue';
import VueResource from 'vue-resource';

Vue.use(VueResource);

export const getFilters = (direction) => {
  return {
    stations: [
      { name: "Белорусский", slug: "mos-s1" },
      { name: "Казанский", slug: "mos-s2"},
      { name: "Киевский", slug: "mos-s3"},
      { name: "Курский", slug: "mos-s4"},
      { name: "Ленинградский", slug: "mos-s5"},
      { name: "Павелецкий", slug: "mos-s6"},
      { name: "Рижский", slug: "mos-s7"},
      { name: "Савёловский", slug: "mos-s8"},
      { name: "Ярославский", slug: "mos-s8"}
    ],
    airports: [
      { name: "Внуково", slug: "mos-a1"},
      { name: "Шереметьево", slug: "mos-a2"},
      { name: "Домодедово", slug: "mos-a3"}
    ],
    accommodations: [
      { id: 1, name: "2 звезды", slug: "two_stars"},
      { id: 2, name: "3 звезды", slug: "three_stars"},
      { id: 3, name: "4 звезды", slug: "four_stars"},
      { id: 4, name: "5 звезд", slug: "five_stars"},
      { id: 5, name: "Мини-отель", slug: "mini"},
      { id: 6, name: "Хостел", slug: "hostel"},
      { id: 7, name: "Аппартаменты", slug: "apartment"},
      { id: 8, name: "Коттедж", slug: "cottage"}
    ],
    services: [
      { id: 8, name: "Бар/Ресторан", tag: "restaurant"},
      { id: 5, name: "Бассейн", tag: "swimming_pool"},
      { id: 2, name: "Бесплатный завтрак", tag: "breakfast"},
      { id: 1, name: "Бесплатный интернет", tag: "wifi"},
      { id: 7, name: "Спа-услуги", tag: "spa"},
      { id: 4, name: "Трансфер", tag: "transfer"},
      { id: 6, name: "Фитнес", tag: "fitness"}
    ]
  }
  // return Vue.http.get('/api/v1/filters.json?direction='+direction);
};


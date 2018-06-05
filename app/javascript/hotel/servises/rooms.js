// import Vue from 'vue';
// import VueResource from 'vue-resource';
//
// Vue.use(VueResource);

export default [
      // t.string :name
      // t.string :description
      // t.string :services_description
      // t.integer :square
      // t.string :bed
      // # TODO уточнить нафига столько атрибутов про кровати
      // t.integer :bed1
      // t.integer :bed2
      // t.integer :rooms
      // t.boolean :additional_bed
      // t.boolean :active, default: true
      // t.jsonb :images, array: true}
      {
        name: "1-местный Double c большой кроватью",
        description: "Подробное описание номера",
        services_description: "Телевизор, кабельные каналы, фен, холодильник, электрочайник, номера звуко-изолированы, есть общая гостиная с телевизором",
        square: 19,
        images: [],
        configurations: [
          // t.references :room, foreign_key: true
          // t.references :stay_time, foreign_key: true
          // t.integer :guests_count
          // t.integer :cost
          // t.boolean :active, default: true
          {
            guests_count: 2,
            cost: 1000,
            stay_time: 'сутки',
            services: ['бесплатный завтрак', 'сауна']
          },
          {
            guests_count: 3,
            cost: 2000,
            stay_time: 'сутки',
            services: ['бесплатный завтрак', 'сауна'],
            additional_bed: true
          }
        ]
      },
      {
        name: "4-местный Double c большой кроватью",
        description: "Подробное описание номера",
        services_description: "Телевизор, кабельные каналы, фен, холодильник, электрочайник, номера звуко-изолированы, есть общая гостиная с телевизором",
        square: 19,
        images: [],
        configurations: [
          // t.references :room, foreign_key: true
          // t.references :stay_time, foreign_key: true
          // t.integer :guests_count
          // t.integer :cost
          // t.boolean :active, default: true
          {
            id: 23,
            guests_count: 2,
            cost: 3000,
            stay_time: 'сутки',
            services: ['бесплатный завтрак', 'сауна']
          },
          {
            id: 34,
            guests_count: 3,
            cost: 4000,
            stay_time: 'сутки',
            services: ['бесплатный завтрак', 'сауна'],
            additional_bed: true
          }
        ]
      }
      ]
  // return Vue.http.get('/api/v1/rooms.json?direction='+direction);



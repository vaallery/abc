export default [
    {
      id: 1,
      name: 'МАКСИМА ЗАРЯ (м. Владыкино)',
      hotel_category: 'three_stars',
      address: 'Москва, ул. Гостиничная, д.4, к. 9',
      latitude: 55.84302,
      longitude: 37.581119,
      slug: 'maksima-zarya-m-vladykino',
      rating: 8.7,
      review_count: 134,
      favorite: false, // Хранить у юзера на компе
      min_price: 5600,
      places: [
        {place_category: 'subway', name: 'м. Окружная', color: '#A8D92D', distance: 360},
        {place_category: 'subway', name: 'м. Владыкино', color: '#89339E', distance: 740},
        {place_category: 'center', name: 'Расстояние от центра', distance: 1562}
      ],
      services: [
        {name: 'Парковка', tag: 'parking'},
        {name: 'Сауна', tag: 'shower'},
        {name: 'Wi-Fi', tag: 'wifi'}
      ],
      images: ['http://ad-green.ru/wp-content/uploads/2016/08/01-slavyanka-gostinichnyj-nomer-lefortovo-1.jpg']
    },
    {
      id: 2,
      name: 'ПЕКИН',
      hotel_category: 'five_star',
      address: 'г.Минск.,Красноармейская улица, 36',
      latitude: 53.892309,
      longitude: 27.578674,
      slug: 'pekin',
      rating: 8.7,
      review_count: 134,
      favorite: false, // Хранить у юзера на компе
      min_price: 4600,
      places: [
        {place_category: 'subway', name: 'м. Окружная', color: '#A8D92D', distance: 360},
        {place_category: 'subway', name: 'м. Владыкино', color: '#89339E', distance: 740},
        {place_category: 'center', name: 'Расстояние от центра', distance: 1562}
      ],
      services: [
        {name: 'Парковка', tag: 'parking'},
        {name: 'Сауна', tag: 'shower'},
        {name: 'Wi-Fi', tag: 'wifi'}
      ],
      images: ['http://ad-green.ru/wp-content/uploads/2016/08/01-slavyanka-gostinichnyj-nomer-lefortovo-1.jpg']
    },
    {
      id: 3,
      name: 'ПРЕЗИДЕНТ-ОТЕЛЬ',
      hotel_category: 'five_star',
      address: 'г.Минск., Улица Кирова',
      latitude: 53.878819,
      longitude: 27.597036,
      slug: 'prezident-otel',
      rating: 8.7,
      review_count: 134,
      favorite: false, // Хранить у юзера на компе
      min_price: 6400,
      places: [
        {place_category: 'subway', name: 'м. Окружная', color: '#A8D92D', distance: 360},
        {place_category: 'subway', name: 'м. Владыкино', color: '#89339E', distance: 740},
        {place_category: 'center', name: 'Расстояние от центра', distance: 1562}
      ],
      services: [
        {name: 'Парковка', tag: 'parking'},
        {name: 'Сауна', tag: 'shower'},
        {name: 'Wi-Fi', tag: 'wifi'}
      ],
      images: ['http://ad-green.ru/wp-content/uploads/2016/08/01-slavyanka-gostinichnyj-nomer-lefortovo-1.jpg']
    }
  ]

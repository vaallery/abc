columns = %i[id name tag for_hotel for_room for_configuration active]
values = [
  [1, 'Бесплатный интернет', 'wifi', true, false, false, true],
  [2, 'Бесплатный завтрак', 'breakfast', true, true, true, true],
  [3, 'Парковка', 'parking', true, false, false, false],
  [4, 'Трансфер', 'transfer', true, false, false, true],
  [5, 'Бассейн', 'swimming_pool', true, false, false, true],
  [6, 'Фитнес', 'fitness', true, false, false, true],
  [7, 'Спа-услуги', 'spa', true, false, false, true],
  [8, 'Бар/Ресторан', 'restaurant', true, false, false, true],
  [9, 'Ванная комната в номере', 'shower', false, true, false, true],
  [10, 'Бесплатный ужин', 'dinner', false, false, true, true],
  [11, 'Дополнительная кровать', 'bed', false, false, true, true]
]
Service.delete_all
Service.import columns, values

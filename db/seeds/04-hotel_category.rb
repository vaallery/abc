columns = %i[id name slug]
values = [
  [1, '2 звезды', 'two_stars'],
  [2, '3 звезды', 'three_stars'],
  [3, '4 звезды', 'four_stars'],
  [4, '5 звезд', 'five_stars'],
  [5, 'Мини-отель', 'mini'],
  [6, 'Хостел', 'hostel'],
  [7, 'Аппартаменты', 'apartment'],
  [8, 'Коттедж', 'cottage']]
HotelCategory.delete_all
HotelCategory.import columns, values

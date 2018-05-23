columns = %i[name active]
values = [
  ['Сутки', true],
  ['Ночь', true],
  ['4 часа', true],
  ['3 часа', true],
  ['1 час', true]
]
StayTime.delete_all
StayTime.import columns, values

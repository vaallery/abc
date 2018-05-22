# frozen_string_literal: true

Service.delete_all
Service.create(
  [
    {
      id: 1,
      name: 'Бесплатный интернет',
      description: '',
      for_hotel: true,
      for_room: false,
      for_configuration: false,
      active: true
    },
    {
      id: 2,
      name: 'Бесплатный завтрак',
      description: '',
      for_hotel: true,
      for_room: true,
      for_configuration: true,
      active: true
    },
    {
      id: 3,
      name: 'Парковка',
      description: '',
      for_hotel: true,
      for_room: false,
      for_configuration: false,
      active: false
    },
    {
      id: 4,
      name: 'Трансфер',
      description: '',
      for_hotel: true,
      for_room: false,
      for_configuration: false,
      active: true
    },
    {
      id: 5,
      name: 'Бассейн',
      description: '',
      for_hotel: true,
      for_room: false,
      for_configuration: false,
      active: true
    },
    {
      id: 6,
      name: 'Фитнес',
      description: '',
      for_hotel: true,
      for_room: false,
      for_configuration: false,
      active: true
    },
    {
      id: 7,
      name: 'Спа-услуги',
      description: '',
      for_hotel: true,
      for_room: false,
      for_configuration: false,
      active: true
    },
    {
      id: 8,
      name: 'Бар/Ресторан',
      description: '',
      for_hotel: true,
      for_room: false,
      for_configuration: false,
      active: true
    },
    {
      id: 9,
      name: 'Ванная комната в номере',
      description: '',
      for_hotel: false,
      for_room: true,
      for_configuration: false,
      active: true
    },
    {
      id: 10,
      name: 'Бесплатный ужин',
      description: '',
      for_hotel: false,
      for_room: false,
      for_configuration: true,
      active: true
    },
    {
      id: 11,
      name: 'Дополнительная кровать',
      description: '',
      for_hotel: false,
      for_room: false,
      for_configuration: true,
      active: true
    }
  ]
)

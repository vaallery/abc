window.ya_init = function() {
  
  lat = $("#miniMap").data("lat");
  lng = $("#miniMap").data("lng");

  myMap = new ymaps.Map("miniMap", {
    center: [lat, lng],
    zoom: 12,
    controls: ['zoomControl', 'rulerControl']
  });

  myPlacemark = new ymaps.Placemark(myMap.getCenter(), {
    balloonContentHeader: "Балун метки",
    balloonContentBody: "Содержимое <em>балуна</em> метки",
    balloonContentFooter: "Подвал",
    hintContent: "Хинт метки"
  });
  
  myMap.geoObjects.add(myPlacemark);
};

$(function() {
  if (window.ymaps) {
    return ya_init();
  } else {
    return $.getScript("//api-maps.yandex.ru/2.1/?load=package.full&lang=ru-RU&onload=ya_init");
  }
});
// = // require jquery
// = require lightbox
// = // require ckeditor/init

var ready;
ready = function() {

  lightbox.init();

  $("#getCoordsLink").click(function(event) {
    event.preventDefault();
    $.ajax({
      url: "/api/v1/geocoder",
      data: {address: $("#hotel_address").val() },
      type: "GET",
      success: function(data) {
        if (data) {
          $("#hotel_latitude").val(data[0])
          $("#hotel_longitude").val(data[1])
          yandexMapObject.placemark.geometry.setCoordinates(data);
          yandexMapObject.map.setCenter(data)
        } else {
          alert("Координаты не найдены")
        }
      }
    })
  });

}

$( document ).ready(ready);
$( document ).on('page:load', ready)

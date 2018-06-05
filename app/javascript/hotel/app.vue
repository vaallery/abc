<template>
  <div id="hotel-app">

    <search-app></search-app>

    <div class="title-bar clearfix">
      <div class="container">
        <div class="left-side">
          <a class="back-result">Вернуться к результатам поиска</a>
          <h1>Four Seasons Hotel Lion Palace St. Petersburg</h1>
          <div class="stars"></div>
          <div class="address">Москва, ул. Макаренко, д.4, стр.2, кв.23</div>
        </div>
        <div class="right-side">
          <div class="rating">Великолепно<span>8.7</span></div>
          <div class="review-count">Отзывов 500</div>
        </div>
      </div>
    </div>
    <div class="page-wrapper">
      <div class="container">
        <div class="row">
          <div class="col-md-8">
            <div class="preview-box">
              <%= image_tag("hotels/h108/room2.jpg") %>
            </div>
          </div>
          <div class="col-md-4">
            <div class="sidebar">
              <div class="services">
                <span class="parking"></span>
                <span class="shower"></span>
                <span class="wifi"></span>
                <div class="favorite"></div>
              </div>
              <div class="reservation-department">
                <h4>Отдел бронирования:</h4>
                <span>8-495-638-54-75</span>
                <label>Бесплатно для регионов:</label>
                <span>8-495-638-54-75</span>
                <label>Для звонков с мобильных:</label>
                <span>8-495-638-54-75</span>
              </div>
              <div class="points">
                <div class="metro">
                  <h4>Ближайшие станции метро:</h4>
                  <div>м. Тургеневская<span>460м</span></div>
                  <div>м. Чистые пруды<span>460м</span></div>
                </div>
                <div class="airports-train-stations">
                  <h4>Ближайшие аэропорты и вокзалы:</h4>
                  <div>Ленинградский вокзал<span>460м</span></div>
                  <div>Ленинградский вокзал<span>460м</span></div>
                </div>
              </div>
              <button class="reservation-btn">Забронировать онлайн</button>
            </div>
          </div>
        </div>
        <div class="description">
          <div class="nav-tabs"></div>
          <div class="tab-content">
            Гостиница «На Комсомольской»,  принадлежащая сети гостиниц «Апельсин», предоставляет гостям Москвы уютные комфортабельные номера разных категорий – от одноместных до семейных.
            Забронировать и снять любой из них можно на сутки.Удобное расположение – в шаговой доступности от станций метро Красносельская, Комсомольская, ж/д вокзалов  Ярославский, Ленинградский, Казанский – позволяет клиентам быстро и комфортно оказаться в нужном месте.
            Все номера оснащены холодильником и телевизором. На территории  всей гостиницы доступен бесплатный интернет. Дизайн номеров напоминает уютную домашнюю обстановку.
          </div>
        </div>
        <div class="sort-filter">
          <div class="wrapper">
            <div class="row">
              <div class="col-md-3">
                Дата заезда<span>15.05.2018</span>
              </div>
              <div class="col-md-3">
                Дата отъезда<span>15.05.2018</span>
              </div>
              <div class="col-md-2">
                Номеров<span>1</span>
              </div>
              <div class="col-md-2">
                Взрослых<span>1</span>
              </div>
              <div class="col-md-2">
                Детей<span>1</span>
              </div>
            </div>
          </div>
        </div>

        <rooms-app></rooms-app>

        <div class="conveniences">
          <div class="wrapper">
            <label>Удобства</label>
            <div class="line">
              <div class="row">
                <div class="col-md-3">
                  <span class="general">Общее</span>
                </div>
                <div class="col-md-9">
                  Телевизор, кабельные каналы, фен, холодильник, электрочайник, номера звуко-изолированы, есть общая гостиная с телевизором
                </div>
              </div>
            </div>
            <div class="line">
              <div class="row">
                <div class="col-md-3">
                  <span class="internet">Интернет</span>
                </div>
                <div class="col-md-9">
                  Wi-Fi предоставляется на территории всего отеля бесплатно
                </div>
              </div>
            </div>
            <div class="line">
              <div class="row">
                <div class="col-md-3">
                  <span class="arrival">Заезд</span>
                </div>
                <div class="col-md-9">
                  с 12:00
                </div>
              </div>
            </div>
            <div class="line">
              <div class="row">
                <div class="col-md-3">
                  <span class="exit">Выезд</span>
                </div>
                <div class="col-md-9">
                  с 12:00
                </div>
              </div>
            </div>
            <div class="line">
              <div class="row">
                <div class="col-md-3">
                  <span class="children">Размещение детей</span>
                </div>
                <div class="col-md-9">
                  Дополнительное место для детей не предусмотрено
                </div>
              </div>
            </div>
            <div class="line">
              <div class="row">
                <div class="col-md-3">
                  <span class="pets">Домашние животные</span>
                </div>
                <div class="col-md-9">
                  Размещение домашних животных не допускается
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  import rooms_data from "./servises/rooms";
  import RoomsApp from "./components/rooms-app";
  import SearchApp from "./components/search-app";

  export default {
    name: "app",
    data(){
      return {
        stay_time: 'day',
        guest_count: {guest1: false, guest2: false, guest3: false, guest4: false},
        rooms: rooms_data,
        configurations: {},
        bookings: []
      }
    },
    components: {SearchApp, RoomsApp }
  }
</script>

<style scoped>

</style>

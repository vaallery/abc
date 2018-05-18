<template>
  <div class="hotel-block-wrapper clearfix">
    <div class="hotel-block-info">
      <span class="hotel-block-label">{{hotel_category_name}}</span>
      <h3 class="hotel-block-name">{{hotel.name}}</h3>

      <div class="hotel-block-image-slider">
        <img :src="hotel.images[0]"/>
      </div>

      <div class="hotel-block-address">
        <span class="icon-address"></span>
        {{hotel.address}}
      </div>

      <div class="hotel-block-points">
        <div v-for="place in hotel.places" :class="place.place_category">
          {{place.name}}<span>{{place.distance}}</span>
        </div>
      </div>
      <!--TODO допилить источник для периода для ценника Сутки/Час-->
      <div class="hotel-block-price">{{hotel.min_price}}<span>/сутки</span></div>

    </div>
    <div class="hotel-block-info-sidebar">
      <div class="hotel-block-inline">
        <div class="hotel-block-services">
          <span v-for="service in hotel.services" :class="service.tag"></span>
        </div>
        <!--TODO допилить источник для favorite-->
        <div class="hotel-block-favorite"></div>
      </div>

      <div class="hotel-block-rating">{{rating_formatted(hotel.rating)}}<span>{{hotel.rating}}</span></div>
      <div class="hotel-block-review-count">Отзывов {{hotel.review_count}}</div>
      <button class="hotel-block-button">Посмотреть</button>
    </div>
  </div>
</template>

<script>
  export default {
    name: "hotel-item",
    props: ['hotel'],
    methods: {
      rating_formatted(rating) {
        if (rating>8) {
          return 'Великолепно'
        } else if (rating>6 && rating<=8) {
          return 'Хорошо'
        } else {
          return 'Удовлетворительно'
        }
      }
    },
    computed: {
      hotel_category_name() {
        switch (this.hotel.hotel_category) {
          case 'two_stars': return 'Две звезды';
          case 'three_stars': return 'Три звезды';
          case 'four_star': return 'Четыре звезд';
          case 'five_star': return 'Пять звезд';
          case 'mini': return 'Мини-отель';
          case 'hostel': return 'Хостел';
          case 'apartment': return 'Аппартаменты';
          case 'cottage': return 'Коттедж'
        }
      }
    }
  }
</script>

<style scoped>

  .clearfix:after {
    content: "";
    display: table;
    clear: both;
  }

  .hotel-block-wrapper {
    width: 726px;
    padding:15px;
    margin: 10px;
    background:#fff;
    border-radius:8px;
    box-sizing: border-box;
    color:#2c2c2c;
  }

  .hotel-block-info {
    width: 80%;
    display:block;
    float:left;
  }

  .hotel-block-info-sidebar {
    width: 20%;
    display:block;
    float:left;
  }

  .hotel-block-label {
    font-size:10px;
    text-transform:uppercase;
    letter-spacing:0.07em;
  }

  .hotel-block-name {
    font-size:16px;
    font-weight:normal;
    margin:5px 0 10px;
  }

  .hotel-block-image-slider {
    width:160px;
    height:160px;
    float:left;
    margin-right:20px;
    background:#3a64b1;
    line-height: 160px;
    text-align: center;
  }

  .hotel-block-image-slider img {
    max-width: 100%;
    max-height: 100%;
    vertical-align: middle;
  }

  .hotel-block-address {
    margin-bottom:15px;
    color:#868686;
  }

  .hotel-block-points div{
    margin:5px;
  }

  .hotel-block-points div:nth-child(1) {
    color:#f2911f
  }

  .hotel-block-points div:nth-child(2) {
    color:#4c8b4b
  }

  .hotel-block-points span{
    margin-left:8px;
    color:#2c2c2c;
  }

  .center {
    color:#6e6e6e;
  }

  .hotel-block-price {
    font-size:24px;
    margin-top:15px;
  }

  .hotel-block-price > span{
    font-size:16px;
    color:#6e6e6e;
    margin-left:3px;
  }

  .hotel-block-services > span {
    display:inline-block;
    background-size:18px;
    width:24px;
    height:24px;
    background-position:center;
    margin-right:5px;
  }

  .hotel-block-services {
    display: inline-block;
    height: 24px;
    float:  left;
  }

  .hotel-block-inline {
    display: inline-block;
    float:right;
  }

  .icon-address {
    display: inline-block;
    width:15px;
    height:15px;
    margin-right:2px;
    background:url(img/icon_placeholder.svg) no-repeat;
    background-size:contain;
    margin-bottom:-2px;
  }

  .parking { background:url(img/icon_parking.svg) no-repeat;}

  .shower { background:url(img/icon_shower.svg) no-repeat;}

  .wifi { background:url(img/icon_wifi.svg) no-repeat;}

  .hotel-block-favorite {
    display:inline-block;
    width:24px;
    height:24px;
    background:#f4f5f6 url(img/icon_heart.svg) no-repeat;
    border-radius:2px;
    background-size:16px;
    background-position:center;
  }

  .hotel-block-rating {
    margin:20px 0 10px 0;
    float:left;
    font-size:11px;
    font-weight:600;
    text-transform:uppercase;
  }

  .hotel-block-rating > span{
    font-size:18px;
    width:42px;
    height:42px;
    line-height:42px;
    display:inline-block;
    text-align:center;
    border:2px solid #5eaa60;
    border-radius:50%;
    margin-left:6px;
  }


  .hotel-block-review-count {
    text-align:right;
    padding-right:5px;
  }

  .hotel-block-button {
    width:100%;
    height:36px;
    border-radius:3px;
    background:#feba02;
    border:0;
    text-transform:uppercase;
    font-size:12px;
    font-weight:600;
    margin-top:50px;
  }
</style>

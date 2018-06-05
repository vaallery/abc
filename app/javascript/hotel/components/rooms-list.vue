<template>
  <div class="col-md-9">
    <div class="room" v-for="room in rooms">
      <div class="row">
        <div class="col-md-5">
          <div class="name">{{room.name}}</div>
          <div class="image">
            <img src="hotels/h108/room2.jpg">
          </div>
          <div class="detail">
            <span class="min-reservation">Минимум Сутки</span>
            <span class="area">Площадь {{room.square}} м2</span>
            <span class="internet">Интернет</span>
            <span class="payment-method">Оплата в отеле</span>
          </div>
          <a class="more-detailed">Подробнее</a>
        </div>
        <div class="col-md-7">
          <div class="room-info" v-for="conf in room.configurations">
            <!--<div>
            сюда выводим иконку в зависимости от двух параметров conf.count, conf.additional_bed
            Возможные значения: 1, 1plus, 2, 2plus, 3, 3plus, 4
            4 - выводится для всех случаев когда conf.count > 3
            </div>-->


            <div class="name">{{room.name}}</div>
            <span>В стоимость номера входят</span>
            <span v-for="service in conf.services">{{service}}</span>
            <div class="price">{{conf.cost}}<span>/{{conf.stay_time}}</span></div>
            <div class="reservation">
              <span>Номеров</span>
              <input ref="conf.id">
              <button class="reservation-btn" v-on:click="book($event, conf.id)">Я бронирую</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: "rooms-list",
    props: ['rooms'],
    methods: {
      book() {
        this.$emit('selected', )
      }
    }
  }
</script>

<style scoped>

</style>

<template>
  <div class="col-md-3">
    <div class="cart-list">
      <div class="total">
        <div>2 номера на  мест</div>
        <div class="total-amount">6000<span>руб</span></div>
        <div class="ellipse-btn"></div>
      </div>
      <!-- TODO Переделать чтобы работала форма -->
      <form>
        <div class="cart-item" v-for="booking in bookings">
          <!--Пример состава атрибутов для конфигураций-->
          <!--id: 3,-->
          <!--guests_count: 3,-->
          <!--cost: 2000,-->
          <!--stay_time: 'сутки',-->
          <!--services: ['бесплатный завтрак', 'сауна'],-->
          <!--additional_bed: true-->

          <!--Атрибуты букинга-->

          <!--Атрибуты которые тут не передаем, а запрашиваем на следующей форме: -->
          <!--t.string   :name-->
          <!--t.string   :email-->
          <!--t.string   :phone-->
          <!--t.string   :comment-->
          <!--t.string   :status-->
          <!--t.string   :review_key-->

          <!--Атрибуты букинга которые надо передать в форме:-->
          <!--name = "booking[adults_count]"-->
          <!--name = "booking[children_count]"-->
          <!--name = "booking[rooms_count]"-->
          <!--name = "booking[arrival_date]"-->
          <!--name = "booking[departure_date]"-->
          <!--name = "booking[arrival_time]"-->
          <!--name = "booking[departure_time]"-->
          <!--name = "booking[total_cost]"-->

          <!--Атрибуты букинга которые надо передать в форме в качестве массива, можно как скрытый инпут:-->
          <!--name = "booking[configurations][:id][num]" -->


          <div class="guests">
            <span class="guest"></span> <!-- вывести booking.guests_count раз-->
            <span class="guest-small" v-if="booking.additional_bed"></span>
          </div>
          <div class="remove" @click="remove(booking.id)"></div>
          <div class="name">2-местный Double c большой кроватью (включая завтрак, ужин</div>
          <input v-model="booking.rooms_count">
          <div class="price">{{booking.cost}}<span>руб</span></div>
        </div>
        <div class="order">
          <div class="info">
            C 15.05.2018 по 15.05.2018
            <br>
            номеров {{rooms_count}}, взрослых {{adult_count}}, детей {{children_count}}
          </div>
          <button class="btn-outline" @click="routeToBookingPage">Забронировать</button>
        </div>
      </form>
    </div>
  </div>
</template>

<script>
  export default {
    name: "bookings-list",
    props: ['bookings', 'adult_count', 'children_count'],
    data() {
      return {

      }
    },
    methods: {
      rooms_count() {
        let count = 0;
        for (var booking of this.bookings) {
          count = count + booking.rooms_count
        }
        return count
      },
      guest_count() {
        let count = 0;
        for (var booking of this.bookings) {
          let b_count = booking.guests_count;
          if (booking.additional_bed) {
            b_count++
          }
          count = count + (booking.rooms_count * b_count)
        }
        return count
      },
      routeToBookingPage() {
        window.location.href = "/booking?bookings=" + this.bookings
      }
    }
  }
</script>

<style scoped>

</style>

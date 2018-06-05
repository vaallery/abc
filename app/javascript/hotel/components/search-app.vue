<template>
  <div id="filter" class="filter">
    <div class="container">
      <div class="filter-wrap">
        <div class="filter-tabs">
          <div class="row">
            <div class="col-md-2 nav-tabs-navigation">
              <ul class="nav nav-tabs">
                <li class="tab-day">
                  <a class="active_tab"><i class="icon-day"></i> На сутки</a>
                </li>
                <li class="tab-hour">
                  <a class=""><i class="icon-hour"></i> На час</a>
                </li>
              </ul>
            </div>
            <div class="col-md-10 tab-content">
              <section class="section-day">
                <div class="tab-content-day">
                  <div class="select-city">
                    <div class="city-wrap">
                      <span>Место назначения</span>
                      <input>
                    </div>
                  </div>
                  <div class="select-date">
                    <div class="date-wrap">
                      <span>Дата заезда и выезда</span>
                      <input>
                    </div>
                  </div>
                  <div class="select-rooms">
                    <div class="rooms-wrap">
                      <span>Номера</span>
                      <input>
                    </div>
                  </div>
                  <div class="select-adult">
                    <div class="adult-wrap">
                      <span>Взрослых</span>
                      <input>
                    </div>
                  </div>
                  <div class="select-children">
                    <div class="children-wrap">
                      <span>Детей</span>
                      <input>
                    </div>
                  </div>
                  <button class="submit-btn"></button>
                </div>
              </section>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: "search-app"
  }
</script>

<style scoped>

</style>

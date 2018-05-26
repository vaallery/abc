<template>
  <div class="numeric-input">
    <select  :value="count" v-on:change="$emit('change', +$event.target.value)">
      <option v-for="c in ['',1,2,3,4,5,6,7,8,9,10] ">{{ c }}</option>
    </select>
  <span class="arrow-up" @click="addValue"></span>
  <span class="arrow-down" @click="delValue"></span>
  </div>
</template>

<script>
  export default {
    name: 'select-number',
    model: {
      prop: 'count',
      event: 'change'
    },
    props: { count: Number},
    methods: {
      addValue() {
        if (this.count < 10) this.$emit('change', this.count + 1)
      },
      delValue() {
        if (this.count > 0) this.$emit('change', this.count - 1)
      }
    }
  }
</script>

<style scoped>
  select{
    width:100%;
    height:40px;
    border-radius: 4px;
    padding: 10px 15px;
    border: 0;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    -webkit-appearance: none;
    -moz-appearance: none;
    cursor: pointer;

  }

  .numeric-input {
    position:relative;
    width: 85px;
    margin:0 auto;

  }
  .arrow-up,
  .arrow-down {
    position:absolute;
    right:10px;
    width:16px;
    height:16px;
    padding:3px;
    border:none;
    cursor: pointer;
    border-radius: 2px;
  }

  .arrow-up{
    top:5px;
    background: url('./img/input-arrow-up.svg')center no-repeat;
    background-size:10px;
  }
.arrow-down:hover,
.arrow-up:hover{
    background-color:#eee;

}

.arrow-down:active,
.arrow-up:active {
  transform: translate(1px,1px);
}


.arrow-down {
    top:21px;
    background: url('./img/input-arrow-down.svg')center no-repeat;
    background-size:10px;
}
</style>

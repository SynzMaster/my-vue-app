<template>
  <div id="app">
    <CallRecords />
  </div>
</template>

<script>
import CallRecords from "@/components/CallRecords.vue";

export default {
  components: {
    CallRecords,
  },
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>

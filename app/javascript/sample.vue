<template>
  <div>
    <div class="form-group row">
      <div class="progress">
        <div class="progress-bar" role="progressbar" :aria-valuenow="progress"
          aria-valuemin="0" aria-valuemax="100" :style="`width: ${progress}%`"></div>
     </div>
    </div>
    <div class="form-group row">
      <button type="button" class="btn btn-primary" @click="startProcess"
        :disabled="processing">開始</button>
    </div>
  </div>
</template>

<script>
import Axios from 'axios'

export default {
  data() {
    return {
    };
  },
  computed: {
    progress() {
      return 0;
    },
    processing() {
      return false;
    }
  },
  methods: {
    startProcess() {
      Axios.patch('/sample');
    }
  }
}
</script>

<style scoped>
.progress {
  width: 100%;
}
</style>
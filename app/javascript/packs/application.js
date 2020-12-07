import 'bootstrap';
import '../stylesheets/application';

require("@rails/ujs").start()
require("turbolinks").start()
// require("@rails/activestorage").start()
require("channels")

import Vue from 'vue';
import TurbolinksAdapter from 'vue-turbolinks';

import Sample from '../sample.vue';
import '../axios_config';

Vue.use(TurbolinksAdapter);

document.addEventListener('turbolinks:load', () => {
  if(document.getElementById('sample')) {
    new Vue(Sample).$mount('#sample');
  }
});


import consumer from "./consumer"
import cableData from "./cable_data";

consumer.subscriptions.create("UserChannel", {
  connected() {
  },

  disconnected() {
  },

  received(data) {
    switch(data.type) {
      case 'sample':
        cableData.sample = data;
        break;
      // case 'foo':
      //   cableData.foo = data;
      //   break;
      // case 'bar':
      //   cableData.bar = data;
      //   break;
    }
  }
});

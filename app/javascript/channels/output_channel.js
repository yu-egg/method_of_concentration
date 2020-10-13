import consumer from "./consumer"

consumer.subscriptions.create("OutputChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    const html = `<p>${data.content.text}</p>`;
    const outputs = document.getElementById('outputs');
    const newOutput = document.getElementById('output_text');
    outputs.insertAdjacentHTML('afterbegin', html);
    newOutput.value='';
    // Called when there's incoming data on the websocket for this channel
  }
});

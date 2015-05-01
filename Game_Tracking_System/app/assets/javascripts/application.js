// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require websocket_rails/main

window.app.realtime = {
  connect : function(){
    window.app.socket = io.connect("http://0.0.0.0:5001");

    window.app.socket.on("rt-change", function(message){
      // publish the change on the client side, the channel == the resource
      window.app.trigger(message.resource, message);
    });
  }
}
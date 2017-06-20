document.addEventListener("DOMContentLoaded", function(event) {
  var app = new Vue({
    el: '#app',


    mounted: function() {
      $.get('/api/v1/friends.json', function(data) {
        this.friend = data;
      }.bind(this));

    },
  });
});
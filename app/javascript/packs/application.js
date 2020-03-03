// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
var ready = function() {  
 $('#users').DataTable({  
  "columnDefs": [  
     { "width": "19%", className: "dt-body-center", "targets": -1 },  
     { "width": "10%", "targets": 0 },  
     { "width": "7%", "targets": 1 },  
     { "width": "20%", "targets": 2 },  
     { "width": "20%", "targets": 3 },  
    ]  
   });  
}  
$(document).ready(ready);  
$(document).on('page:load', ready);  

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

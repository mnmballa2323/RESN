// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require custom.js
//= require rails-ujs
//= require activestorage
//= require_tree .

// $(document).ready(function () {
//   'use strict';

//   let array = []

//   $.ajax({
//     method: "GET",
//     url: '/autocompete_data',
//     success: function(responce ){
//       const data = responce.data_output;
//       data.forEach((val) => {
//         const tem = val[Object.keys(val)[0]];
//         tem.forEach(x => {
//           array.push(x + " " + Object.keys(val)[0])
//         })
//       });

//     }
//   });

//   $("#myInput").on("change paste keyup", function() {
//     if($(this).val()){
//       const val = $(this).val()
//       console.log(array);
//       const arr = array.filter( arr => arr.includes($(this).val()))
//       // console.log(newarray);
//       let b
//       let input = document.getElementById("autocomplete");
//       let a = document.createElement("DIV");
//       a.setAttribute("id", input.id + "autocomplete-list");
//       a.setAttribute("class", "autocomplete-items");
//       input.parentNode.appendChild(a);
//       for (let i = 0; i < arr.length; i++) {
//         b = document.createElement("DIV");
//         let index = arr[i].indexOf(val);
//         b.innerHTML = arr[i].substring(0,index) + "<span style='background-color: yellow'>" + arr[i].substring(index,index+val.length) + "</span>" + arr[i].substring(index + val.length);
//         b.innerHTML += "<input type='hidden' value='" + arr[i].Text + "'>";
//         b.innerHTML += "<input type='hidden' value='" + arr[i].Description + "'></p>"
//         b.addEventListener("click", function(e) {
//             const selectedValue = this.getElementsByTagName("input")[0].value;
//             const selectedDescription = this.getElementsByTagName("input")[1].value;
//             // inp.value = selectedValue;
//         });
//         a.appendChild(b);
//       }
      
//     } 
//  });
// });
/*
 * Welcome to your app's main JavaScript file!
 *
 * We recommend including the built version of this JavaScript file
 * (and its CSS file) in your base layout (base.html.twig).
 */

// any CSS you import will output into a single css file (app.css in this case)
import './styles/app.scss';

// start the Stimulus application
import './bootstrap';

   //Defining variable based on unique ID
   //Do
   var audio1 = document.getElementById("audio1");
   var note1 = document.getElementById("note1");
   //Example of an HTML Audio/Video Method
   note1.addEventListener("mouseover", function(event) {
       audio1.play();
   }, false);
   //Re
   var audio2 = document.getElementById("audio2");
   var note2 = document.getElementById("note2");
   //Example of an HTML Audio/Video Method
   note2.addEventListener("mouseover", function(event) {
       audio2.play();
   }, false);
   //Mi
   var audio3 = document.getElementById("audio3");
   var note3 = document.getElementById("note3");
   //Example of an HTML Audio/Video Method
   note3.addEventListener("mouseover", function(event) {
       audio3.play();
   }, false);
   //Fa
   var audio4 = document.getElementById("audio4");
   var note4 = document.getElementById("note4");
   //Example of an HTML Audio/Video Method
   note4.addEventListener("mouseover", function(event) {
       audio4.play();
   }, false);
   //Sol
   var audio5 = document.getElementById("audio5");
   var note5 = document.getElementById("note5");
   //Example of an HTML Audio/Video Method
   note5.addEventListener("mouseover", function(event) {
       audio5.play();
   }, false);
   //La
   var audio6 = document.getElementById("audio6");
   var note6 = document.getElementById("note6");
   //Example of an HTML Audio/Video Method
   note6.addEventListener("mouseover", function(event) {
       audio6.play();
   }, false);
   //Si
   var audio7 = document.getElementById("audio7");
   var note7 = document.getElementById("note7");
   //Example of an HTML Audio/Video Method
   note7.addEventListener("mouseover", function(event) {
       audio7.play();
   }, false);
   var audio8 = document.getElementById("audio8");
   var note8 = document.getElementById("note8");
   //Example of an HTML Audio/Video Method
   note8.addEventListener("mouseover", function(event) {
       audio8.play();
   }, false);

   $('.container').click();

// // loads the jquery package from node_modules
// var $ = require('jquery');

$(document).ready( function () {
    $('.table').DataTable();



} );


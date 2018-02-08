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
//= require Chart.bundle
//= require chartkick
//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require materialize
//= require social-share-button
//= require social-share-button/wechat

  $(document).ready(function(){
    // Nav
    $(".button-collapse").sideNav();
    // Internet
    $('#report-internet').modal();
    $('#add-internet-data').modal();
    $('#share-icons-internet').modal();
    $('#add-internet-report').modal();
    $('#add-internet-source').modal();
    // Facebook
    $('#report-facebook').modal();
    $('#add-facebook-data').modal();
    $('#share-icons-facebook').modal();
    $('#add-facebook-report').modal();
    $('#add-facebook-source').modal();
    // Twitter
    $('#report-twitter').modal();
    $('#add-twitter-data').modal();
    $('#share-icons-twitter').modal();
    $('#add-twitter-report').modal();
    $('#add-twitter-source').modal();
    // Instagram
    $('#report-instagram').modal();
    $('#add-instagram-data').modal();
    $('#share-icons-instagram').modal();
    $('#add-instagram-report').modal();
    $('#add-instagram-source').modal();
    // Mobile
    $('#report-mobile').modal();
    $('#add-mobile-data').modal();
    $('#share-icons-mobile').modal();
    $('#add-mobile-report').modal();
    $('#add-mobile-source').modal();
    // Linkedin
    $('#report-linkedin').modal();
    $('#add-linkedin-data').modal();
    $('#share-icons-linkedin').modal();
    $('#add-linkedin-report').modal();
    $('#add-linkedin-source').modal();
    // WhatsApp
    $('#report-whatsapp').modal();
    $('#add-whatsapp-data').modal();
    $('#share-icons-whatsapp').modal();
    $('#add-whatsapp-report').modal();
    $('#add-whatsapp-source').modal();
  });

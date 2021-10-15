// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require jquery3
//= require popper
//= require bootstrap
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"

import "channels"

Rails.start()
Turbolinks.start()

var login = false;
$(".iframe-btn").on('click',function(){
  if($(this).text() == 'Ria'){
    $('.iframe').attr('src','https://b2b.riya.travel/')
  }
  if($(this).text() == 'Akbar'){
    $('.iframe').attr('src','https://agents.akbartravelsonline.com/b2bplus/login')
  }
  if($(this).text() == 'Billing'){
    $('.iframe').attr('src','/index')
  }
})

$(".submit").on('click',function(){
  if($("#userid").val() == 'admin@alnafis.com' && $("#pass").val() == 'Nafis2014@' && login == false){
    login = true;
    $(".before-login").hide();
    $(".after-login").show();
  }
})

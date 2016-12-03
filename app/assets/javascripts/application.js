// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .


$(document).ready(function(){

    console.log("Ready!");
/**/

    

    $(".my-num").keyup(function () {
        if (this.value.length == this.maxLength) {
          $(this).val().toLowerCase();
          $(this).next('.my-num').focus();
        }
    });

    $(".last-num").keyup(function () {
        if (this.value.length == this.maxLength) {
          $(this).val().toLowerCase();
          $(this).parent().find(".submit-btn").focus();
        }
    });

    $(".hint").click(function(){
        $(this).text("Both of us thought we were the same person, but it turns out I was John all along!");
        $(this).parent().append('<br><button class = "submit-btn light hint2">Another hint?</button>');
    });

    $(".hint4").click(function(){
        $(this).text("He's...");
        $(this).parent().append('<br><button class = "submit-btn light hint5">Another hint?</button>');
    });

    $(document.body).on("click", ".hint5", function(){
        $(".hint5").text("It's a portmanteau!");
    });

    $(document.body).on("click", ".hint2", function(){
        $(".hint2").text("It's an egg! It's a man! It's...");
        $(".hint2").parent().append('<br><button class = "submit-btn light hint3">Last hint?</button>');
        $(this).removeClass("hint2"); 
    });

    $(document.body).on("click", ".hint3", function(){
        $(".hint3").text("He's sad, horny, and opens up shop at the post office.");
    });




});


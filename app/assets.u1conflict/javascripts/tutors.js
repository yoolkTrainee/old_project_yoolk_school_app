$(document).ready(function(){

  var title = $(".txt_tutor_title");
  var first_name = $(".txt_tutor_first_name");
  var last_name = $(".txt_tutor_last_name");
  var designatory = $(".txt_tutor_designatory");
  var language = $(".txt_tutor_language");
  var skillset = $(".txt_tutor_skillset");
  var uri = $(".txt_tutor_uri");
  var submit = $ (".btn_tutor_submit")



// ========================================= Validation of Title ================================== 
//////////////////
//submit button SAVE
   submit.click(function() {
        if(title.val() == ""){
          title.css({
            boxShadow: "0px 0px 5px red",
            borderColor: "red"
          });

          title.attr("placeholder","Title can't be blank !").css({textShadow:  "1px 1px 1px gray",color: "red"});
          return false;
        }
        else{
          title.css({
            boxShadow: "0px 0px 5px #4CC417",
            borderColor: "#4CC417"
          });
           // $("#new_textbook").submit();
        }
     
      });     
  

  //  Title in focus
  title.focus(function(){
     title.css({
              boxShadow: "0px 0px 5px #74B9F0",
              borderColor: "#74B9F0"
     });
     title.attr("placeholder","Title Name...").css({color: "#555555", textShadow: "none"})
  });

// Title keyup show border green correct input
  title.keyup(function(){
    if(title.val().length >= 1){
      title.css({boxShadow: "0px 0px 5px #4CC417", borderColor: "#4CC417", color: "#555555"});
    }

    else{
      title.attr("placeholder","Title can't be blank!").css({boxShadow: "0px 0px 5px red",borderColor: "red", color: "red"});
    }
  });

// Title Lost focus
  title.focusout(function(){
      title.attr("placeholder","Title Name...").css({textShadow: "none",boxShadow: "0px 0px 0px #CCCCCC",borderColor: "#CCCCCC", color: "#555555"});
  });


// ========================================= Validation of first_name ================================== 

//submit button SAVE
   submit.click(function() {
        if(first_name.val() == ""){
          first_name.css({
            boxShadow: "0px 0px 5px red",
            borderColor: "red"
          });

          first_name.attr("placeholder","First Name can't be blank !").css({textShadow:  "1px 1px 1px gray",color: "red"});
          return false;
        }
        else{
          first_name.css({
            boxShadow: "0px 0px 5px #4CC417",
            borderColor: "#4CC417"
          });
           // $("#new_textbook").submit();
        }
     
      });     
  

  //  first_name in focus
  first_name.focus(function(){
     first_name.css({
              boxShadow: "0px 0px 5px #74B9F0",
              borderColor: "#74B9F0"
     });
     first_name.attr("placeholder","First Name...").css({color: "#555555", textShadow: "none"})
  });

// first_name keyup show border green correct input
  first_name.keyup(function(){
    if(first_name.val().length >= 1){
      first_name.css({boxShadow: "0px 0px 5px #4CC417", borderColor: "#4CC417", color: "#555555"});
    }

    else{
      first_name.attr("placeholder","First Name can't be blank!").css({boxShadow: "0px 0px 5px red",borderColor: "red", color: "red"});
    }
  });

// first_name Lost focus
  first_name.focusout(function(){
      first_name.attr("placeholder","First Name...").css({textShadow: "none",boxShadow: "0px 0px 0px #CCCCCC",borderColor: "#CCCCCC", color: "#555555"});
  });



// ========================================= Validation of last_name ================================== 

//submit button SAVE
   submit.click(function() {
        if(last_name.val() == ""){
          last_name.css({
            boxShadow: "0px 0px 5px red",
            borderColor: "red"
          });

          last_name.attr("placeholder","Last Name can't be blank !").css({textShadow:  "1px 1px 1px gray",color: "red"});
          return false;
        }
        else{
          last_name.css({
            boxShadow: "0px 0px 5px #4CC417",
            borderColor: "#4CC417"
          });
           // $("#new_textbook").submit();
        }
     
      });     
  

  //  last_name in focus
  last_name.focus(function(){
     last_name.css({
              boxShadow: "0px 0px 5px #74B9F0",
              borderColor: "#74B9F0"
     });
     last_name.attr("placeholder","Last Name...").css({color: "#555555", textShadow: "none"})
  });

// last_name keyup show border green correct input
  last_name.keyup(function(){
    if(last_name.val().length >= 1){
      last_name.css({boxShadow: "0px 0px 5px #4CC417", borderColor: "#4CC417", color: "#555555"});
    }

    else{
      last_name.attr("placeholder","Last Name can't be blank!").css({boxShadow: "0px 0px 5px red",borderColor: "red", color: "red"});
    }
  });

// last_name Lost focus
  last_name.focusout(function(){
      last_name.attr("placeholder","Last Name...").css({textShadow: "none",boxShadow: "0px 0px 0px #CCCCCC",borderColor: "#CCCCCC", color: "#555555"});
  });



// ========================================= Validation of designatory ================================== 

//submit button SAVE
   submit.click(function() {
        if(designatory.val() == ""){
          designatory.css({
            boxShadow: "0px 0px 5px red",
            borderColor: "red"
          });

          designatory.attr("placeholder","Designatory can't be blank !").css({textShadow:  "1px 1px 1px gray",color: "red"});
          return false;
        }
        else{
          designatory.css({
            boxShadow: "0px 0px 5px #4CC417",
            borderColor: "#4CC417"
          });
           // $("#new_textbook").submit();
        }
     
      });     
  

  //  designatory in focus
  designatory.focus(function(){
     designatory.css({
              boxShadow: "0px 0px 5px #74B9F0",
              borderColor: "#74B9F0"
     });
     designatory.attr("placeholder","Designatory...").css({color: "#555555", textShadow: "none"})
  });

// designatory keyup show border green correct input
  designatory.keyup(function(){
    if(designatory.val().length >= 1){
      designatory.css({boxShadow: "0px 0px 5px #4CC417", borderColor: "#4CC417", color: "#555555"});
    }

    else{
      designatory.attr("placeholder","Designatory can't be blank!").css({boxShadow: "0px 0px 5px red",borderColor: "red", color: "red"});
    }
  });

// designatory Lost focus
  designatory.focusout(function(){
      designatory.attr("placeholder","Designatory...").css({textShadow: "none",boxShadow: "0px 0px 0px #CCCCCC",borderColor: "#CCCCCC", color: "#555555"});
  });


// ========================================= Validation of language ================================== 

//submit button SAVE
   submit.click(function() {
        if(language.val() == ""){
          language.css({
            boxShadow: "0px 0px 5px red",
            borderColor: "red"
          });

          language.attr("placeholder","Language can't be blank !").css({textShadow:  "1px 1px 1px gray",color: "red"});
          return false;
        }
        else{
          language.css({
            boxShadow: "0px 0px 5px #4CC417",
            borderColor: "#4CC417"
          });
           // $("#new_textbook").submit();
        }
     
      });     
  

  //  language in focus
  language.focus(function(){
     language.css({
              boxShadow: "0px 0px 5px #74B9F0",
              borderColor: "#74B9F0"
     });
     language.attr("placeholder","Language...").css({color: "#555555", textShadow: "none"})
  });

// language keyup show border green correct input
  language.keyup(function(){
    if(language.val().length >= 1){
      language.css({boxShadow: "0px 0px 5px #4CC417", borderColor: "#4CC417", color: "#555555"});
    }

    else{
      language.attr("placeholder","Language can't be blank!").css({boxShadow: "0px 0px 5px red",borderColor: "red", color: "red"});
    }
  });

// language Lost focus
  language.focusout(function(){
      language.attr("placeholder","Language...").css({textShadow: "none",boxShadow: "0px 0px 0px #CCCCCC",borderColor: "#CCCCCC", color: "#555555"});
  });



// ========================================= Validation of skillset ================================== 

//submit button SAVE
   submit.click(function() {
        if(skillset.val() == ""){
          skillset.css({
            boxShadow: "0px 0px 5px red",
            borderColor: "red"
          });

          skillset.attr("placeholder","Skillset can't be blank !").css({textShadow:  "1px 1px 1px gray",color: "red"});
          return false;
        }
        else{
          skillset.css({
            boxShadow: "0px 0px 5px #4CC417",
            borderColor: "#4CC417"
          });
           // $("#new_textbook").submit();
        }
     
      });     
  

  //  skillset in focus
  skillset.focus(function(){
     skillset.css({
              boxShadow: "0px 0px 5px #74B9F0",
              borderColor: "#74B9F0"
     });
     skillset.attr("placeholder","Skillset...").css({color: "#555555", textShadow: "none"})
  });

// skillset keyup show border green correct input
  skillset.keyup(function(){
    if(skillset.val().length >= 1){
      skillset.css({boxShadow: "0px 0px 5px #4CC417", borderColor: "#4CC417", color: "#555555"});
    }

    else{
      skillset.attr("placeholder","Skillset can't be blank!").css({boxShadow: "0px 0px 5px red",borderColor: "red", color: "red"});
    }
  });

// skillset Lost focus
  skillset.focusout(function(){
      skillset.attr("placeholder","Skillset...").css({textShadow: "none",boxShadow: "0px 0px 0px #CCCCCC",borderColor: "#CCCCCC", color: "#555555"});
  });

  // ========================================= Validation of uri ================================== 

//submit button SAVE
   submit.click(function() {
        if(uri.val() == ""){
          uri.css({
            boxShadow: "0px 0px 5px red",
            borderColor: "red"
          });

          uri.attr("placeholder","URI can't be blank !").css({textShadow:  "1px 1px 1px gray",color: "red"});
          return false;
        }
        else{
          uri.css({
            boxShadow: "0px 0px 5px #4CC417",
            borderColor: "#4CC417"
          });
           // $("#new_textbook").submit();
        }
     
      });     
  

  //  uri in focus
  uri.focus(function(){
     uri.css({
              boxShadow: "0px 0px 5px #74B9F0",
              borderColor: "#74B9F0"
     });
     uri.attr("placeholder","URI...").css({color: "#555555", textShadow: "none"})
  });

// uri keyup show border green correct input
  uri.keyup(function(){
    if(uri.val().length >= 1){
      uri.css({boxShadow: "0px 0px 5px #4CC417", borderColor: "#4CC417", color: "#555555"});
    }

    else{
      uri.attr("placeholder","URI can't be blank!").css({boxShadow: "0px 0px 5px red",borderColor: "red", color: "red"});
    }
  });

// uri Lost focus
  uri.focusout(function(){
      uri.attr("placeholder","URI...").css({textShadow: "none",boxShadow: "0px 0px 0px #CCCCCC",borderColor: "#CCCCCC", color: "#555555"});
  });

});


jQuery(function() {
  return $('#rails-gen.display.table-custom-tutor').dataTable({
    sPaginationType: "full_numbers",
    bJQueryUI: true
  });
});
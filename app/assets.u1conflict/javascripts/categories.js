$(document).ready(
  function(){
   
    title = $(".catTitle");
    description = $(".catDesciption");
    submit =$(".catSubmit");
    spanlength = 65

// title lost focus
    title.focusout(function(){
      title.css({
              boxShadow: "0px 0px 0px #CCCCCC",
              borderColor: "#CCCCCC"
        });

       if(title.val().length >= 1){
        
        title.css({
              boxShadow: "0px 0px 5px #4CC417",
              borderColor: "#4CC417"
        });
      }

      else{
        title.css({
              boxShadow: "0px 0px 5px red",
              borderColor: "red"
        });
      }

    });
// title focus
    title.focus(function(){
      title.css({
              boxShadow: "0px 0px 5px #74B9F0",
              borderColor: "#74B9F0"
        });
      $(".catTitle").attr("placeholder","Title Name...").css({color: "#555555",textShadow:  "none"});

    });

// when title is not empty get blue border
    title.keyup(function(){
      
      $("div.char").text((spanlength - title.val().length) + " Charaters").css("color","#0C0075");

      if(title.val().length >= 1){
        
        title.css({
              boxShadow: "0px 0px 5px #4CC417",
              borderColor: "#4CC417"
        });
      }

      else{
        title.css({boxShadow: "0px 0px 5px red",borderColor: "red"});
      }

     }); 

// submit button save
    submit.click(function() {
        if(title.val() == ""){
          title.css({
            boxShadow: "0px 0px 5px red",
            borderColor: "red"
          });

          $(".catTitle").attr("placeholder","Title can't be blank !").css({
                                                                textShadow:  "1px 1px 1px gray",
                                                                color: "red"
                                                              });
          return false;
        }
        else if(title.val() != ""){
          title.css({
            boxShadow: "0px 0px 5px #4CC417",
            borderColor: "#4CC417"
          });
           $("#new_category").submit();
        }
     
      });   

  });

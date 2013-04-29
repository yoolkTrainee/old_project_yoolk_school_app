$(document).ready(function(){

  var title = $(".txt_textbook_title");
  var author = $(".txt_textbook_author");
  var publisher = $(".txt_textbook_publisher");
  var year = $(".txt_textbook_year");
  var uri = $(".txt_textbook_uri");
  var submit = $(".btn_textbook_submit");



// ========================================= Validation of Title ================================== 

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



// ========================================= Validation of Author ================================== 

//submit button SAVE
   submit.click(function() {
        if(author.val() == ""){
          author.css({
            boxShadow: "0px 0px 5px red",
            borderColor: "red"
          });

          author.attr("placeholder","Author can't be blank!").css({textShadow:  "1px 1px 1px gray",color: "red"});
          return false;
        }
        else{
          author.css({
            boxShadow: "0px 0px 5px #4CC417",
            borderColor: "#4CC417"
          });
           // $("#new_textbook").submit();
        }
     
      });     
  

  //  Author in focus
  author.focus(function(){
     author.css({
              boxShadow: "0px 0px 5px #74B9F0",
              borderColor: "#74B9F0"
     });
     author.attr("placeholder","Author Name...").css({color: "#555555", textShadow: "none"})
  });

// Author keyup show border green correct input
  author.keyup(function(){
    if(author.val().length >= 1){
      author.css({boxShadow: "0px 0px 5px #4CC417", borderColor: "#4CC417", color: "#555555"});
    }

    else{
      author.attr("placeholder","Author can't be blank!").css({boxShadow: "0px 0px 5px red",borderColor: "red", color: "red"});
    }
  });

// Author Lost focus
  author.focusout(function(){
      author.attr("placeholder","Author Name...").css({boxShadow:  "0px 0px 0px #CCCCCC",textShadow: "none" ,borderColor: "#CCCCCC", color: "#555555"});
  });


// ========================================= Validation of Publisher ================================== 

//submit button SAVE
   submit.click(function() {
        if(publisher.val() == ""){
          publisher.css({
            boxShadow: "0px 0px 5px red",
            borderColor: "red"
          });

          publisher.attr("placeholder","Publisher can't be blank!").css({textShadow:  "1px 1px 1px gray",color: "red"});
          return false;
        }
        else{
          publisher.css({
            boxShadow: "0px 0px 5px #4CC417",
            borderColor: "#4CC417"
          });
           // $("#new_textbook").submit();
        }
     
      });     
  

  //  Publisher in focus
  publisher.focus(function(){
     publisher.css({
              boxShadow: "0px 0px 5px #74B9F0",
              borderColor: "#74B9F0"
     });
     publisher.attr("placeholder","Publisher Name...").css({color: "#555555", textShadow: "none"})
  });

// Publisher keyup show border green correct input
  publisher.keyup(function(){
    if(publisher.val().length >= 1){
      publisher.css({boxShadow: "0px 0px 5px #4CC417", borderColor: "#4CC417", color: "#555555"});
    }

    else{
      publisher.attr("placeholder","Publisher can't be blank!").css({boxShadow: "0px 0px 5px red",borderColor: "red", color: "red"});
    }
  });

// Publisher Lost focus
  publisher.focusout(function(){
      publisher.attr("placeholder","Publisher Name...").css({boxShadow:  "0px 0px 0px #CCCCCC",textShadow: "none",borderColor: "#CCCCCC", color: "#555555"});
  });



// ========================================= Validation of year ================================== 

//submit button SAVE
   submit.click(function() {
        if(year.val() == ""){
          year.css({
            boxShadow: "0px 0px 5px red",
            borderColor: "red"
          });

          year.attr("placeholder","Year can't be blank!").css({textShadow:  "1px 1px 1px gray",color: "red"});
          return false;
        }
        else{
          year.css({
            boxShadow: "0px 0px 5px #4CC417",
            borderColor: "#4CC417"
          });
           // $("#new_textbook").submit();
        }
     
      });     
  

  //  year in focus
  year.focus(function(){
     year.css({
              boxShadow: "0px 0px 5px #74B9F0",
              borderColor: "#74B9F0"
     });
     year.attr("placeholder","Year...").css({color: "#555555", textShadow: "none"})
  });

// year keyup show border green correct input
  year.keyup(function(){
    if(year.val().length >= 1){
      year.css({boxShadow: "0px 0px 5px #4CC417", borderColor: "#4CC417", color: "#555555"});
    }

    else{
      year.attr("placeholder","Year can't be blank!").css({boxShadow: "0px 0px 5px red",borderColor: "red", color: "red"});
    }
  });

// year Lost focus
  year.focusout(function(){
      year.attr("placeholder","Year...").css({boxShadow:  "0px 0px 0px #CCCCCC",textShadow: "none",borderColor: "#CCCCCC", color: "#555555"});
  });


// ========================================= Validation of URI ================================== 

//submit button SAVE
   submit.click(function() {
        if(uri.val() == ""){
          uri.css({
            boxShadow: "0px 0px 5px red",
            borderColor: "red"
          });

          uri.attr("placeholder","URI can't be blank!").css({textShadow:  "1px 1px 1px gray",color: "red"});
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

// year keyup show border green correct input
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
      uri.attr("placeholder","URI...").css({boxShadow:  "0px 0px 0px #CCCCCC",textShadow: "none",borderColor: "#CCCCCC", color: "#555555"});
  });



});

jQuery(function() {
  return $('#rails-gen.display.table-custom-textbook').dataTable({
    sPaginationType: "full_numbers",
    bJQueryUI: true
  });
});
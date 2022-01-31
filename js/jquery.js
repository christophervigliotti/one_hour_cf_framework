$(function() {

    // AJAX

    $('#code').load('js/jquery.js', function(response, status){
        if(status == 'error'){
            alert('file not found');
        }
    });

    // Selectors

    // CSS
    $( ".italics" ).on( "click", function(event) {
        // console.log('<' + event.target.nodeName  + '> of class ".italics" was clicked');
        $(event.target).toggleClass('strike');
    });

    // HTML
    $( "button" ).on( "click", function(event) {
        // console.log('button was clicked, toggling the class of all button elements...');
        $('button').each(function(index){
            $(this).toggleClass('btn-primary');
            $(this).toggleClass('btn-danger');
        });
    });

    // ID (examples below, preferred method for single targets)

    // DOM Manipulation

    $( "#add_an_element" ).on( "click", function(event) {
        $('#dom_add_ul').append('<li>List Item ' + generateString(15) + '</li>');
        remove_element_a_state_handler();
     });
 
     $( "#replace_elements" ).on( "click", function(event) {
        $('#dom_add_ul li').each(function(index){
            $(this).replaceWith('<li>List Item ' + generateString(15) + '</li>');
        });
    });

    $( "#remove_element_a" ).on( "click", function(event) {
        console.log('use detatch() if you want jQuery to "keep" the removed item (and remember associated event handlers etc')
        $('#dom_add_ul li:first').remove();
        remove_element_a_state_handler();
    });
      
}); 

function remove_element_a_state_handler(){
    if($('#dom_add_ul li').length == 0){
        console.log('wat');
        $('#remove_element_a').removeClass('btn-primary');
        $('#remove_element_a').addClass('btn-danger');
    }else{
        $('#remove_element_a').addClass('btn-primary');
        $('#remove_element_a').removeClass('btn-danger');
    }
}

const characters ='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';

function generateString(length) {
    let result = ' ';
    const charactersLength = characters.length;
    for ( let i = 0; i < length; i++ ) {
        result += characters.charAt(Math.floor(Math.random() * charactersLength));
    }

    return result;
}
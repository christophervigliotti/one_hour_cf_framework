$(function() { // jquery ready

    var doLoadListener = false;

    /* 
    for this variation to work you will have to (1) set doLoadListener to true and (2) remove onclick="validateAndSubmit()" (use type 'button' and not type 'submit' to prevent the form from submitting)
    <input type="button" id="submit_button" class="btn btn-primary" value="check form fields" ></input>
    */
    if(doLoadListener){
        $( "#submit_button" ).on( "click", function(event) { // submit button click listener
            validateAndSubmit();
        });
    }
}); 

function validateAndSubmit(){
    var first_name = document.getElementById('first_name').value; // get this value using traditional js
    var last_name = $('#last_name').val(); // get this value using jquery
    var ajax_url = 'controller/controller.cfc?method=doForm&returnFormat=json';
    // ajax_url = 'README.md'; // this works (static file)

    if(first_name.length == 0 || last_name.length == 0){ // if form is not valid
        var alert_string = '';
        if(first_name.length == 0){
            alert_string += 'First Name cannot be blank. ';
        }
        if(last_name.length == 0){
            alert_string += 'Last Name cannot be blank. ';
        }
        console.log(alert_string);
        alert(alert_string);
    }else{ // form is valid
        $.ajax({ // make an ajax call
            type:"POST",
            url:ajax_url, // aka 'controller/controller.cfc?method=doForm' (var set above)
            data: {
                first_name: first_name, // one of the two arguments in the related ColdFusion function
                last_name: last_name    // the second of teo arguments in the related ColdFusion function
            },
            cache:false,
            success: function(msg){
                console.log(msg);
                alert(msg);
            }
        });
    }
}
$(function() { // jquery ready
    $( "#submit_button" ).on( "click", function(event) { // submit button click listener
        var first_name = document.getElementById('first_name').value; // get this value using traditional js
        var last_name = $('#last_name').val(); // get this value using jquery
        var ajax_url = 'controller/controller.cfc?method=doForm';
        // ajax_url = 'README.md'; // this works
        if(first_name.length == 0 || last_name.length == 0){
            var alert_string = '';
            if(first_name.length == 0){
                alert_string += 'First Name cannot be blank.';
            }
            if(last_name.length == 0){
                alert_string += 'Last Name cannot be blank.';
            }
            alert(alert_string);
        }else{
            $.ajax({
                type:"POST",
                url:ajax_url,
                data: {
                    first_name: first_name,
                    last_name: last_name
                },
                cache:false,
                success: function(msg){
                    console.log(msg);
                    alert(msg);
                }
            });
        }
    }); 
}); 
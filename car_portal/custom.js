$(document).ready(function(){

});

function removecar(id,idd) {
    $.ajax({
        url: "rd.php",
        type: "GET",
        data: {
            id: id
        },
        success: function(data){
            console.log(data);
            // window.location = 'http://localhost/car-portal/sellerview.php?id='.idd;
      }});
}
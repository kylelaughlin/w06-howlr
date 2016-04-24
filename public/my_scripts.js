function myFunction() {
    document.getElementById("demo").innerHTML = "Hello World";
}

document.getElementById("like-link").onclick = myOtherFunction;

function myOtherFunction() {
  var target = document.getElementById("like-link");
  var howlId = target.getAttribute("value");
  var postData = {howl_id: howlId};
  alert(postData);
  $.ajax({url: "/howls/like", method: "post", data: postData, success: function(result){
    $("#likes").html(result);}
            //$("#like").html(result);
        });
}

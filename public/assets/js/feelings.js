// Make sure we wait to attach our handlers until the DOM is fully loaded.
$(function() {
  $(".change-select").on("click", function(event) {
    var id = $(this).data("id");
    var newSelect = $(this).data("newselect");

    var newSelectState = {
      seected: newSelect
    };

    // Send the PUT request.
    $.ajax("/api/feelings/" + id, {
      type: "PUT",
      data: newSelectState
    }).then(
      function() {
        console.log("changed select to", newSelect);
        // Reload the page to get the updated list
        location.reload();
      }
    );
  });

  $(".create-form").on("submit", function(event) {
    // Make sure to preventDefault on a submit event.
    event.preventDefault();

    var newFeeling = {
      name: $("#ca").val().trim(),
      selected: $("[name=selected]:checked").val().trim()
    };

    // Send the POST request.
    $.ajax("/api/feelings", {
      type: "POST",
      data: newFeeling
    }).then(
      function() {
        console.log("created new feeling");
        // Reload the page to get the updated list
        location.reload();
      }
    );
  });

  // $(".delete-feeling").on("click", function(event) {
  //   var id = $(this).data("id");

  //   // Send the DELETE request.
  //   $.ajax("/api/feelings/" + id, {
  //     type: "DELETE"
  //   }).then(
  //     function() {
  //       console.log("deleted feeling", id);
  //       // Reload the page to get the updated list
  //       location.reload();
  //     }
  //   );
  // });
});

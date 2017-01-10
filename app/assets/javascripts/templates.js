$( function() {
    $( ".specific_exercise" ).draggable({
    	// helper: "clone", 
    	start: function () {
    		// $(this)
    		// console.log($(this));
    	}
    });
    $( ".day" ).droppable({
      drop: function( event, ui ) {
        $(this).append($(ui.draggable));
        console.log($(this).data("day"));
        $(this).append($('<input type="hidden" name="exercises[' + $(this).data("day") + ']" value="' + $(ui.draggable).attr("value") + '">'));

      }
    });
  } );

//drop into form, add to form, and delete original exercise

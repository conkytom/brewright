$(document).ready(function(){
    // the "href" attribute of the modal trigger must specify the modal ID that wants to be triggered

  $('.modal').modal({
    dismissible: true, // Modal can be dismissed by clicking outside of the modal
    opacity: .8, // Opacity of modal background
    inDuration: 200, // Transition in duration
    outDuration: 200, // Transition out duration
    
    startingTop: '2%', // Starting top style attribute
    endingTop: '5%', // Ending top style attribute
//    ready: function(modal, trigger) { // Callback for Modal open. Modal and trigger parameters available.
//      alert("Ready");
//      console.log(modal, trigger);
//    },
//    complete: function() { alert('Closed'); } // Callback for Modal close
  }
);
});
    
      //$('#textlink').each(function()
      //{
	//$( document).ready(function() {
	  $('#copy-description').zclip({
	    path:'~/ZeroClipboard.swf',
	    copy:$('p#description').text()
	  });
	//});
      //});
	/* 
      $('a#copy-description').zclip({
	  path:'js/ZeroClipboard.swf',
	  copy:$('p#description').text()
	  });
	  
	  // The link with ID "copy-description" will copy
	  // the text of the paragraph with ID "description"
	  $('a#copy-dynamic').zclip({
	  path:'js/ZeroClipboard.swf',
	  copy:function(){return $('input#dynamic').val();}
	  });
	  // The link with ID "copy-dynamic" will copy the current value
	  // of a dynamically changing input with the ID "dynamic"
      */

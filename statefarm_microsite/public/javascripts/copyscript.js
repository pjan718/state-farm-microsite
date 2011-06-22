    
      //$('#textlink').each(function()
      //{
	$(document).ready(function() {
	  $('#copy-description').zclip({
	    path:'/javascripts/ZeroClipboard.swf',
	    copy:$('p#description').text(),
	    afterCopy:function(){
		$(this).css('color','purple');
		$(this).next('.check').show();
	      }
	  });
	});
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

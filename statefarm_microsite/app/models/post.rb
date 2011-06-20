class Post < ActiveRecord::Base
    has_attached_file :photo,
	:styles => {
	  :tiny => "35x35",
	  :preview => "175x175",
	  :large => "300x300"
	  }
    has_attached_file :video
end

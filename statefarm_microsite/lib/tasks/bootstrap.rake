 namespace :bootstrap do
      desc 'Add the default admin tony.seing@ny.ddb.com'
      task :create_admin => :environment do
	  Admin.create!(:email => 'tony.seing@ny.ddb.com', :password => 'studio8', :confirm_password => 'studio8')
      end

     
 end
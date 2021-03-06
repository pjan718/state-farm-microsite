class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  
  VALID_EMAILS = %w(ddb.com ny.ddb.com)
  
protected
  def valid_email_domain(email_address)
    (email_address =~ /#{INVALID_EMAILS.map{|a| Regexp.quote(a)}.join("|")}/)
  end
end

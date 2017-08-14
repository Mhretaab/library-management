class Credential < ApplicationRecord
	has_one :user, :class_name => 'User', :foreign_key => 'credential_id'

	email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

	validates :username, :presence => true, :length => {:maximum => 50}
	validates :email, :presence => true, :format => {:with => email_regex}, :uniqueness => {:case_sensitive => false}
	validates :password, :presence => true, :length => {:within => 6..40}

	def self.authenticate(email, submitted_password)
		credential = where(email: email).take
		if credential.present?
			return credential if ((credential.password.to_s.strip).eql?(submitted_password.to_s.strip))
		end
		credential = where(username: email).take
		return nil if credential.nil?
		return credential if ((credential.password.to_s).eql?(submitted_password.to_s))
	end

end

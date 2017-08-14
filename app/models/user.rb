class User < ApplicationRecord
	belongs_to :credential, :class_name => 'Credential', :foreign_key => 'credential_id'

	has_many :user_groups, :dependent => :nullify
	has_many :groups, :through => :user_groups

	has_many :issuances, :class_name => 'Issuance', :foreign_key => 'issuer_id'
	has_many :issuances, :class_name => 'Issuance', :foreign_key => 'issued_to_id'
end

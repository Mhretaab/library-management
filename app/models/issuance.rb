class Issuance < ApplicationRecord
	belongs_to :book
	belongs_to :user, :class_name => 'User', :foreign_key => 'issuer_id'
	belongs_to :user, :class_name => 'User', :foreign_key => 'issued_to_id'
end

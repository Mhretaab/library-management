json.extract! user, :id, :uuid, :first_name, :last_name, :id_card, :phone, :address_line_one, :address_line_two, :zipcode, :credential_id, :created_at, :updated_at
json.url user_url(user, format: :json)

json.extract! issuance, :id, :uuid, :book_id, :issuer_id, :issued_to_id, :issuance_date, :return_date, :remark, :created_at, :updated_at
json.url issuance_url(issuance, format: :json)

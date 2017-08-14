json.extract! book, :id, :uuid, :title, :author, :isbn, :pages_number, :total, :category_id, :created_at, :updated_at
json.url book_url(book, format: :json)

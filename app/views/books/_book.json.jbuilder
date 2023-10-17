json.extract! book, :id, :title, :description, :written_at, :author_id, :created_at, :updated_at
json.url book_url(book, format: :json)

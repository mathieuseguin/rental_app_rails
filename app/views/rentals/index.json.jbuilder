json.array!(@rentals) do |rental|
  json.extract! rental, :id, :name, :kind_id, :score, :user_id, :price, :instant_book
  json.url rental_url(rental, format: :json)
end

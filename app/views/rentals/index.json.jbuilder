json.array!(@rentals) do |rental|
  json.extract! rental, :id, :name, :score, :user_id, :price, :instant_book
  json.url user_rental_url(rental.user, rental, format: :json)

  json.kind rental.kind.name
  json.reviews_count rental.reviews.count
  json.user_liked [true, false].sample
  json.user do
    json.name rental.user.full_name
    json.profile_url user_url(rental.user)
  end
end

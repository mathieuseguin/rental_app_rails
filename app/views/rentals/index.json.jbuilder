json.array!(@rentals) do |rental|
  json.extract! rental, :id, :name, :score, :user_id, :price, :instant_book, :lat, :lng
  json.url user_rental_url(rental.user, rental, format: :json)

  json.kind rental.kind.name
  json.user_liked [true, false].sample
  json.user do
    json.name rental.user.full_name
    json.profile_url user_url(rental.user)
    json.profile_picture_url rental.user.avatar(:thumb)
  end
  json.pictures rental.pictures do |pic|
    json.url pic.file(:medium)
  end
  json.reviews_count rental.reviews.count
  json.reviews rental.reviews do |review|
    json.user do
      json.name review.user.full_name
      json.profile_url user_url(review.user)
      json.profile_picture_url review.user.avatar(:thumb)
    end
    json.content review.content
  end
end

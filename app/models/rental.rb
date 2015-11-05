class Rental < ActiveRecord::Base
  belongs_to :city
  belongs_to :kind
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :availabilities, dependent: :destroy
  accepts_nested_attributes_for :availabilities, allow_destroy: true

  def self.all_by_availability(start_date, end_date)
    start_date = start_date.to_date
    end_date = end_date.to_date
    nb_days = (end_date - start_date).to_i

    sql = %(
      SELECT rental_id
      FROM (
        SELECT COUNT(*) AS count_all, rental_id AS rental_id
        FROM "availabilities"
        WHERE (DATE(availabilities.day) >= DATE(?) AND DATE(availabilities.day) <  DATE(?))
        GROUP BY "availabilities"."rental_id"
      ) AS tmp
      WHERE tmp.count_all = ?
    )

    Rental.joins(%(
      INNER JOIN (#{ActiveRecord::Base.send(:sanitize_sql_array, [sql, start_date, end_date, nb_days])})
      AS rentals_tmp
      ON rentals.id = rentals_tmp.rental_id
    ))
  end
end

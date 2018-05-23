columns = %i[name latitude longitude description slug address main_direction_id active for_main_page hotel_category_id rating review_count min_price]
values = CSV.read("#{Rails.root}/db/seeds/11-hotels.csv")
Hotel.delete_all
Hotel.import columns, values


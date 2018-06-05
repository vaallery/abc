Place.delete_all

columns = %i[name latitude longitude place_category main_direction_id metro_line_id active]
values = CSV.read("#{Rails.root}/db/seeds/12-places.csv")
Place.import columns, values

columns = %i[name latitude longitude place_category main_direction_id slug active]
values = CSV.read("#{Rails.root}/db/seeds/12-1-moscow.csv")
Place.import columns, values

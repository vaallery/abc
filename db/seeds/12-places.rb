columns = %i[name latitude longitude place_category main_direction_id active metro_line_id]
values = CSV.read("#{Rails.root}/db/seeds/12-places.csv")
Place.delete_all
Place.import columns, values

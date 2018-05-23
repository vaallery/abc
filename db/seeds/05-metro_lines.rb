columns = %i[id direction_id name color]
values = CSV.read("#{Rails.root}/db/seeds/05-metro_lines.csv")
MetroLine.delete_all
MetroLine.import columns, values

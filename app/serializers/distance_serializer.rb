class DistanceSerializer < ActiveModel::Serializer
  attributes :id, :place_category, :name, :distance, :color

  def place_category
    object.place&.place_category
  end

  def name
    object.place&.name
  end

  def distance
    object.length
  end

  def color
    object.place&.metro_line&.color
  end
end

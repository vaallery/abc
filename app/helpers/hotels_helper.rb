module HotelsHelper
  def pretty_distance(distance)
    if distance > 1000
      "#{(distance / 1000).round(1)} км."
    else
      "#{distance.round} м."
    end
  end

  def rating_formatted(rating)
    return 'Великолепно' if rating > 8
    return 'Хорошо' if rating > 6
    'Удовлетворительно'
  end
end

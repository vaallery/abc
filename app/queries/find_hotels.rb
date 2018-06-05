class FindHotels
  attr_accessor :initial_scope

  def initialize(initial_scope)
    @initial_scope = initial_scope
  end

  def call(filters)
    scoped = filter_by_accommodations(initial_scope, filters[:accommodations])
    scoped = filter_by_services(scoped, filters[:services])
    scoped
  end

  private

  def filter_by_accommodations(scoped, accommodation_ids)
    if accommodation_ids&.any?
      scoped.where(hotel_category_id: accommodation_ids)
    else
      scoped
    end
  end

  def filter_by_services(scoped, service_ids)
    if service_ids&.any?
      sql =
        "(select count(*)
          from hotels_services hs
          where hs.hotel_id=hotels.id
            and hs.service_id in (#{service_ids.join(',')}))>0"
      scoped.where(sql)
    else
      scoped
    end
  end
end

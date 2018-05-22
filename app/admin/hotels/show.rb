ActiveAdmin.register Hotel do
  show do # "##{event.id} #{event.title}"
    panel 'Основные' do
      columns do
        column do
          render 'mini_map', hotel: hotel
        end
        column do
          attributes_table_for hotel, :direction, :name, :hotel_category, :slug, :phone, :address, :latitude, :longitude, :active, :archive
        end
        column do
          panel 'Описание' do
            hotel.description&.html_safe
          end
        end
        column do
          panel 'Услуги' do
            table_for hotel.services do
              column nil, :name
            end
          end
        end
      end
    end

    panel 'Фотографии' do
      render '/admin/common/images', resource: hotel
    end

    if hotel.rooms.any?
      h2 'Номера'
    else
      h2 'Номеров нет'
    end

    hotel.rooms.each do |room|
      div for: room do
        panel room.name do
          columns do
            column do
              h3 'Спецификация'
              attributes_table_for room, :square, :bed1, :bed2, :rooms, :additional_bed
            end
            column do
              h3 'Услуги'
              table_for room.services do
                column nil, :name
              end
            end
            column span: 2 do
              h3 'Цены'
              table_for(room.configurations) do |t|
                t.column(:cost) { |conf| number_to_currency(conf.cost) }
                t.columns :guests_count, :stay_time, :active, :archive
                t.column(:services) { |conf| conf.services.collect(&:name).join(', ') }
              end
              h3 'Фотографии'
              render '/admin/common/images', resource: room
            end
          end
          div do
            span link_to 'Изменить', edit_admin_hotel_room_path(hotel, room)
            span '|'
            span link_to 'Удалить', admin_hotel_room_path(hotel, room),
                         method: :delete,
                         data: { confirm: 'Вы уверены, что хотите удалить номер?' }
          end
        end
      end
    end
  end
end

ActiveAdmin.register Hotel do
  form do |f|
    f.semantic_errors *f.object.errors.keys

    panel 'Основные' do
      f.inputs do
        f.input :name
        f.input :slug
        f.input :for_main_page
        f.input :active
        br
        f.input :services, as: :check_boxes, collection: Service.for_hotel.map{|i| [i[2], i[0]] }
        f.input :description, as: :ckeditor, label: false, input_html: { ckeditor: { toolbar: 'mini' } }
      end
    end
    panel 'Адрес и координаты' do

      columns do
        column do
          f.inputs do
            f.input :address
            li do
              link_to 'Показать на карте', '#', class: 'right mb-10', id: 'getCoordsLink'
            end
            f.input :latitude
            f.input :longitude
          end
        end
        column do
          f.latlng lang: :ru, map: :yandex, id_lat: 'hotel_latitude', id_lng: 'hotel_longitude', height: 300
        end
      end

    end
    panel 'Фотографии' do
      render '/admin/common/images', resource: hotel
      br
      f.inputs do
        f.input :images, as: :file, label: false, input_html: { multiple: true }
      end
    end

    f.actions
  end
end

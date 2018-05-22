# frozen_string_literal: true

ActiveAdmin.register Hotel do
  permit_params :direction_id, :name, :slug, :phone, :address,
                :latitude, :longitude, :active, :hotel_category,
                :description, :for_main_page, images: [], service_ids: [],
                rooms_attributes: [
                  :id, :name, :description, :square, :bed1, :bed2,
                  :rooms, :additional_bed, :active,
                  configurations_attributes: %i[
                    id name
                  ]
                ]


  before_action :set_flags, only: [:edit]

  controller do
    def set_flags
      @remove_picture_link = true
    end

    def create
      create! do |format|
        format.html { redirect_to admin_hotel_path(resource), notice: 'Отель успешно создан' }
      end
    end

    def update
      update! do |format|
        format.html { redirect_to admin_hotel_path(resource), notice: 'Обновление успешно завершено' }
      end
    end
  end
end

ActiveAdmin.register Room do
  permit_params :name, :description, :square, :bed1, :bed2, :rooms,
                :additional_bed, :active, :bed, :services_description,
                service_ids: [], images: [],
                configurations_attributes: [
                  :id, :cost, :guests_count, :active, :stay_time_id, :_destroy, service_ids: []
                ]

  before_action :set_flags, only: [:edit]

  controller do
    def set_flags
      @remove_picture_link = true
    end

    def create
      create! do |format|
        format.html { redirect_to admin_hotel_path(resource.hotel), notice: 'Номер успешно создан' }
      end
    end

    def update
      update! do |format|
        format.html { redirect_to admin_hotel_path(resource.hotel), notice: 'Обновление данных выполнено' }
      end
    end

    def destroy
      destroy! do |format|
        format.html { redirect_to admin_hotel_path(resource.hotel), notice: 'Удаление номера выполнено' }
      end
    end
  end
end

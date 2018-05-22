class ApplicationController < ActionController::Base
  # TODO Этому методу тут не место. Выяснить где контроллер исключительно для админки.
  def set_admin_locale
    I18n.locale = :ru
  end
end

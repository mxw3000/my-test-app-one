class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  # ----------------------------------------------
  # ## definicje zmiennych globalnych aplikacji ##
  # ----------------------------------------------

  # ## konfiguracja systemu ##

  # -- wersja top-menu (manual override)
  def self.menu_mode
    'static_top'      # dostępne opcje:  - static_default
                      #                  - static_top (<- wybrane, już nie zmieniać)
                      #                  - fixed_top
  end

  # ## development switches ##

  # -- dodatkowe opcje w top-menu
  def self.test_mode
    true
  end

  # -- lokalny tryb debugowania (dotyczy view)
  def self.debug_mode
    false
  end

  # -- data i czas wywołania strony
  def self.time1
      Time.now
  end

  def self.cyear
    time1.strftime('%Y')
  end

  # ----------------------------------------------

end

class ApplicationController < ActionController::Base
  before_action :current_user

  def current_user
    puts "------------------ code before every request ------------------"
    @current_user = User.find_by({ "id" => session["email"] })
  end

end

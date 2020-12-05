class ApplicationController < ActionController::Base
  before_action :set_cable_code

  private
  # Action Cable用ユーザー識別
  def set_cable_code
    cookies.signed[:cable_code] ||= SecureRandom.hex
  end
end

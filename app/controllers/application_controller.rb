class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def healthcheck
    render html: 'OK'
  end
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Devise authentication
  before_action :authenticate_user!

  def render_new
    render template: 'layouts/new'
  end

  def render_edit
    render template: 'layouts/edit'
  end

end

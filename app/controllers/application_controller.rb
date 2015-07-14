class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_namespace
  layout :set_layout

  private

  def set_layout
    "default_#{@namespace}/#{@namespace}" if @namespace != "devise"
  end

  def set_namespace
    @namespace = controller_path.split('/')[0]
  end
end

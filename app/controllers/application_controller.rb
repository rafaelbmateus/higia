require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  protect_from_forgery with: :exception

  protected
  def devise_parameter_sanitizer
    if resource_class == Doctor
      Doctor::ParameterSanitizer.new(Doctor, :doctor, params)
    elsif resource_class == Patient
      Patient::ParameterSanitizer.new(Patient, :patient, params)
    else
      super # Use the default one
    end
  end
end
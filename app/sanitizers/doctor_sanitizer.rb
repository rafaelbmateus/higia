class Doctor::ParameterSanitizer < Devise::ParameterSanitizer
  def initialize(*)
    super
    permit(:sign_up, keys: [:hospital_id, :name, :email])
  end
end
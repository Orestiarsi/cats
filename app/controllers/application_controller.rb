class ApplicationController < ActionController::API
 rescue_from ActiveRecord::RecordNotFound do |exception|
  respond_to :json
  render json: { error: exception.message }, status: :not_found
 end

end

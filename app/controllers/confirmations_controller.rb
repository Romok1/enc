class ConfirmationsController < Devise::ConfirmationsController
  respond_to :html, :json

  private

  def after_confirmation_path_for(_resource_name, resource)
    sign_in(resource)
    authenticated_root_path
  end
end

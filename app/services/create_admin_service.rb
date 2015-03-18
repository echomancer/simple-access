class CreateAdminService
  def call
    user = User.find_or_create_by!(email: Rails.application.secrets.admin_email) do |user|
    	user.name = Rails.application.secrets.admin_name
        user.password = Rails.application.secrets.admin_password
        user.password_confirmation = Rails.application.secrets.admin_password
    end
    user = User.find_or_create_by!(email: Rails.application.secrets.admin_email_too) do |user|
    	user.name = Rails.application.secrets.admin_name_too
        user.password = Rails.application.secrets.admin_password_too
        user.password_confirmation = Rails.application.secrets.admin_password_too
    end
  end
end

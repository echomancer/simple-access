class CreateAdminService
  def call
    user = User.find_or_create_by!(email: ENV['USER1']) do |user|
        user.password = ENV['PASS1']
        user.password_confirmation = ENV['PASS1']
    end
    user = User.find_or_create_by!(email: ENV['USER2']) do |user|
    	user.password = ENV['PASS2']
    	user.password_confirmation = ENV['PASS2']
    end
  end
end

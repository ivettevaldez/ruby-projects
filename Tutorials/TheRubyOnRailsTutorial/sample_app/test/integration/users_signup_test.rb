require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

	test "invalid_signup_information" do
		get sign_up_path
		assert_no_difference 'User.count' do
			before_count = User.count
			post users_path, user: {name: 					  "",
									email: 		  "user@invalid",
									password: 			   "foo",
									password_confirmation: "bar"}
		end
		assert_template "users/new"
	end

	test "valid_signup_information" do
		get sign_up_path
		assert_difference 'User.count', 1 do
			before_count = User.count
			post_via_redirect users_path, user: {name: "Example User",
										  		 email: "user@example.com",
										  		 password: 			  	"password",
										  		 password_confirmation: "password"}
		end
		assert_template "users/show"
		assert is_logged_in?
	end

end

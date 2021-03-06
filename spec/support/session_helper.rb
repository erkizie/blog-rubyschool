def sign_up
  visit new_user_registration_path

  fill_in :user_email, :with => 'user@example.com'
  fill_in :user_username, :with => 'username_example'
  fill_in :user_password, :with => 'password_example'
  fill_in :user_password_confirmation, :with => 'password_example'

  click_button 'Sign up'
end
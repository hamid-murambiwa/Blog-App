require 'rails_helper'

RSpec.describe 'Login', type: :feature do
  describe 'login' do
    before(:each) do
      User.create(
        name: 'Hamid',
        password: '111111',
        bio: 'First time user',
        email: '1@gmail.com',
        confirmed_at: Time.now,
        posts_counter: 0
    )
    end
    it 'should show the correct content' do
      visit new_user_session_path
      expect(page).to have_content('Login')
      expect(page).to have_content('Email')
      expect(page).to have_content('Password')
    end

    it 'Without filling email and password inputs' do
      visit new_user_session_path
      fill_in 'Email', with: ''
      fill_in 'Password', with: ''
      click_button 'Log in'
      expect(page).to have_content('Invalid Email or password.')
    end

    it 'Fill in with incorrect email and password inputs' do
      visit new_user_session_path
      fill_in 'Email', with: 'gmail.com'
      fill_in 'Password', with: '11122'
      click_button 'Log in'
      expect(page).to have_content('Invalid Email or password.')
    end

    it 'Fill in with correct email and password inputs' do
      visit new_user_session_path
      fill_in 'Email', with: '1@gmail.com'
      fill_in 'Password', with: '111111'
      click_button 'Log in'
      expect(page).to have_content('Signed in successfully.')
      expect(page).to have_current_path root_path
    end
  end
end

require 'rails_helper'

RSpec.describe 'Login', type: :feature do
  describe 'User' do
    before(:each) do
        @firstUser = User.create(name: 'Hamid', password: '111111', bio: 'First time user', email: '1@gmail.com',
        confirmed_at: Time.now, posts_counter: 0)
        @secondUser = User.create(name: 'Murambiwa', password: '222222', bio: 'My second account', email: '2@gmail.com',
        confirmed_at: Time.now, posts_counter: 0)
        visit root_path
        fill_in 'Email', with: '1@gmail.com'
        fill_in 'Password', with: '111111'
        click_button 'Log in'
        visit root_path
    end

    it 'Should show the usernames all the users' do
        expect(page).to have_content('Hamid')
        expect(page).to have_content('Murambiwa')
    end

    it 'Should show the profile picture for each user' do
        image = page.all('img')
        expect(image.size).to eql(2)
    end

    it 'Should show the number of posts each user has written' do
        expect(page).to have_content('Number of posts: 0')
    end

    it "When a user clicks on a user the app should redirect you to the user's show page" do
        click_on 'Hamid'
        expect(page).to have_current_path user_path(@firstUser)
        expect(page).to have_no_content('Murambiwa')
    end
  end
end
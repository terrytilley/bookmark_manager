require 'web_helper'

feature "User sign up" do
  scenario "New users can sign up" do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome, alice@wonderland.com')
    expect(User.first.email).to eq('alice@wonderland.com')
  end
end

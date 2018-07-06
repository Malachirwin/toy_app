require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  render_views

  it "gets new" do
    get :new
    expect(response).to have_http_status(:success)
    assert_select 'h1', 'New User'
  end

  it "gets index" do
    get :index
    expect(response).to have_http_status(:success)
    assert_select 'h1', 'Users'
    assert_select 'th', 'Name'
    assert_select 'th', 'Email'
  end
end

require 'rails_helper'

RSpec.describe MicropostsController, type: :controller do

  render_views

  it "gets new" do
    get :new
    expect(response).to have_http_status(:success)
    assert_select 'h1', 'New Micropost'
  end

  it "gets index" do
    get :index
    expect(response).to have_http_status(:success)
    assert_select 'h1', 'Microposts'
    assert_select 'th', 'Content'
    assert_select 'th', 'User'
  end
end

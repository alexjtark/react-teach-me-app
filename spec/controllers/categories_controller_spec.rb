require 'rails_helper'

describe CategoriesController do
  let(:category) {FactoryGirl.create(:category)}

  it "shows a category with a success response" do
    get :show, id: category
	    expect(response).to have_http_status(:success)
  end

  it "renders the index template" do
    get :show, id: category
      expect(response).to render_template("show")
  end
end
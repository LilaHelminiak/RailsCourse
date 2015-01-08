require 'rails_helper'

RSpec.describe "Words", :type => :request do

  before do
    def controller.index
      render :template => "words"
    end
  end

  describe "index" do
    it "renders the template" do
      get :index
      response.should render_template :index
    end
  end
end

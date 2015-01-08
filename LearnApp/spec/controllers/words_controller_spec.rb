require 'spec_helper'
require 'rails_helper'

RSpec.describe WordsController, :type => :controller do

  it "create new object" do
    post 'new'
    expect(response).to render_template(:new) 
  end

  it "show index" do
    post 'index'
    expect(response).to render_template(:index) 
  end

end

class AdminPanelController < ApplicationController
  def index
    @uniq_categories = Category.all.group_by(&:name);
  end
end

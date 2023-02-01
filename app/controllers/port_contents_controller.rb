class PortContentsController < ApplicationController
  def index
    @portfolio_items = PortContent.all
  end
end

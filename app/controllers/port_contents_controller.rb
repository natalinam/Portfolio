class PortContentsController < ApplicationController
  def index
    @portfolio_items = PortContent.all
  end

  def new
    @portfolio_items = PortContent.new
  end

  def create
    @portfolio_items = PortContent.new(params.require(:port_content).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_items.save
        format.html { redirect_to port_contents_path, notice: "Blog was successfully created." }
        format.json { render :show, status: :created, location: @portfolio_items }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  end

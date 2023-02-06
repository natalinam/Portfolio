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

  def edit
    @portfolio_items = PortContent.find(params[:id])
  end

  def update
    @portfolio_items = PortContent.find(params[:id])

    respond_to do |format|
      if @portfolio_items.update(params.require(:port_content).permit(:title, :subtitle, :body))
        format.html { redirect_to port_contents_path, notice: "Record was successfully updated." }
        format.json { render :show, status: :ok, location: @portfolio_items }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def show
    @portfolio_items = PortContent.find(params[:id])
  end

  def destroy

    end

  end

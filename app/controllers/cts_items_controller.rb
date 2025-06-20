class CtsItemsController < ApplicationController
  before_action :set_cts_item, only: %i[ show edit update destroy ]

  def index
    @cts_items = CtsItem.all
  end

  def show
  end

  def new
    @cts_item = CtsItem.new
  end

  def edit
  end

  def create
    @cts_item = CtsItem.new(cts_item_params)

    respond_to do |format|
      if @cts_item.save
        format.html { redirect_to @cts_item, notice: "Cts item was successfully created." }
        format.json { render :show, status: :created, location: @cts_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cts_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @cts_item.update(cts_item_params)
        format.html { redirect_to @cts_item, notice: "Cts item was successfully updated." }
        format.json { render :show, status: :ok, location: @cts_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cts_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @cts_item.destroy!

    respond_to do |format|
      format.html { redirect_to cts_items_path, status: :see_other, notice: "Cts item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_cts_item
      @cts_item = CtsItem.find(params[:id])
    end

    def cts_item_params
      params.require(:cts_item).permit(:technical_data, :ordering_information, :connection_data, :dimensions, :image)
    end
    
end

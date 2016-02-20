class ShirtOrdersController < ApplicationController
  before_action :set_shirt_order, only: [:show, :edit, :update, :destroy]

  # GET /shirt_orders
  # GET /shirt_orders.json
  def index
    @shirt_orders = ShirtOrder.all
  end

  # GET /shirt_orders/1
  # GET /shirt_orders/1.json
  def show
  end

  # GET /shirt_orders/new
  def new
    @shirt_order = ShirtOrder.new
  end

  # GET /shirt_orders/1/edit
  def edit
  end

  # POST /shirt_orders
  # POST /shirt_orders.json
  def create
    @shirt_order = ShirtOrder.new(shirt_order_params)

    respond_to do |format|
      if @shirt_order.save
        format.html { redirect_to @shirt_order, notice: 'Shirt order was successfully created.' }
        format.json { render :show, status: :created, location: @shirt_order }
      else
        format.html { render :new }
        format.json { render json: @shirt_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shirt_orders/1
  # PATCH/PUT /shirt_orders/1.json
  def update
    respond_to do |format|
      if @shirt_order.update(shirt_order_params)
        format.html { redirect_to @shirt_order, notice: 'Shirt order was successfully updated.' }
        format.json { render :show, status: :ok, location: @shirt_order }
      else
        format.html { render :edit }
        format.json { render json: @shirt_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shirt_orders/1
  # DELETE /shirt_orders/1.json
  def destroy
    @shirt_order.destroy
    respond_to do |format|
      format.html { redirect_to shirt_orders_url, notice: 'Shirt order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shirt_order
      @shirt_order = ShirtOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shirt_order_params
      params.require(:shirt_order).permit(:shirt_size, :number, :fulfilled, :house)
    end
end

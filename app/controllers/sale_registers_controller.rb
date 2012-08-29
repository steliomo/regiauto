class SaleRegistersController < ApplicationController
  # GET /sale_registers
  # GET /sale_registers.xml
  def index
    @sale_registers = SaleRegister.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sale_registers }
    end
  end

  # GET /sale_registers/1
  # GET /sale_registers/1.xml
  def show
    @sale_register = SaleRegister.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sale_register }
    end
  end

  # GET /sale_registers/new
  # GET /sale_registers/new.xml
  def new
    @sale_register = SaleRegister.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sale_register }
    end
  end

  # GET /sale_registers/1/edit
  def edit
    @sale_register = SaleRegister.find(params[:id])
  end

  # POST /sale_registers
  # POST /sale_registers.xml
  def create
    @sale_register = SaleRegister.new(params[:sale_register])

    respond_to do |format|
      if @sale_register.save
        format.html { redirect_to(@sale_register, :notice => 'Sale register was successfully created.') }
        format.xml  { render :xml => @sale_register, :status => :created, :location => @sale_register }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sale_register.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sale_registers/1
  # PUT /sale_registers/1.xml
  def update
    @sale_register = SaleRegister.find(params[:id])

    respond_to do |format|
      if @sale_register.update_attributes(params[:sale_register])
        format.html { redirect_to(@sale_register, :notice => 'Sale register was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sale_register.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sale_registers/1
  # DELETE /sale_registers/1.xml
  def destroy
    @sale_register = SaleRegister.find(params[:id])
    @sale_register.destroy

    respond_to do |format|
      format.html { redirect_to(sale_registers_url) }
      format.xml  { head :ok }
    end
  end
end

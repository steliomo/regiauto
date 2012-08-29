class MainRegistersController < ApplicationController
  # GET /main_registers
  # GET /main_registers.xml
  def index
    @main_registers = MainRegister.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @main_registers }
    end
  end

  # GET /main_registers/1
  # GET /main_registers/1.xml
  def show
    @main_register = MainRegister.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @main_register }
    end
  end

  # GET /main_registers/new
  # GET /main_registers/new.xml
  def new
    @main_register = MainRegister.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @main_register }
    end
  end

  # GET /main_registers/1/edit
  def edit
    @main_register = MainRegister.find(params[:id])
  end

  # POST /main_registers
  # POST /main_registers.xml
  def create
    @main_register = MainRegister.new(params[:main_register])

    respond_to do |format|
      if @main_register.save
        format.html { redirect_to(@main_register, :notice => 'Main register was successfully created.') }
        format.xml  { render :xml => @main_register, :status => :created, :location => @main_register }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @main_register.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /main_registers/1
  # PUT /main_registers/1.xml
  def update
    @main_register = MainRegister.find(params[:id])

    respond_to do |format|
      if @main_register.update_attributes(params[:main_register])
        format.html { redirect_to(@main_register, :notice => 'Main register was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @main_register.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /main_registers/1
  # DELETE /main_registers/1.xml
  def destroy
    @main_register = MainRegister.find(params[:id])
    @main_register.destroy

    respond_to do |format|
      format.html { redirect_to(main_registers_url) }
      format.xml  { head :ok }
    end
  end
end

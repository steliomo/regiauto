class ProprietaryRegistersController < ApplicationController
  # GET /proprietary_registers
  # GET /proprietary_registers.xml
  def index
    @proprietary_registers = ProprietaryRegister.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @proprietary_registers }
    end
  end

  # GET /proprietary_registers/1
  # GET /proprietary_registers/1.xml
  def show
    @proprietary_register = ProprietaryRegister.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @proprietary_register }
    end
  end

  # GET /proprietary_registers/new
  # GET /proprietary_registers/new.xml
  def new
    @proprietary_register = ProprietaryRegister.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @proprietary_register }
    end
  end

  # GET /proprietary_registers/1/edit
  def edit
    @proprietary_register = ProprietaryRegister.find(params[:id])
  end

  # POST /proprietary_registers
  # POST /proprietary_registers.xml
  def create
    @proprietary_register = ProprietaryRegister.new(params[:proprietary_register])

    respond_to do |format|
      if @proprietary_register.save
        format.html { redirect_to(@proprietary_register, :notice => 'Proprietary register was successfully created.') }
        format.xml  { render :xml => @proprietary_register, :status => :created, :location => @proprietary_register }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @proprietary_register.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /proprietary_registers/1
  # PUT /proprietary_registers/1.xml
  def update
    @proprietary_register = ProprietaryRegister.find(params[:id])

    respond_to do |format|
      if @proprietary_register.update_attributes(params[:proprietary_register])
        format.html { redirect_to(@proprietary_register, :notice => 'Proprietary register was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @proprietary_register.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /proprietary_registers/1
  # DELETE /proprietary_registers/1.xml
  def destroy
    @proprietary_register = ProprietaryRegister.find(params[:id])
    @proprietary_register.destroy

    respond_to do |format|
      format.html { redirect_to(proprietary_registers_url) }
      format.xml  { head :ok }
    end
  end
end

class ProprietariesController < ApplicationController
  before_filter :load_vehicles 
  
  # GET /proprietary
  # GET /proprietary.xml
  def index
    @proprietaries = Proprietary.where("name like ?", "%#{params[:q]}%")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @proprietary }
      format.json { render :json => @proprietaries.map(&:attributes) }
    end
  end

  # GET /proprietary/1
  # GET /proprietary/1.xml
  def show
    @proprietary = Proprietary.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @proprietary }
      format.js
    end
  end

  # GET /proprietary/new
  # GET /proprietary/new.xml
  def new
    @proprietary = Proprietary.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @proprietary}
      format.js
    end
  end

  # GET /proprietary/1/edit
  def edit
    @proprietary = Proprietary.find(params[:id])
  end

  # POST /proprietary
  # POST /proprietary.xml
  def create         
    @proprietary = Proprietary.new(params[:proprietary])

    respond_to do |format|
      if @proprietary.save
        format.html { redirect_to(@proprietary, :notice => 'Proprietary was successfully created.') }
        format.xml  { render :xml => @proprietary, :status => :created, :location => @proprietary}
        format.js
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @proprietary.errors, :status => :unprocessable_entity }
        format.js
      end
    end
  end
                    
  # PUT /proprietary/1
  # PUT /proprietary/1.xml
  def update        
    @proprietary = Proprietary.find(params[:id])

    respond_to do |format|
      if @proprietary.update_attributes(params[:proprietary])
        format.html { redirect_to(@proprietary, :notice => 'Proprietary was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @proprietary.errors, :status => :unprocessable_entity }
      end
    end
  end
                       
  # DELETE /proprietary/1
  # DELETE /proprietary/1.xml
  def destroy   
    @proprietary = Proprietary.find(params[:id])
    @proprietary.destroy
                
    respond_to do |format|
      format.html { redirect_to(proprietaries_url) }
      format.xml  { head :ok }
    end
  end
  
  protected
  
  def load_vehicles
    @vehicles = Vehicle.all.collect {|v| [v.mark, v.id]}
  end
  
end

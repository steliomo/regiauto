class HypothecsController < ApplicationController
  # GET /hypothecs
  # GET /hypothecs.xml
  def index
    @hypothecs = Hypothec.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hypothecs }
    end
  end

  # GET /hypothecs/1
  # GET /hypothecs/1.xml
  def show
    @hypothec = Hypothec.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hypothec }
    end
  end

  # GET /hypothecs/new
  # GET /hypothecs/new.xml
  def new
    @hypothec = Hypothec.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hypothec }
    end
  end

  # GET /hypothecs/1/edit
  def edit
    @hypothec = Hypothec.find(params[:id])
  end

  # POST /hypothecs
  # POST /hypothecs.xml
  def create
    @hypothec = Hypothec.new(params[:hypothec])

    respond_to do |format|
      if @hypothec.save
        format.html { redirect_to(@hypothec, :notice => 'Hypothec was successfully created.') }
        format.xml  { render :xml => @hypothec, :status => :created, :location => @hypothec }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hypothec.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hypothecs/1
  # PUT /hypothecs/1.xml
  def update
    @hypothec = Hypothec.find(params[:id])

    respond_to do |format|
      if @hypothec.update_attributes(params[:hypothec])
        format.html { redirect_to(@hypothec, :notice => 'Hypothec was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hypothec.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hypothecs/1
  # DELETE /hypothecs/1.xml
  def destroy
    @hypothec = Hypothec.find(params[:id])
    @hypothec.destroy

    respond_to do |format|
      format.html { redirect_to(hypothecs_url) }
      format.xml  { head :ok }
    end
  end
end

class MaxesController < ApplicationController
  # GET /maxes
  # GET /maxes.xml
  def index
    @maxes = Max.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @maxes }
    end
  end

  # GET /maxes/1
  # GET /maxes/1.xml
  def show
    @max = Max.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @max }
    end
  end

  # GET /maxes/new
  # GET /maxes/new.xml
  def new
    @max = Max.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @max }
    end
  end

  # GET /maxes/1/edit
  def edit
    @max = Max.find(params[:id])
  end

  # POST /maxes
  # POST /maxes.xml
  def create
    @max = Max.new(params[:max])

    respond_to do |format|
      if @max.save
        flash[:notice] = 'Max was successfully created.'
        format.html { redirect_to(@max) }
        format.xml  { render :xml => @max, :status => :created, :location => @max }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @max.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /maxes/1
  # PUT /maxes/1.xml
  def update
    @max = Max.find(params[:id])

    respond_to do |format|
      if @max.update_attributes(params[:max])
        flash[:notice] = 'Max was successfully updated.'
        format.html { redirect_to(@max) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @max.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /maxes/1
  # DELETE /maxes/1.xml
  def destroy
    @max = Max.find(params[:id])
    @max.destroy

    respond_to do |format|
      format.html { redirect_to(maxes_url) }
      format.xml  { head :ok }
    end
  end
end

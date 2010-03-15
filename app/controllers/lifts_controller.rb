class LiftsController < ApplicationController
    before_filter :authenticate
  # GET /lifts
  # GET /lifts.xml
  def index
    @lifts = Lift.all
    @exercises = Exercise.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lifts }
    end
  end

  # GET /lifts/1
  # GET /lifts/1.xml
  def show
    @lift = Lift.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lift }
    end
  end

  # GET /lifts/new
  # GET /lifts/new.xml
  def new
    @lift = Lift.new
    @exercises = Exercise.all

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lift }
    end
  end

  # GET /lifts/1/edit
  def edit
    @lift = Lift.find(params[:id])
  end

  # POST /lifts
  # POST /lifts.xml
  def create
    @lift = Lift.new(params[:lift])

    respond_to do |format|
      if @lift.save
        flash[:notice] = 'Lift was successfully created.'
        format.html { redirect_to(@lift) }
        format.xml  { render :xml => @lift, :status => :created, :location => @lift }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lift.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lifts/1
  # PUT /lifts/1.xml
  def update
    @lift = Lift.find(params[:id])

    respond_to do |format|
      if @lift.update_attributes(params[:lift])
        flash[:notice] = 'Lift was successfully updated.'
        format.html { redirect_to(@lift) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lift.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lifts/1
  # DELETE /lifts/1.xml
  def destroy
    @lift = Lift.find(params[:id])
    @lift.destroy

    respond_to do |format|
      format.html { redirect_to(lifts_url) }
      format.xml  { head :ok }
    end
  end
end

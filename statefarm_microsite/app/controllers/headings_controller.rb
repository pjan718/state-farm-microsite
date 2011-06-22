class HeadingsController < ApplicationController
  # GET /headings
  # GET /headings.xml
  def index
    @headings = Heading.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @headings }
    end
  end

  # GET /headings/1
  # GET /headings/1.xml
  def show
    @heading = Heading.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @heading }
    end
  end

  # GET /headings/new
  # GET /headings/new.xml
  def new
    @heading = Heading.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @heading }
    end
  end

  # GET /headings/1/edit
  def edit
    @heading = Heading.find(params[:id])
  end

  # POST /headings
  # POST /headings.xml
  def create
    @heading = Heading.new(params[:heading])

    respond_to do |format|
      if @heading.save
        format.html { redirect_to(@heading, :notice => 'Heading was successfully created.') }
        format.xml  { render :xml => @heading, :status => :created, :location => @heading }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @heading.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /headings/1
  # PUT /headings/1.xml
  def update
    @heading = Heading.find(params[:id])

    respond_to do |format|
      if @heading.update_attributes(params[:heading])
        format.html { redirect_to(@heading, :notice => 'Heading was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @heading.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /headings/1
  # DELETE /headings/1.xml
  def destroy
    @heading = Heading.find(params[:id])
    @heading.destroy

    respond_to do |format|
      format.html { redirect_to(headings_url) }
      format.xml  { head :ok }
    end
  end
end

class Admin::PagesController < ApplicationController
  layout 'admin'
  # GET /admin/pages
  # GET /admin/pages.xml
  def index
    @admin_pages = Admin::Page.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admin_pages }
    end
  end

  # GET /admin/pages/1
  # GET /admin/pages/1.xml
  def show
    @admin_page = Admin::Page.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @admin_page }
    end
  end

  # GET /admin/pages/new
  # GET /admin/pages/new.xml
  def new
    @admin_page = Admin::Page.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_page }
    end
  end

  # GET /admin/pages/1/edit
  def edit
    @admin_page = Admin::Page.find(params[:id])
  end

  # POST /admin/pages
  # POST /admin/pages.xml
  def create
    @admin_page = Admin::Page.new(params[:admin_page])

    respond_to do |format|
      if @admin_page.save
        format.html { redirect_to(@admin_page, :notice => 'Page was successfully created.') }
        format.xml  { render :xml => @admin_page, :status => :created, :location => @admin_page }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @admin_page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/pages/1
  # PUT /admin/pages/1.xml
  def update
    @admin_page = Admin::Page.find(params[:id])

    respond_to do |format|
      if @admin_page.update_attributes(params[:admin_page])
        format.html { redirect_to(@admin_page, :notice => 'Page was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @admin_page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/pages/1
  # DELETE /admin/pages/1.xml
  def destroy
    @admin_page = Admin::Page.find(params[:id])
    @admin_page.destroy

    respond_to do |format|
      format.html { redirect_to(admin_pages_url) }
      format.xml  { head :ok }
    end
  end
end

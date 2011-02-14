class Admin::ProjectsController < ApplicationController
  layout 'admin'
  # GET /admin/projects
  # GET /admin/projects.xml
  def index
    @admin_projects = Admin::Project.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admin_projects }
    end
  end

  # GET /admin/projects/1
  # GET /admin/projects/1.xml
  def show
    @admin_project = Admin::Project.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @admin_project }
    end
  end

  # GET /admin/projects/new
  # GET /admin/projects/new.xml
  def new
    @admin_project = Admin::Project.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_project }
    end
  end

  # GET /admin/projects/1/edit
  def edit
    @admin_project = Admin::Project.find(params[:id])
  end

  # POST /admin/projects
  # POST /admin/projects.xml
  def create
    @admin_project = Admin::Project.new(params[:admin_project])

    respond_to do |format|
      if @admin_project.save
        format.html { redirect_to(@admin_project, :notice => 'Project was successfully created.') }
        format.xml  { render :xml => @admin_project, :status => :created, :location => @admin_project }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @admin_project.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/projects/1
  # PUT /admin/projects/1.xml
  def update
    @admin_project = Admin::Project.find(params[:id])

    respond_to do |format|
      if @admin_project.update_attributes(params[:admin_project])
        format.html { redirect_to(@admin_project, :notice => 'Project was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @admin_project.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/projects/1
  # DELETE /admin/projects/1.xml
  def destroy
    @admin_project = Admin::Project.find(params[:id])
    @admin_project.destroy

    respond_to do |format|
      format.html { redirect_to(admin_projects_url) }
      format.xml  { head :ok }
    end
  end
end

class DashboardsController < ApplicationController
  before_action :dashboard, only: [:edit, :update, :destroy]

  def index
    @dashboards = Dashboard.all
  end

  def show
    @decorator = DashboardDecorator.new(
      dashboard: Dashboard.find(params[:id])
    )
  end

  def new
    @dashboard = Dashboard.new
  end

  def edit
  end

  def create
    @dashboard = Dashboard.new(dashboard_params)
    respond_to do |format|
      if @dashboard.save
        format.html { redirect_to @dashboard, notice: 'Dashboard was successfully created.' }
        format.json { render :show, status: :created, location: @dashboard }
      else
        format.html { render :new }
        format.json { render json: @dashboard.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @dashboard.update(dashboard_params)
        format.html { redirect_to @dashboard, notice: 'Dashboard was successfully updated.' }
        format.json { render :show, status: :ok, location: @dashboard }
      else
        format.html { render :edit }
        format.json { render json: @dashboard.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @dashboard.destroy
    respond_to do |format|
      format.html { redirect_to dashboards_url, notice: 'Dashboard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private def dashboard
    @dashboard ||= Dashboard.find(params[:id])
  end

  private def dashboard_params
    params
      .require(:dashboard)
      .permit(
        :owner_type,
        :owner_id,
       )
  end
end

class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  # GET /services
  # GET /services.json
  def index
    if !params[:category].present? and !params[:title].present?
      @services = Service.take(4)
    else
      if params[:category] != "Find Service" and params[:title].present?
        @services = Service.where(category: params[:category], title: params[:title]).take(4)
      elsif params[:category] == "Find Service" and params[:title].present?
        @services = Service.where(title: params[:title]).take(4)
      elsif params[:category] != "Find Service" and !params[:title].present?
        @services = Service.where(category: params[:category]).take(4)
      else
        @services = Service.take(4)
      end
    end
  end

  # GET /services/1
  # GET /services/1.json
  def show
  end

  # GET /services/new
  def new
    if current_user.profile.present?
      @service = Service.new
      @service.packages.build
      @service.requirements.build
      @service.faqs.build
    else
      redirect_to new_profile_url
    end
  end

  # GET /services/1/edit
  def edit
  end

  # POST /services
  # POST /services.json
  def create
    @service = current_user.services.new(service_params)
    @service.tags = service_params['tags'].split

    respond_to do |format|
      if @service.save
        # format.html { redirect_to @service, notice: 'Service was successfully created.' }
        format.html { redirect_to action: "index", notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @service }
      else
        format.html { render :new }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /services/1
  # PATCH/PUT /services/1.json
  def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to @service, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render :edit }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1
  # DELETE /services/1.json
  def destroy
    @service.destroy
    respond_to do |format|
      format.html { redirect_to services_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = current_user.services.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      # params.fetch(:service, {})
      params.require(:service).permit(:title, :category, :price, :tags, :description,
                                      packages_attributes: [:name, :description, :delivery_time,
                                      :revisions, :price, :service],
                                      requirements_attributes: [:description, :requirement_type, :is_mandatory],
                                      faqs_attributes: [:question, :answer])
    end
end

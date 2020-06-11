class Admin::CitiesController < AdminController
  before_action :set_city, only: [:edit, :show, :update, :destroy]

  # GET /admin/cities
  # GET /admin/cities.json
  def index
    cities = City.all.order(id: :desc)
    @cities = cities.page(params[:page]).per(params[:per])
  end

  # GET /admin/cities/1
  # GET /admin/cities/1.json
  def show
  end

  # GET /admin/cities/new
  def new
    @city = City.new
  end

  # GET /admin/cities/1/edit
  def edit

  end

  # POST /admin/cities
  # POST /admin/cities.json
  def create
    @city = City.new(city_params)
    respond_to do |format|
      if @city.save
        format.html { redirect_to [:admin, @city], notice: t('activerecord.models.city') + ' 已成功创建.' }
        format.json { render action: 'show', status: :created, location: @city }
      else
        format.html { render action: 'new' }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/cities/1
  # PATCH/PUT /admin/cities/1.json
  def update
    respond_to do |format|
      if @city.update(city_params)
        format.html { redirect_to [:admin, @city], notice: t('activerecord.models.city') + ' 已成功更新.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/cities/1
  # DELETE /admin/cities/1.json
  def destroy
    @city.destroy
    respond_to do |format|
      format.html { redirect_to admin_cities_url, notice: t('activerecord.models.city') + ' 已成功删除.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_city
    @city = City.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def city_params
    params.require(:city).permit(:name, :abbr, :sort)
  end
end
class Admin::StartPagesController < AdminController
  before_action :set_start_page, only: [:edit, :show, :update, :destroy]

  # GET /admin/start_pages
  # GET /admin/start_pages.json
  def index
    start_pages = StartPage.all.order(id: :desc)
    @start_pages = start_pages.page(params[:page]).per(params[:per])
  end

  # GET /admin/start_pages/1
  # GET /admin/start_pages/1.json
  def show
  end

  # GET /admin/start_pages/new
  def new
    @start_page = StartPage.new
  end

  # GET /admin/start_pages/1/edit
  def edit

  end

  # POST /admin/start_pages
  # POST /admin/start_pages.json
  def create
    @start_page = StartPage.new(start_page_params)
    respond_to do |format|
      if @start_page.save
        format.html { redirect_to [:admin, @start_page], notice: t('activerecord.models.start_page') + ' 已成功创建.' }
        format.json { render action: 'show', status: :created, location: @start_page }
      else
        format.html { render action: 'new' }
        format.json { render json: @start_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/start_pages/1
  # PATCH/PUT /admin/start_pages/1.json
  def update
    respond_to do |format|
      if @start_page.update(start_page_params)
        format.html { redirect_to [:admin, @start_page], notice: t('activerecord.models.start_page') + ' 已成功更新.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @start_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/start_pages/1
  # DELETE /admin/start_pages/1.json
  def destroy
    @start_page.destroy
    respond_to do |format|
      format.html { redirect_to admin_start_pages_url, notice: t('activerecord.models.column') + ' 已成功删除.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_start_page
    @start_page = StartPage.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def start_page_params
    params.require(:start_page).permit(:name, :url, :cover, :obj_id, :obj_type, :start_time, :end_time)
  end
end
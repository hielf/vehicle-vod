class Admin::CategoriesController < AdminController
  before_action :set_category, only: [:edit, :show, :update, :destroy]

  # GET /admin/categories
  # GET /admin/categories.json
  def index
    categories = Category.all.order(id: :desc)
    @categories = categories.page(params[:page]).per(params[:per])
  end

  # GET /admin/categories/1
  # GET /admin/categories/1.json
  def show
  end

  # GET /admin/categories/new
  def new
    @category = Category.new
  end

  # GET /admin/categories/1/edit
  def edit

  end

  # POST /admin/categories
  # POST /admin/categories.json
  def create
    @category = Category.new(category_params)
    respond_to do |format|
      if @category.save
        format.html { redirect_to [:admin, @category], notice: t('activerecord.models.category') + ' 已成功创建.' }
        format.json { render action: 'show', status: :created, location: @category }
      else
        format.html { render action: 'new' }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/categories/1
  # PATCH/PUT /admin/categories/1.json
  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to [:admin, @category], notice: t('activerecord.models.category') + ' 已成功更新.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/categories/1
  # DELETE /admin/categories/1.json
  def destroy
    has_use = @category.columns.exists?
    respond_to do |format|

      if has_use
        @notice = {status: false, message: '该分类已被使用，不能删除'}
        format.html { redirect_to admin_categories_url, notice: '不能删除' }
      else
        @category.destroy
        @notice = {status: true, message: '删除成功', obj_id: @category.id}
        format.html { redirect_to admin_categories_url, notice: t('activerecord.models.category') + ' 已成功删除.' }
        format.json { head :no_content }
      end
      format.js
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_category
    @category = Category.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def category_params
    params.require(:category).permit(:name, :sort, :status)
  end
end
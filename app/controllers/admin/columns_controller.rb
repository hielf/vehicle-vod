class Admin::ColumnsController < AdminController
  before_action :set_column, only: [:edit, :show, :update, :destroy]

  # GET /admin/columns
  # GET /admin/columns.json
  def index
    @q = Column.ransack(params[:q])
    @columns = @q.result.includes(:category).page(params[:page]).per(params[:per])
  end

  # GET /admin/columns/1
  # GET /admin/columns/1.json
  def show
  end

  # GET /admin/columns/new
  def new
    @column = Column.new
  end

  # GET /admin/columns/1/edit
  def edit

  end

  # POST /admin/columns
  # POST /admin/columns.json
  def create
    @column = Column.new(column_params)
    respond_to do |format|
      if @column.save
        format.html { redirect_to [:admin, @column], notice: t('activerecord.models.column') + ' 已成功创建.' }
        format.json { render action: 'show', status: :created, location: @column }
      else
        format.html { render action: 'new' }
        format.json { render json: @column.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/columns/1
  # PATCH/PUT /admin/columns/1.json
  def update
    respond_to do |format|
      if @column.update(column_params)
        format.html { redirect_to [:admin, @column], notice: t('activerecord.models.column') + ' 已成功更新.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @column.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/columns/1
  # DELETE /admin/columns/1.json
  def destroy
    respond_to do |format|
      if @column.has_use?
        notice_message = '该栏目已被使用，不能删除'
        @notice = {status: false, message: notice_message}
        format.html { redirect_to admin_columns_url, notice: notice_message }
      else
        @column.destroy
        @notice = {status: true, message: '删除成功', obj_id: @column.id}
        format.html { redirect_to admin_columns_url, notice: t('activerecord.models.column') + ' 已成功删除.' }
        format.json { head :no_content }
      end
      format.js
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_column
    @column = Column.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def column_params
    params.require(:column).permit!
  end
end
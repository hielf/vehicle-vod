class Admin::UsersController < AdminController
  before_action :set_user, only: [:edit, :update, :destroy]
  before_action { check_permission(:manage, User) }


  # GET /admin/users
  # GET /admin/users.json
  def index
    params_q = params[:q]
    roles = params[:q][:roles_in] if params_q.present?

    if params_q.present? && params_q[:roles_in].present?
      users = User.where('roles @> ?', "{#{params_q[:roles_in]}}")
      params[:q][:roles_in] = nil
    else
      users = User.all
    end

    @q=users.ransack(params[:q])
    params[:q][:roles_in] = roles if params_q.present?
    @users=@q.result.includes(:city).page(params[:page]).per(params[:per])
  end

  # GET /admin/users/1
  # GET /admin/users/1.json
  def show
    @user = User.find(params[:id])
  end

  # GET /admin/users/new
  def new
    @user = User.new
  end

  # GET /admin/users/1/edit
  def edit

  end

  # POST /admin/users
  # POST /admin/users.json
  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to [:admin, @user], notice: t('activerecord.models.user') + ' 已成功创建.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/users/1
  # PATCH/PUT /admin/users/1.json
  def update
    respond_to do |format|
      if user_params[:roles].blank?
        @user.roles = []
      end
      if @user.update(user_params)
        format.html { redirect_to [:admin, @user], notice: t('activerecord.models.user') + ' 已成功更新.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/users/1
  # DELETE /admin/users/1.json
  def destroy
    respond_to do |format|
      if @user.id != @current_user.id
        @user.destroy
        format.html { redirect_to admin_users_url, notice: t('activerecord.models.user') + ' 已成功删除.' }
        format.json { head :no_content }
      end
      format.html { redirect_to admin_users_url, alert: '不能删除自己' }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:username, :nickname, :mobile, {:roles => []}, :gender, :city_id)
  end

end

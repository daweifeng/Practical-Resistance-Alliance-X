class CategoryController < ApplicationController
  before_action :set_user, only: [:new]
  def index
    query = Category.select(:name).map(&:name).uniq
    @categories = []
    query.each do |q|
        @categories.push(q)
    end
  end

  def create
    @category_data = JSON.parse(request.body.read)
    @category = Category.create!({
      :name => @category_data["name"]
    })
    redirect_to "/category/index"
  end

  def new
  end

  def show
    @kind = params[:kind]
    @category = Category.where(name: @kind).first
    @toolkits = @category.toolkits.uniq
  end

  def display
      @id = params[:id]
      @kind = params[:kind]
      @toolkit = Toolkit.where(id: @id).first
      @steps = @toolkit.steps.order({:number => :asc})
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = current_user
      unless @user
        flash[:danger] = "Please log in"
        redirect_to login_path
      end
    end
end

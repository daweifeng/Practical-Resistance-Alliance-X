class ToolkitController < ApplicationController
  require 'set'
  before_action :set_user, only: [:edit, :new]

  def create
    @toolkit_data = JSON.parse(request.body.read)
    @toolkit = Toolkit.create!({
      :title => @toolkit_data["title"], 
      :author => "Unknown", 
      :category => @toolkit_data["category"],
      :overview => @toolkit_data["overview"]
    })
    @toolkit_data["steps"].each {|step, content|
      @toolkit.steps.create({:content => content, :number => step})
    }
    redirect_to "/category/"+@toolkit.category+"/"+@toolkit.id.to_s
  end

  def edit
    @toolkit = Toolkit.where(id: params[:id]).first
    @steps = @toolkit.steps.order({:number => :asc})
  end

  def delete
    @toolkit = Toolkit.where(id: params[:id]).destroy_all
    redirect_to "/category/index"
  end

  def update
    @toolkit_data = JSON.parse(request.body.read)
    @toolkit = Toolkit.where(:id => @toolkit_data["id"]).first
    @stoolkit = Stoolkit.create!({
     :title => @toolkit_data["title"],
     :author => "Unknown",
     :category => @toolkit_data["category"],
     :overview => @toolkit_data["overview"],
     :toolkit_id => @toolkit.id
    })

    @toolkit_data["steps"].each {|step, content|
      puts "content type", content.class
      @stoolkit.ssteps.create({:content => content, :number => step})
    }
    @stoolkit.save()
    flash[:notice] = "Modification success and is now under review"
    redirect_to "/category/"+@toolkit.category+"/"+@toolkit.id.to_s
  end

  def new
    query = Category.select(:name).map(&:name).uniq
    @categories = []
    query.each do |q|
        @categories.push(q)
    end
    puts @categories
  end

  def search
    query = params[:search].presence && params[:search][:query].presence
    if !query.nil?
      search = params[:search][:query]
      puts search
      @search_results = Toolkit.where("lower(title) LIKE lower(?)", "%#{search}%")
    end
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

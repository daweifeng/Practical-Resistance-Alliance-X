class ToolkitController < ApplicationController
  require 'set'

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

  def new
    query = Toolkit.select(:category).map(&:category).uniq
    @categories = []
    query.each do |q|
        @categories.push(q)
    end
    puts @categories
  end

  def search
    query = params[:search].presence && params[:search][:query]
    if query
      search = params[:search][:query]
      puts search
      @search_results = Toolkit.where("lower(title) LIKE lower(?)", "%#{search}%")
    end
  end

end

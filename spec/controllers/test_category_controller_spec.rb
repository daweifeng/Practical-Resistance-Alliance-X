require 'rails_helper'

describe CategoryController do
    describe ".index" do
        it "shows all categories" do
            Category.create!({
                :name => "Law"
            })
            get :index
            expect(response).to render_template(:index)
        end
    end
    describe ".create" do
        it "creates a category" do
            category1 = Hash.new
            category1["name"] = "Education"
            post :create, params: category1, as: :json
            expect(response).to redirect_to("/category/index")            
        end
    end
    describe ".new" do
        it "shows the add new category page" do
            get :new
            expect(response).to redirect_to("/login")
        end
    end
    describe ".show" do
        it "shows toolkits with the specified category" do
            Category.create!({
                :name => "Law"
            })
            get :show, :params => {:kind => "Law"}
            expect(response).to render_template(:show)
        end
    end
    describe ".display" do
        it "finds a searched toolkit by category" do
            Toolkit.create!({
                :title => "test title", 
                :author => "Unknown", 
                :overview => "lacdjnasuil"
            })
            get :display, :params => {:kind => "Law", :id => 1}
            expect(response).to render_template(:display)
        end
    end
    
end
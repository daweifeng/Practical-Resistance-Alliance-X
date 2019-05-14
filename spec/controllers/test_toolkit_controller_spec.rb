require 'rails_helper'

describe ToolkitController do
    describe ".create" do
        it "creates a toolkit" do
            toolkit1 = create(:toolkit)
            toolkit_data = Hash.new
            toolkit_data["title"] = "stoolkit"
            toolkit_data["author"] = "Unknown"
            toolkit_data["overview"] = "overview"
            toolkit_data["categories"] = []
            step1 = Hash.new
            step1["content"] = "content1"
            step1["number"] = 1
            step1["toolkit_id"] = toolkit1.id
            toolkit_data["steps"] = step1
            post :create, body: toolkit_data.to_json, format: :json, as: :json
            expect(response).to redirect_to("/toolkit/2")            
        end
    end
    describe ".edit" do
        it "shows the edit toolkit page" do
            toolkit = create(:toolkit)
            get :edit, params: {id: toolkit.id}
            expect(response).to redirect_to("/login")
        end
    end
    describe ".display" do
        it "displays a toolkit" do
            toolkit = create(:toolkit)
            get :display, params: {id: toolkit.id}
            expect(response).to render_template(:display)
        end
    end
    describe ".delete" do
        it "deletes a toolkit" do
            toolkit = Toolkit.create!({
                :title => "test title", 
                :author => "Unknown", 
                :overview => "lacdjnasuil",
                :id => "1"
            })
            post :delete, params: {id: toolkit.id}
            expect(response).to redirect_to("/category/index")
        end
    end
    describe ".update" do
        it "update a toolkit" do
            toolkit = create(:toolkit)
            stoolkit = Hash.new
            stoolkit["title"] = "stoolkit"
            stoolkit["author"] = "Unknown"
            stoolkit["overview"] = "overview"
            stoolkit["id"] = toolkit.id
            stoolkit["steps"] = { 1 => "content"}
            post :update, body: stoolkit.to_json, format: :json, params: {id: toolkit.id}
            expect(response).to redirect_to("/toolkit/"+ toolkit.id.to_s)
        end
    end
    describe ".new" do
        it "shows the add new toolkit page" do
            get :new
            expect(response).to redirect_to("/login")
        end
    end
    describe ".search" do
        it "finds a searched toolkit by category" do
            Toolkit.create!({
                :title => "test title", 
                :author => "Unknown", 
                :overview => "lacdjnasuil"
            })
            post :search, :params => {:search => {"query"=>"Law"}}
            expect(response).to render_template(:search)
        end
    end
end
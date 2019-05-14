require 'rails_helper'

describe ToolkitController do
    describe ".create" do
        it "creates a toolkit" do
            toolkit1 = Hash.new
            toolkit1["title"] = "toolkit1"
            toolkit1["author"] = "Unknown"
            toolkit1["category"] = "Law"
            toolkit1["overview"] = "overview"
            step1 = Hash.new
            step1["content"] = "content1"
            step1["number"] = 1
            toolkit1["steps"] = [step1]
            post :create, params: toolkit1, as: :json
            expect(response).to redirect_to("/category/Law/1")            
        end
    end
    describe ".update" do
        it "update a toolkit" do
            toolkit = create(:toolkit)
            stoolkit = Hash.new
            stoolkit["title"] = "stoolkit"
            stoolkit["author"] = "Unknown"
            stoolkit["category"] = "Law"
            stoolkit["overview"] = "overview"
            stoolkit["id"] = toolkit.id
            stoolkit["steps"] = { 1 => "content"}
            put :update, body: stoolkit.to_json, format: :json, params: {id:toolkit.id}

            expect(response).to redirect_to("/category/"+ toolkit.category + "/"+ toolkit.id.to_s)
        end
    end
    describe ".search" do
        it "finds a searched toolkit by category" do
            Toolkit.create!({
                :title => "test title", 
                :author => "Unknown", 
                :category => "Law",
                :overview => "lacdjnasuil"
            })
            post :search, :params => {:search => {"query"=>"Law"}}
            expect(response).to render_template(:search)
        end
    end

    describe ".delete" do
        it "deletes a toolkit" do
            toolkit = Toolkit.create!({
                :title => "test title", 
                :author => "Unknown", 
                :category => "Law",
                :overview => "lacdjnasuil",
                :id => "1"
            })
            post :delete, params: {id: toolkit.id}
            expect(response).to redirect_to("/category/index")
        end
    end
end
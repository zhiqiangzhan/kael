require "spec_helper"

describe TemplateStrategiesController do
  describe "routing" do

    it "routes to #index" do
      get("/template_strategies").should route_to("template_strategies#index")
    end

    it "routes to #new" do
      get("/template_strategies/new").should route_to("template_strategies#new")
    end

    it "routes to #show" do
      get("/template_strategies/1").should route_to("template_strategies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/template_strategies/1/edit").should route_to("template_strategies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/template_strategies").should route_to("template_strategies#create")
    end

    it "routes to #update" do
      put("/template_strategies/1").should route_to("template_strategies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/template_strategies/1").should route_to("template_strategies#destroy", :id => "1")
    end

  end
end

require "rails_helper"

RSpec.describe QrcodesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/qrcodes").to route_to("qrcodes#index")
    end

    it "routes to #new" do
      expect(:get => "/qrcodes/new").to route_to("qrcodes#new")
    end

    it "routes to #show" do
      expect(:get => "/qrcodes/1").to route_to("qrcodes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/qrcodes/1/edit").to route_to("qrcodes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/qrcodes").to route_to("qrcodes#create")
    end

    it "routes to #update" do
      expect(:put => "/qrcodes/1").to route_to("qrcodes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/qrcodes/1").to route_to("qrcodes#destroy", :id => "1")
    end

  end
end

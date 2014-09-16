require "spec_helper"

describe OrdersController do
  context "GET #index" do
    let(:orders) { FactoryGirl.create_list(:order) }

    before do
      get :index
    end

    it "responds successfully with an HTTP 200 status code" do
      expect(response).to be_success
      expect(response.code).to eq("200")
    end

    it "loads all of the orders" do
      expect(assigns(:orders)).to match_array(orders)
    end
  end

  context "POST #create" do
    let(:order_params) { FactoryGirl.attributes_for(:order) }

    before do
      post :create, order: order_params
    end

    it "should respond successfully with an HTTP 201 status code" do
      expect(response).to be_success
      expect(response.code).to eq("201")
    end
  end

  context "GET #show" do
    let!(:order) { FactoryGirl.create(:order) }

    before do
      get :show, id: order.id
    end

    it "responds successfully with an HTTP 200 status code" do
      expect(response).to be_success
      expect(response.code).to eq("200")
    end
  end

  context "PATCH #update" do
    let!(:order) { FactoryGirl.create(:order) }
    let(:changes) { Faker::Lorem.words }

    before do
      patch :update, id: order.id, order: { example_attribute: changes }
    end

    it "responds successfully with an HTTP 204 status code" do
      expect(response).to be_success
      expect(response.code).to eq("204")
    end

    it "should have changed the order's example attribute" do
      order.reload
      expect(order.example_attribute).to eq(changes)
    end
  end

  context "DELETE #destroy" do
    let!(:order) { FactoryGirl.create(:order) }
    let(:order_id) { order.id }

    before do
      delete :destroy, id: order.id
    end

    it "responds successfully with an HTTP 204 status code" do
      expect(response).to be_success
      expect(response.code).to eq("204")
    end

    it "should destroy the order" do
      expect { order.find(order_id) }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end
end

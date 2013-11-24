require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe WebhoooksController do

  # This should return the minimal set of attributes required to create a valid
  # Webhoook. As you add validations to Webhoook, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "url" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # WebhoooksController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all webhoooks as @webhoooks" do
      webhoook = Webhoook.create! valid_attributes
      get :index, {}, valid_session
      assigns(:webhoooks).should eq([webhoook])
    end
  end

  describe "GET show" do
    it "assigns the requested webhoook as @webhoook" do
      webhoook = Webhoook.create! valid_attributes
      get :show, {:id => webhoook.to_param}, valid_session
      assigns(:webhoook).should eq(webhoook)
    end
  end

  describe "GET new" do
    it "assigns a new webhoook as @webhoook" do
      get :new, {}, valid_session
      assigns(:webhoook).should be_a_new(Webhoook)
    end
  end

  describe "GET edit" do
    it "assigns the requested webhoook as @webhoook" do
      webhoook = Webhoook.create! valid_attributes
      get :edit, {:id => webhoook.to_param}, valid_session
      assigns(:webhoook).should eq(webhoook)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Webhoook" do
        expect {
          post :create, {:webhoook => valid_attributes}, valid_session
        }.to change(Webhoook, :count).by(1)
      end

      it "assigns a newly created webhoook as @webhoook" do
        post :create, {:webhoook => valid_attributes}, valid_session
        assigns(:webhoook).should be_a(Webhoook)
        assigns(:webhoook).should be_persisted
      end

      it "redirects to the created webhoook" do
        post :create, {:webhoook => valid_attributes}, valid_session
        response.should redirect_to(Webhoook.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved webhoook as @webhoook" do
        # Trigger the behavior that occurs when invalid params are submitted
        Webhoook.any_instance.stub(:save).and_return(false)
        post :create, {:webhoook => { "url" => "invalid value" }}, valid_session
        assigns(:webhoook).should be_a_new(Webhoook)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Webhoook.any_instance.stub(:save).and_return(false)
        post :create, {:webhoook => { "url" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested webhoook" do
        webhoook = Webhoook.create! valid_attributes
        # Assuming there are no other webhoooks in the database, this
        # specifies that the Webhoook created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Webhoook.any_instance.should_receive(:update_attributes).with({ "url" => "MyString" })
        put :update, {:id => webhoook.to_param, :webhoook => { "url" => "MyString" }}, valid_session
      end

      it "assigns the requested webhoook as @webhoook" do
        webhoook = Webhoook.create! valid_attributes
        put :update, {:id => webhoook.to_param, :webhoook => valid_attributes}, valid_session
        assigns(:webhoook).should eq(webhoook)
      end

      it "redirects to the webhoook" do
        webhoook = Webhoook.create! valid_attributes
        put :update, {:id => webhoook.to_param, :webhoook => valid_attributes}, valid_session
        response.should redirect_to(webhoook)
      end
    end

    describe "with invalid params" do
      it "assigns the webhoook as @webhoook" do
        webhoook = Webhoook.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Webhoook.any_instance.stub(:save).and_return(false)
        put :update, {:id => webhoook.to_param, :webhoook => { "url" => "invalid value" }}, valid_session
        assigns(:webhoook).should eq(webhoook)
      end

      it "re-renders the 'edit' template" do
        webhoook = Webhoook.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Webhoook.any_instance.stub(:save).and_return(false)
        put :update, {:id => webhoook.to_param, :webhoook => { "url" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested webhoook" do
      webhoook = Webhoook.create! valid_attributes
      expect {
        delete :destroy, {:id => webhoook.to_param}, valid_session
      }.to change(Webhoook, :count).by(-1)
    end

    it "redirects to the webhoooks list" do
      webhoook = Webhoook.create! valid_attributes
      delete :destroy, {:id => webhoook.to_param}, valid_session
      response.should redirect_to(webhoooks_url)
    end
  end

end

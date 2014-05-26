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

describe MessageConfigsController do

  # This should return the minimal set of attributes required to create a valid
  # MessageConfig. As you add validations to MessageConfig, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "group" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MessageConfigsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all message_configs as @message_configs" do
      message_config = MessageConfig.create! valid_attributes
      get :index, {}, valid_session
      assigns(:message_configs).should eq([message_config])
    end
  end

  describe "GET show" do
    it "assigns the requested message_config as @message_config" do
      message_config = MessageConfig.create! valid_attributes
      get :show, {:id => message_config.to_param}, valid_session
      assigns(:message_config).should eq(message_config)
    end
  end

  describe "GET new" do
    it "assigns a new message_config as @message_config" do
      get :new, {}, valid_session
      assigns(:message_config).should be_a_new(MessageConfig)
    end
  end

  describe "GET edit" do
    it "assigns the requested message_config as @message_config" do
      message_config = MessageConfig.create! valid_attributes
      get :edit, {:id => message_config.to_param}, valid_session
      assigns(:message_config).should eq(message_config)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new MessageConfig" do
        expect {
          post :create, {:message_config => valid_attributes}, valid_session
        }.to change(MessageConfig, :count).by(1)
      end

      it "assigns a newly created message_config as @message_config" do
        post :create, {:message_config => valid_attributes}, valid_session
        assigns(:message_config).should be_a(MessageConfig)
        assigns(:message_config).should be_persisted
      end

      it "redirects to the created message_config" do
        post :create, {:message_config => valid_attributes}, valid_session
        response.should redirect_to(MessageConfig.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved message_config as @message_config" do
        # Trigger the behavior that occurs when invalid params are submitted
        MessageConfig.any_instance.stub(:save).and_return(false)
        post :create, {:message_config => { "group" => "invalid value" }}, valid_session
        assigns(:message_config).should be_a_new(MessageConfig)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        MessageConfig.any_instance.stub(:save).and_return(false)
        post :create, {:message_config => { "group" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested message_config" do
        message_config = MessageConfig.create! valid_attributes
        # Assuming there are no other message_configs in the database, this
        # specifies that the MessageConfig created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        MessageConfig.any_instance.should_receive(:update).with({ "group" => "MyString" })
        put :update, {:id => message_config.to_param, :message_config => { "group" => "MyString" }}, valid_session
      end

      it "assigns the requested message_config as @message_config" do
        message_config = MessageConfig.create! valid_attributes
        put :update, {:id => message_config.to_param, :message_config => valid_attributes}, valid_session
        assigns(:message_config).should eq(message_config)
      end

      it "redirects to the message_config" do
        message_config = MessageConfig.create! valid_attributes
        put :update, {:id => message_config.to_param, :message_config => valid_attributes}, valid_session
        response.should redirect_to(message_config)
      end
    end

    describe "with invalid params" do
      it "assigns the message_config as @message_config" do
        message_config = MessageConfig.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        MessageConfig.any_instance.stub(:save).and_return(false)
        put :update, {:id => message_config.to_param, :message_config => { "group" => "invalid value" }}, valid_session
        assigns(:message_config).should eq(message_config)
      end

      it "re-renders the 'edit' template" do
        message_config = MessageConfig.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        MessageConfig.any_instance.stub(:save).and_return(false)
        put :update, {:id => message_config.to_param, :message_config => { "group" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested message_config" do
      message_config = MessageConfig.create! valid_attributes
      expect {
        delete :destroy, {:id => message_config.to_param}, valid_session
      }.to change(MessageConfig, :count).by(-1)
    end

    it "redirects to the message_configs list" do
      message_config = MessageConfig.create! valid_attributes
      delete :destroy, {:id => message_config.to_param}, valid_session
      response.should redirect_to(message_configs_url)
    end
  end

end

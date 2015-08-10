require 'test_helper'

class SessionControllerTest < ActionController::TestCase

  RSpec.describe SessionsController, type: :controller do

    describe "#new" do
      before do
        get :new
      end

      it "should assign @session" do
        expect(assigns(:session)).to be_instance_of(Session)
      end

      it "should render the :new view" do
        expect(response).to render_template(:new)
      end
    end

    # describe "#create" do
    #     context "success" do
    #       before do
    #         @recipes_count = Recipe.count
    #         post :create, recipe: { title: FFaker::Lorem.words(2).join(" "), instructions: FFaker::Lorem.sentence }
    #       end

    #       it "should add new recipe to current user" do
    #         expect(Recipe.count).to eq(@recipes_count + 1)
    #       end

    #       it "should redirect_to 'recipe_path' after successful create" do
    #         expect(response.status).to be(302)
    #         expect(response.location).to match(/\/recipes\/\d+/)
    #       end
    #     end

    #     context "failure" do
    #       it "should redirect_to 'new_recipe_path' when create fails" do
    #         # create blank recipe (fails validations)
    #         post :create, recipe: { title: nil, instructions: nil }
    #         expect(response).to redirect_to(new_recipe_path)
    #       end
    #     end
    # end

  end

end

require 'test_helper'

class PostControllerTest < ActionController::TestCase
  RSpec.describe RecipesController, type: :controller do

    # Creates a new post and adds it to the user
    describe "#create" do
        context "success" do
          before do
            @post_count = Post.count
            post :create, recipe: { gif_url: "http://media.giphy.com/media/uQ5ZZ2oDoG8r6/giphy.gif" }
          end

          it "should add new recipe to current user" do
            expect(Recipe.count).to eq(@recipes_count + 1)
          end

          it "should redirect_to 'user_post_path' after successful create" do
            expect(response.status).to be(302)
            expect(response.location).to match(/\/posts\/\d+/)
          end
        end

        context "failure" do
          it "should redirect_to 'new_recipe_path' when create fails" do
            # create blank recipe (fails validations)
            post :create, recipe: { gif_url: nil }
            expect(response).to redirect_to(new_user_post_path)
          end
        end
      end
end

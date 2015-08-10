require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  RSpec.describe User, type: :model do
    
    before do
      user_params = Hash.new
      user_params[:name] = FFaker::Name.last_name
      user_params[:email] = FFaker::Internet.email
      user_params[:password] = FFaker::Lorem.words(2).join
      @user = User.create(user_params)
    end
  
    describe "#generate_username" do

        before do
            @username = @user.generate_username
        end

        it "includes the first initial in lower case" do
          expect(@username).to include(@user.name[0].downcase)
        end 

        it "includes the name in lower case" do
          expect(@username).to include(@user.name.downcase)          
        end 

        it "combines first initial, last name, and a 2-digit number" do
          letterpart = "#{@user.name[0]}#{@user.name}".downcase
          # test format of username with regexp
          expect(@username).to match(/\A#{letterpart}\d{2}\z/)
        end
  end

end

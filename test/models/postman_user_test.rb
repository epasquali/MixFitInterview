require 'test_helper'

class PostmanUserTest < ActiveSupport::TestCase
  
  def setup
    @postman_user = postman_users(:one)
  end


  test "user should be valid" do
    assert @postman_user.valid?
   end

  test "user should have a name" do
   @postman_user.name = ''
   assert_not @postman_user.valid?
  end

  test "name should not be too long" do
    @postman_user.name = "a" * 51
    assert_not @postman_user.valid?
  end

  test "user should have an email" do
    @postman_user.email = ''
    assert_not @postman_user.valid?
   end
 
   test "email should not be too long" do
     @postman_user.email = "a" * 256
     assert_not @postman_user.valid?
   end

   test "emails should be proper format" do
    @postman_user.email = 'kkkkk123.qoiuwr'
    assert_not @postman_user.valid?
  end

  test 'height should be greater than zero' do
    @postman_user.height = -3
    assert_not @postman_user.valid?
  end

  test 'height should be a number' do
    @postman_user.height = 'lala'
    assert_not @postman_user.valid?
  end

  test 'weight should be a number' do
    @postman_user.weight = 'abcd'
    assert_not @postman_user.valid?
  end

  test 'weight should be greater than zero' do
    @postman_user.weight = -3
    assert_not @postman_user.valid?
  end

  test "associated recipes should be destroyed" do
    @postman_user.save
    @postman_user.recipes.create!(IntakeVitC: 10, IntakeVitD3: 8, IntakeIron: 7, ActivityVitC: 3, ActivityVitD3: 2, ActivityIron: 1)
    assert_difference 'Recipe.count', -1 do
      @postman_user.destroy
    end
  end



 

end

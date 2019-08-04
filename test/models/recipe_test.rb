require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  
  def setup
    @user = postman_users(:one)
    @recipe = recipes(:one)
    @recipe.postman_user_id = @user.id
  end

  test "should be valid" do
    assert @recipe.valid?
  end

  test "user id should be present" do
    @recipe.postman_user_id = nil
    assert_not @recipe.valid?
  end

  test "intake vitamin C should be between 4 and 10" do
    @recipe.IntakeVitC = 2
    assert_not @recipe.valid?
  end

  test "intake vitamin D3 should be between 4 and 10" do
    @recipe.IntakeVitD3 = 13
    assert_not @recipe.valid?
  end

  test "intake iron should be between 4 and 10" do
    @recipe.IntakeIron = 99
    assert_not @recipe.valid?
  end

  test "activity vitamin C should be between 1 and 3" do
    @recipe.ActivityVitC = 99
    assert_not @recipe.valid?
  end

  test "activity vitamin D3 should be between 1 and 3" do
    @recipe.ActivityVitD3 = 13
    assert_not @recipe.valid?
  end

  test "activity iron should be between 1 and 3" do
    @recipe.ActivityIron = 0
    assert_not @recipe.valid?
  end

end

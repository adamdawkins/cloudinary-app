require 'test_helper'

class TravellersControllerTest < ActionController::TestCase
  setup do
    @traveller = travellers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:travellers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create traveller" do
    assert_difference('Traveller.count') do
      post :create, traveller: { image_id: @traveller.image_id, name: @traveller.name }
    end

    assert_redirected_to traveller_path(assigns(:traveller))
  end

  test "should show traveller" do
    get :show, id: @traveller
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @traveller
    assert_response :success
  end

  test "should update traveller" do
    patch :update, id: @traveller, traveller: { image_id: @traveller.image_id, name: @traveller.name }
    assert_redirected_to traveller_path(assigns(:traveller))
  end

  test "should destroy traveller" do
    assert_difference('Traveller.count', -1) do
      delete :destroy, id: @traveller
    end

    assert_redirected_to travellers_path
  end
end

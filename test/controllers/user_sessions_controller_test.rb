require 'test_helper'

class UserSessionsControllerTest < ActionController::TestCase
  test "new returns a success" do
    get :new
    assert_response :success
  end

  test "create returns a success on correct email and password" do
    user = FactoryGirl.create(:user)
    post :create, params: {user: {email: user.email, password: user.password}}
    assert_response :success
  end

  test "create renders new on failure" do
    user = FactoryGirl.create(:user)
    post :create, params: {user: {email: user.email, password: 'invalid'}}
    assert_template :new
  end

  test "destroy redirects to projects when logged in" do
    user = FactoryGirl.create(:user)
    login_user(user = user)
    delete :destroy
    assert_redirected_to root_url
  end

  test "destroy redirects to root when logged out" do
    delete :destroy
    assert_redirected_to root_url
  end
end

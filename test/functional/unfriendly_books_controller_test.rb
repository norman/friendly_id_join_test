require 'test_helper'

class UnfriendlyBooksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unfriendly_books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unfriendly_book" do
    assert_difference('UnfriendlyBook.count') do
      post :create, :unfriendly_book => { }
    end

    assert_redirected_to unfriendly_book_path(assigns(:unfriendly_book))
  end

  test "should show unfriendly_book" do
    get :show, :id => unfriendly_books(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => unfriendly_books(:one).to_param
    assert_response :success
  end

  test "should update unfriendly_book" do
    put :update, :id => unfriendly_books(:one).to_param, :unfriendly_book => { }
    assert_redirected_to unfriendly_book_path(assigns(:unfriendly_book))
  end

  test "should destroy unfriendly_book" do
    assert_difference('UnfriendlyBook.count', -1) do
      delete :destroy, :id => unfriendly_books(:one).to_param
    end

    assert_redirected_to unfriendly_books_path
  end
end

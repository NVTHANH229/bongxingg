require "test_helper"

class BookReturnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_return = book_returns(:one)
  end

  test "should get index" do
    get book_returns_url
    assert_response :success
  end

  test "should get new" do
    get new_book_return_url
    assert_response :success
  end

  test "should create book_return" do
    assert_difference("BookReturn.count") do
      post book_returns_url, params: { book_return: { book_borrowed_id: @book_return.book_borrowed_id, book_id: @book_return.book_id } }
    end

    assert_redirected_to book_return_url(BookReturn.last)
  end

  test "should show book_return" do
    get book_return_url(@book_return)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_return_url(@book_return)
    assert_response :success
  end

  test "should update book_return" do
    patch book_return_url(@book_return), params: { book_return: { book_borrowed_id: @book_return.book_borrowed_id, book_id: @book_return.book_id } }
    assert_redirected_to book_return_url(@book_return)
  end

  test "should destroy book_return" do
    assert_difference("BookReturn.count", -1) do
      delete book_return_url(@book_return)
    end

    assert_redirected_to book_returns_url
  end
end

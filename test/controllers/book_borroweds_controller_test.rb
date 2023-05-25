require "test_helper"

class BookBorrowedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_borrowed = book_borroweds(:one)
  end

  test "should get index" do
    get book_borroweds_url
    assert_response :success
  end

  test "should get new" do
    get new_book_borrowed_url
    assert_response :success
  end

  test "should create book_borrowed" do
    assert_difference("BookBorrowed.count") do
      post book_borroweds_url, params: { book_borrowed: { book_id: @book_borrowed.book_id, borrow_date: @book_borrowed.borrow_date, due_date: @book_borrowed.due_date, student_id: @book_borrowed.student_id, teacher_id: @book_borrowed.teacher_id } }
    end

    assert_redirected_to book_borrowed_url(BookBorrowed.last)
  end

  test "should show book_borrowed" do
    get book_borrowed_url(@book_borrowed)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_borrowed_url(@book_borrowed)
    assert_response :success
  end

  test "should update book_borrowed" do
    patch book_borrowed_url(@book_borrowed), params: { book_borrowed: { book_id: @book_borrowed.book_id, borrow_date: @book_borrowed.borrow_date, due_date: @book_borrowed.due_date, student_id: @book_borrowed.student_id, teacher_id: @book_borrowed.teacher_id } }
    assert_redirected_to book_borrowed_url(@book_borrowed)
  end

  test "should destroy book_borrowed" do
    assert_difference("BookBorrowed.count", -1) do
      delete book_borrowed_url(@book_borrowed)
    end

    assert_redirected_to book_borroweds_url
  end
end

require "application_system_test_case"

class BookBorrowedsTest < ApplicationSystemTestCase
  setup do
    @book_borrowed = book_borroweds(:one)
  end

  test "visiting the index" do
    visit book_borroweds_url
    assert_selector "h1", text: "Book borroweds"
  end

  test "should create book borrowed" do
    visit book_borroweds_url
    click_on "New book borrowed"

    fill_in "Book", with: @book_borrowed.book_id
    fill_in "Borrow date", with: @book_borrowed.borrow_date
    fill_in "Due date", with: @book_borrowed.due_date
    fill_in "Student", with: @book_borrowed.student_id
    fill_in "Teacher", with: @book_borrowed.teacher_id
    click_on "Create Book borrowed"

    assert_text "Book borrowed was successfully created"
    click_on "Back"
  end

  test "should update Book borrowed" do
    visit book_borrowed_url(@book_borrowed)
    click_on "Edit this book borrowed", match: :first

    fill_in "Book", with: @book_borrowed.book_id
    fill_in "Borrow date", with: @book_borrowed.borrow_date
    fill_in "Due date", with: @book_borrowed.due_date
    fill_in "Student", with: @book_borrowed.student_id
    fill_in "Teacher", with: @book_borrowed.teacher_id
    click_on "Update Book borrowed"

    assert_text "Book borrowed was successfully updated"
    click_on "Back"
  end

  test "should destroy Book borrowed" do
    visit book_borrowed_url(@book_borrowed)
    click_on "Destroy this book borrowed", match: :first

    assert_text "Book borrowed was successfully destroyed"
  end
end

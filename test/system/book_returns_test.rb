require "application_system_test_case"

class BookReturnsTest < ApplicationSystemTestCase
  setup do
    @book_return = book_returns(:one)
  end

  test "visiting the index" do
    visit book_returns_url
    assert_selector "h1", text: "Book returns"
  end

  test "should create book return" do
    visit book_returns_url
    click_on "New book return"

    fill_in "Book borrowed", with: @book_return.book_borrowed_id
    fill_in "Book", with: @book_return.book_id
    click_on "Create Book return"

    assert_text "Book return was successfully created"
    click_on "Back"
  end

  test "should update Book return" do
    visit book_return_url(@book_return)
    click_on "Edit this book return", match: :first

    fill_in "Book borrowed", with: @book_return.book_borrowed_id
    fill_in "Book", with: @book_return.book_id
    click_on "Update Book return"

    assert_text "Book return was successfully updated"
    click_on "Back"
  end

  test "should destroy Book return" do
    visit book_return_url(@book_return)
    click_on "Destroy this book return", match: :first

    assert_text "Book return was successfully destroyed"
  end
end

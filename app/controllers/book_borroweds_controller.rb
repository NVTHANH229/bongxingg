class BookBorrowedsController < ApplicationController
  before_action :set_book_borrowed, only: %i[ show edit update destroy ]

  # GET /book_borroweds or /book_borroweds.json
  def index
    @book_borroweds = BookBorrowed.all
  end

  # GET /book_borroweds/1 or /book_borroweds/1.json
  def show
  end

  # GET /book_borroweds/new
  def new
    @book_borrowed = BookBorrowed.new
  end

  # GET /book_borroweds/1/edit
  def edit
  end

  # POST /book_borroweds or /book_borroweds.json
  def create
    @book_borrowed = BookBorrowed.new(book_borrowed_params)

    respond_to do |format|
      if @book_borrowed.save
        format.html { redirect_to book_borrowed_url(@book_borrowed), notice: "Book borrowed was successfully created." }
        format.json { render :show, status: :created, location: @book_borrowed }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book_borrowed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_borroweds/1 or /book_borroweds/1.json
  def update
    respond_to do |format|
      if @book_borrowed.update(book_borrowed_params)
        format.html { redirect_to book_borrowed_url(@book_borrowed), notice: "Book borrowed was successfully updated." }
        format.json { render :show, status: :ok, location: @book_borrowed }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book_borrowed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_borroweds/1 or /book_borroweds/1.json
  def destroy
    @book_borrowed.destroy

    respond_to do |format|
      format.html { redirect_to book_borroweds_url, notice: "Book borrowed was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_borrowed
      @book_borrowed = BookBorrowed.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_borrowed_params
      params.require(:book_borrowed).permit(:book_id, :student_id, :teacher_id, :borrow_date, :due_date)
    end
end

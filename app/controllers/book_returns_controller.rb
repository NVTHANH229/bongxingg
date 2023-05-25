class BookReturnsController < ApplicationController
  before_action :set_book_return, only: %i[ show edit update destroy ]

  # GET /book_returns or /book_returns.json
  def index
    @book_returns = BookReturn.all
  end

  # GET /book_returns/1 or /book_returns/1.json
  def show
  end

  # GET /book_returns/new
  def new
    @book_return = BookReturn.new
  end

  # GET /book_returns/1/edit
  def edit
  end

  # POST /book_returns or /book_returns.json
  def create
    @book_return = BookReturn.new(book_return_params)

    respond_to do |format|
      if @book_return.save
        format.html { redirect_to book_return_url(@book_return), notice: "Book return was successfully created." }
        format.json { render :show, status: :created, location: @book_return }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book_return.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_returns/1 or /book_returns/1.json
  def update
    respond_to do |format|
      if @book_return.update(book_return_params)
        format.html { redirect_to book_return_url(@book_return), notice: "Book return was successfully updated." }
        format.json { render :show, status: :ok, location: @book_return }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book_return.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_returns/1 or /book_returns/1.json
  def destroy
    @book_return.destroy

    respond_to do |format|
      format.html { redirect_to book_returns_url, notice: "Book return was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_return
      @book_return = BookReturn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_return_params
      params.require(:book_return).permit(:book_borrowed_id, :book_id)
    end
end

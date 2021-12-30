class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end

  def create
    @book = Book.new(book_params)
    if @book.save
     redirect_to '/books/show/' + @book.id.to_s, notice: "Book was successfully created."
    else
      @books = Book.all
     render '/books/index'
    end
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to '/books/show/' + @book.id.to_s, notice: "Book was successfully updated."
    else
      render '/books/edit'
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books/index'
  end

   private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end

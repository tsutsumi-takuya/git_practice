class BookController < ApplicationController

  def index

  @books = Book.all
  @book = Book.new

  end

  def show

   @book = Book.find(prams[:id])

  end

  def new

   @book = Book.new

  end

  def edit

   @book = Book.find(prams[:id])

  end

  def update

    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to books_path(book.id)
  end

  def create

    @book = Book.new(book_params)

    if @book.save
      redirect_to books_path(@book.id)
    else @books = Book.all
      render :index
    end

  end

  def destroy

    book = Book.find(prams[:id])
    book.destroy
    redirect_to books_path

  end

  def top
  end

  def book_params

    params.require(:book).permit(:title,:body)

  end
end

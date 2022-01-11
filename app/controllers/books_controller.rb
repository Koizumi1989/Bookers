class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
    # ここからはmodelとの連携
    # ﾓﾃﾞﾙ名.ﾒｿｯﾄﾞ Book.all.  @instance = model.method
    # all:dbの全てのデータを取得
    # find:db内の、1つのデータを取得
    # new:データの新規作成を生成する
    # save:dbにデータを保存する

    # ここからはviewとの連携 controllerからviewへ
    # modelからのﾃﾞｰﾀをｲﾝｽﾀﾝｽ変数に代入する。これでviewでﾃﾞｰﾀ使える
    # @books = Book.all @instance = model.method

  end

  def create
    @book = Book.new(book_params)
    if @book.save
     redirect_to book_path(@book.id), notice: "Book was successfully created."
    else
      @books = Book.all
      render 'books/index'
    end
  end

  def update
    @book = Book.find(params[:id])
    # @instance = model.find(params[:カラム名])
    # @instance = model.find(params[:id])
    # paramsはrailsで送られてきた値を受け取るmethod
    if @book.update(book_params)
      redirect_to book_path(@book.id),notice: "Book was successfully updated."
    else
      render 'books/edit'
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
    redirect_to '/books'
  end

   private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end

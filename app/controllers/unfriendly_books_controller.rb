class UnfriendlyBooksController < ApplicationController
  # GET /unfriendly_books
  # GET /unfriendly_books.xml
  def index
    @unfriendly_books = UnfriendlyBook.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @unfriendly_books }
    end
  end

  # GET /unfriendly_books/1
  # GET /unfriendly_books/1.xml
  def show
    @unfriendly_book = UnfriendlyBook.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @unfriendly_book }
    end
  end

  # GET /unfriendly_books/new
  # GET /unfriendly_books/new.xml
  def new
    @unfriendly_book = UnfriendlyBook.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @unfriendly_book }
    end
  end

  # GET /unfriendly_books/1/edit
  def edit
    @unfriendly_book = UnfriendlyBook.find(params[:id])
  end

  # POST /unfriendly_books
  # POST /unfriendly_books.xml
  def create
    @unfriendly_book = UnfriendlyBook.new(params[:unfriendly_book])

    respond_to do |format|
      if @unfriendly_book.save
        format.html { redirect_to(@unfriendly_book, :notice => 'UnfriendlyBook was successfully created.') }
        format.xml  { render :xml => @unfriendly_book, :status => :created, :location => @unfriendly_book }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @unfriendly_book.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /unfriendly_books/1
  # PUT /unfriendly_books/1.xml
  def update
    @unfriendly_book = UnfriendlyBook.find(params[:id])

    respond_to do |format|
      if @unfriendly_book.update_attributes(params[:unfriendly_book])
        format.html { redirect_to(@unfriendly_book, :notice => 'UnfriendlyBook was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @unfriendly_book.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /unfriendly_books/1
  # DELETE /unfriendly_books/1.xml
  def destroy
    @unfriendly_book = UnfriendlyBook.find(params[:id])
    @unfriendly_book.destroy

    respond_to do |format|
      format.html { redirect_to(unfriendly_books_url) }
      format.xml  { head :ok }
    end
  end
end

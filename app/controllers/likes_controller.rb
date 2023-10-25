# app/controllers/likes_controller.rb
class LikesController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @book.likes += 1
    @book.save
    respond_to do |format|
      format.js
    end
  end
end

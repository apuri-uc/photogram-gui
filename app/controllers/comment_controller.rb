class CommentController < ApplicationController
  def create
    comment = Comment.new
    comment.photo_id = params.fetch("query_photo_id")
    comment.author_id = params.fetch("query_author_id")
    comment.body = params.fetch("query_body")
    comment.save
    
    redirect_to("/photos/#{comment.photo_id}")
  end
end

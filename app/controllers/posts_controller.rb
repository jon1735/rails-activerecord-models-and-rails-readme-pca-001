class PostsController < ApplicationController
  def create
    post = Post.create!(title: "My title", description: "The post description")
    render json: post
  end
end

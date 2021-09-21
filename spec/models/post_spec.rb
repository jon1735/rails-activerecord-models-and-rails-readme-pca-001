require 'rails_helper'

describe Post do
    it 'can be created' do
      post = Post.create!(title: "My title", description: "The post description")
      expect(post).to be_valid
    end
  
    it 'has a summary' do
      post = Post.create!(title: "My title", description: "The post description")
      expect(post.post_summary).to eq("My title - The post description")
    end
  end

  #tests won't pass. Need to review. 
  #terminal failures listed below.
#   Post
#   can be created (FAILED - 1)
#   has a summary (FAILED - 2)

# Failures:

#   1) Post can be created
#      Failure/Error: post = Post.create!(title: "My title", description: "The post description")

#      ActiveModel::UnknownAttributeError:
#        unknown attribute 'title' for Post.
#      # ./spec/models/post_spec.rb:5:in `block (2 levels) in <top (required)>'

#   2) Post has a summary
#      Failure/Error: post = Post.create!(title: "My title", description: "The post description")

#      ActiveModel::UnknownAttributeError:
#        unknown attribute 'title' for Post.
#      # ./spec/models/post_spec.rb:10:in `block (2 levels) in <top (required)>'

# Finished in 0.12369 seconds (files took 2.54 seconds to load)
# 2 examples, 2 failures

# Failed examples:

# rspec ./spec/models/post_spec.rb:4 # Post can be created
# rspec ./spec/models/post_spec.rb:9 # Post has a summary

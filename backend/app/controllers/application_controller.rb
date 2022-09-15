class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/poem" do
    poem = Poem.all
    poem.to_json(only: [:id, :title, :description],
    include: {
      comments: { only: [:id, :comment], include: {user: {only: [:id, :name]}}}
    }
    )

end

#  delete  a comment with the author of the comment
delete "/poem/comments/:id" do
  
  comment = Comment.find(params[:id])
  comment.destroy
  comment.to_json


end

#delete a poem author
delete "/poemauthor/:id" do
  author = PoemAuthor.find(params[:id])
  author.destroy
  author.to_json
end


#  post a comment
post "/comments" do
   
  comment = Comment.create(
      comment: params[:comment],
      user_id: params[:user_id],
      poem_id: params[:poem_id],
  )
  comment.to_json

end


#get list of all users
get "/user" do
  user = User.all
  user.to_json(only: [:id, :name])
end

#get list of poets
get "/poemauthor" do
  author = PoemAuthor.all.to_json
end


#update a comment
patch "/comments/:id" do
comments = Comment.find(params[:id])
(
  comments.update(
    comment: params[:comment]
  )
)
comments.to_json
end
 
#update publications
patch "/poemauthor/:id" do
  authors = PoemAuthor.find(params[:id])
  (
    authors.update(
      publication: params[:publication]
    )
  )
  authors.to_json
  end


#display the comments
get "/comments" do
  comments = Comment.all
  comments.to_json
end

end

describe Comment do 

    # let(:comment) {Comment.first}
    # before do
    #     comment_first = Comment.create(comment: "I love the song")
    # end

   

    describe "post /comments" do

        let(:params) do
            {comment: "I love the song"}
        end

        it "create a new comment" do
            expect{post "/comments", params}.to change(Comment, :count).by(1)
        end


        it 'returns data for the newly created message as JSON' do
            post "/comments", params
      
            expect(last_response.body).to include_json(
                comment: "I love the song"
            )
          end

    end



end
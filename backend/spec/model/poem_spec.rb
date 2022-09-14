describe Poem do 
    let(:poema) {Poem.first}

    before do
        poema = Poem.create(title: "Emma's Song", description: "Song")
        usera = User.create(name: "Emma the rapper")
        commenta = Comment.create(comment: "I love the song", user_id: usera.id, poem_id: poema.id)

    end

    #return the poem 
    it "has attributes title and description" do
        expect(poema).to have_attributes(title: "Emma's Song", description: "Song")
    end


    #check existance of comment method
    describe "#comments" do

        it "has the comment: I love the song" do
        commentb = Comment.find_by(comment: "I love the song")
        expect(poema.comments).to include(commentb)
        end
    end

      #check existance of user method
    describe "#user" do
        it "has the user with name: Emma the rapper" do
            userb = User.find_by(name: "Emma the rapper")
            expect(poema.users).to include(userb)
        end
    end

end
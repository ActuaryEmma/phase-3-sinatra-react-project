describe User do
    let(:usera) {User.first}

    before do
        poema = Poem.create(title: "Emma's Song", description: "Song")
        usera = User.create(name: "Emma the rapper")
        commenta = Comment.create(comment: "I like the song", user_id: usera.id, poem_id: poema.id)
    end

    it "has attributes name" do 
        expect(usera).to have_attributes(name: "Emma the rapper")
    end

    describe "#comment" do
        it "has comment: I like the song" do
            commentc = Comment.find_by(comment: "I like the song")
            expect(usera.comments).to include(commentc)
        end
    end

    describe "#poem" do
        it "has a poem" do
            poemc = Poem.find_by(title: "Emma's Song")
            expect(usera.poems).to include(poemc)
        end
    end
end
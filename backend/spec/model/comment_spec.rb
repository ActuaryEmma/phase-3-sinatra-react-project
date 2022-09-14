describe Comment do

    let(:commenta) {Comment.first}

    before do
        poema = Poem.create(title: "Emma's Song", description: "Song")
        usera = User.create(name: "Emma the rapper")
        commenta = Comment.create(comment: "I love the song")
    end

    it "has attributes comment, user_id, poem_id" do
        expect(commenta).to have_attributes(comment: "I love the song")
    end

    describe "#poem" do
        it "has a poem" do
            poema = Poem.create(title: "Emma's Song", description: "Song")
            commenta= Comment.create(comment: "I like the song", poem_id: poema.id)
            expect(commenta.poem).to eq(poema)

        end
    end

    describe "#user" do
        it "has user" do
            usera = User.create(name: "Emma the rapper")
            commenta= Comment.create(comment: "I like the song", user_id: usera.id)
            expect(commenta.user).to eq(usera)
        end
    end

end


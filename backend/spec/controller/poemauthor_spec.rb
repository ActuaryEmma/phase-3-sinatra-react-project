
describe PoemAuthor do

    let(:author) {PoemAuthor.first}

    before do
        PoemAuthor.create(name: "William Carlos Williams",publication: "The Red Wheelbarrow", major_achievements: "Published 10 books at the age of 25 years" )
    end
 #get
    describe 'GET /poemauthor' do
        it 'returns an array of JSON objects for all poem authors in the database' do
        get '/poemauthor'
    
        expect(last_response.body).to include_json([
            {name: "William Carlos Williams",publication: "The Red Wheelbarrow", major_achievements: "Published 10 books at the age of 25 years" },

        ])
        end
    end
#patch
    describe 'PATCH/poemauthor/:id' do
        let(:params) do
            {publication: "Money"}
        end

        it "updates the publication of the poemauthor in the database" do
            expect do 
                patch "/poemauthor/#{author.id}", params

                author.reload
            end.to change(author, :publication).to("Money")

        end
    end

    describe 'DELETE/poemauthor/:id' do
        it 'deletes the author from the database' do
            expect {delete "/poemauthor/#{author.id}"}.to change(PoemAuthor, :count).from(1).to(0)
        end
    end
end
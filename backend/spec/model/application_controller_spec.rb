

describe ApplicationController do

    let(:author) {PoemAuthor.first}

    before do
        PoemAuthor.create(name: "William Carlos Williams",publication: "The Red Wheelbarrow", major_achievements: "Published 10 books at the age of 25 years" )
    end

    describe 'GET /poemauthor' do
        it 'returns an array of JSON objects for all messages in the database' do
        get '/poemauthor'
    
        expect(last_response.body).to include_json([
            {name: "William Carlos Williams",publication: "The Red Wheelbarrow", major_achievements: "Published 10 books at the age of 25 years" },

        ])
        end
end
end


        










describe Poem do 
    let(:poem) {Poem.first}

    before do 
        poem1 = Poem.create(
            title: "One Wish", description: "She hid behind her flawless façade,
    I had hoped to catch a glimpse,
    Of her auburn hair and freckled cheeks,
    Pretty eyes and lips,
    When I had her in my sights,
    I told her she’d been missed,
    Then I held her hand in mine,
    And leaned in for a kiss,
    She reciprocated my advancement,
    And there was momentary bliss,
    Then I whispered in her ear,
    She’d granted my one wish ")
    end

    it "has the correct columns in the poem table" do
        expect(poem).to have_attributes(
            title: "One Wish", 
            description: "She hid behind her flawless façade,
            I had hoped to catch a glimpse,
            Of her auburn hair and freckled cheeks,
            Pretty eyes and lips,
            When I had her in my sights,
            I told her she’d been missed,
            Then I held her hand in mine,
            And leaned in for a kiss,
            She reciprocated my advancement,
            And there was momentary bliss,
            Then I whispered in her ear,
            She’d granted my one wish "
        )
      end
end


puts "🌱 Seeding spices..."

# Seed your database here
#user data
user1 = User.create(name: "John Smith")
user2 = User.create(name: "Jake Daniel")
user3 = User.create(name: "Preety James")
user4 = User.create(name: "Brian Scott")
user5 = User.create(name: "Essy Keru")

#poem data
poem1 = Poem.create(title: "One Wish", description: "She hid behind her flawless façade,
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
poem2 = Poem.create(title: "To an unread poet.", description: "I used to read your poems,
    but lately you don't write,
    you're silent and aloof,
    you know that isn't right.
    You can't close a door once opened,
    you can't abolish all your dreams,
    you're a poet of the heart,
    mustn't fall apart at the seams.
    Say what you can in words,
    they speak the message true,
    spoken from the heart,
    the poems will see you through.
    A hermit's not your style,
    a recluse, you are not,
    never give up writing,
    of things that you've been taught.
    I used to read your poems,
    I'd read them once again,
    if you would send them out,
    (this one's from a poet friend")
poem3 = Poem.create(title: "Coding", description: "I used to read your poems,
    but lately you don't write,
    you're silent and aloof,
    you know that isn't right.
    You can't close a door once opened,
    you can't abolish all your dreams,
    you're a poet of the heart,
    mustn't fall apart at the seams.
    Say what you can in words,
    they speak the message true,
    spoken from the heart,
    the poems will see you through.
    A hermit's not your style,
    a recluse, you are not,
    never give up writing,
    of things that you've been taught.
    I used to read your poems,
    I'd read them once again,
    if you would send them out,
    (this one's from a poet friend")

#comment data
comment1 = Comment.create(comment: "I love coding", user_id: user1.id, poem_id: poem3.id)
comment2 = Comment.create(comment: "I like fashion", user_id: user2.id, poem_id: poem2.id)
comment3 = Comment.create(comment: "Nice poem", user_id: user3.id, poem_id: poem1.id)
comment4 = Comment.create(comment: "I love the poem", user_id: user1.id, poem_id: poem1.id)
comment5 = Comment.create(comment: "Nice", user_id: user2.id, poem_id: poem3.id)
comment6 = Comment.create(comment: "Bravo", user_id: user3.id, poem_id: poem3.id)

#list of poets
author1 = PoemAuthor.create(name: "William Carlos Williams",publication: "The Red Wheelbarrow", major_achievements: "Published 10 books at the age of 25 years" )
author2 = PoemAuthor.create(name: "Walt Whitman", publication: "Song of Myself", major_achievements: "The poem Song of myself was the most read poem in 2020")
author3 = PoemAuthor.create(name: "William Shakespeare", publication: "Shakespeare", major_achievements: "The most famous poet")
author4 = PoemAuthor.create(name: "Maya Angelou", publication: "Phenomenal Woman", major_achievements: "The first black woman director in Hollywood, Angelou has written, produced, directed, and starred in productions for stage, film, and television.")
author5 = PoemAuthor.create(name: "	Robert Frost", publication: "If You Forget Me", major_achievements: "His poetic production during that difficult period included, among other works, the collection of esoteric surrealistic poems, Residencia en la tierra (1933), which marked his literary breakthrough.
")
author6 = PoemAuthor.create(name: "	Edgar Allan Poe", publication: "I carry your heart with me", major_achievements: "The most famous poet")
author7 = PoemAuthor.create(name: "	Emily Dickinson", publication: "The Road Not Taken", major_achievements: "The most famous poet")
author8 = PoemAuthor.create(name: "	Langston Hughes", publication: "Life Is Fine", major_achievements: "The most famous poet")
author9 = PoemAuthor.create(name: "	Ezra Pound", publication: "A Girl", major_achievements: "The most famous poet")

puts "✅ Done seeding!"

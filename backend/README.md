### Backend Repository


API with Sinatra for a React frontend application

The Application uses Active Record gem to generate your ORMs.
The Application has 4 models: user, poem, comments and PoemAuthors

comments belongs_to user
comments belongs_to poem
user has_many_comments
poem has_many_comments
user has_many poems through comments
poem has_many users through comments

### Model
User has below attributes:
name:string

Poem has below attributes:
title: string
description: string

Comment has below attributes:
comment: string
user_id:integer
poem_id: integer

PoemAuthor has below attributes:
name: string
publication: string
major_achievements: string


Seed.rb file has sample data for all the tables.wh

### Appication Controller
The App has Application Controller where all routes are listed as per below link
https://docs.google.com/document/d/12tnN_YsNtlxVc3M_ZcT0y7T75NORBNb9XtT3ZxoVIS8/edit?usp=sharing
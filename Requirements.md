Idea:  
Platform for controlling freelance jobs for copywriting from different companies.  
User registers account, after this he has the right to add info about current, future, and past tasks for writing articles (copywriting).

## Name
 - First version "Copy hopper"

## Entities

1. Main entities in DB
   1. User
   2. Client/Company
   3. Employment
   4. Article
   5. Payments
   6. Payment schedule
   7. Messages
   8. Chats
   9. Relation
2. User \- or copywriter, person who receives the job to write text from some company. He controls his own progress on tasks and fills all info
   1. Email
   2. Full Name
   3. Showing name
   4. Gender
   5. Birthdate
   6. Photo
   7. List of languages to write
   8. List of languages to read
   9. Native language
3. Client/Company \- who gives you to write articles, and then pays on some platform. Usually there is a tariff per word/character, rarely fixed per text. Usually it is a long term relationship between client and copywriter. Can be shared between users
   1. Name of company
   2. Link for official site
   3. Logo
   4. Logo with name
   5. Square logo
   6. Area of business
   7. Topics to write
   8. Writing Tags
   9. Summary of company \- several Sentences
4. Employment \- connection between user and company for a period of time. Users can work in the same company for many periods of time. Employment can be current, or past (I cannot imagine future, but why not). Can be a full-time/part-time job or freelance. Payment can be in different currencies or crypto
   1. Company (id)
   2. User (id)
   3. Start date
   4. Finish date (optional)
   5. Type ( full-time/part-time job/freelance)
5. Article or task. Main piece of system. Users write articles for companies. Typical attributes:
   1. Name in target language
   2. Name in English (translated)
   3. Type: translation text, writing, proofreading, translation set of phrases, etc.
   4. Language main
   5. Language of origin (optional)
   6. Link \- task description, details (internal)
   7. Link \- current working document of article (internal)
   8. Link \- published link (optional)
   9. Flag \- allowedToShare \- visible for everyone after publishing
   10. Summary in english
   11. Status \- Created, InProgress, OnCheck, Fixing, Finished, Published, Cancelled
   12. Date \- Created
   13. Date \- deadline
   14. Date \- finished
   15. Date \- published
   16. Date \- lastUpdated
   17. Payment rate \- how many dollars per word
   18. Company which ordered
   19. User owner \- who receives the task to write and receives money. But he can delegate it to contractor, in this case he shares money using rate
   20. User contractor (optional) \- another user who would write text for user owner and receive part of money
   21. Contractor rate (optional) \- from 0 till 1, how much would contractor receive from all money from text
6. Payments \- tracks of payments of companies for texts. Usually it depends on how many words in text. 1 or 2 times per month at fixed day, but sometimes can be delay several days
   1. Value
   2. Currency
   3. platform/bank
   4. List of texts paid for
   5. Company
   6. Date
7. Payment Schedule \- what days usually the company pays for texts. We need it for planning
   1. Company
   2. Currency
   3. platform/bank
   4. Usual rate
   5. Date template (date/dates of months)
8. Messages \- every user can write message for another user in private message or in context of article, if they work together
9. Chat \- several users, on any topic or connected to particular text/article (in this case if text already finished \- it should be archivated)
   1. List of users
   2. Topic (optional)
   3. Article id (optional)
10. Relation - relations between users
    1. User source id
    2. User target id
    3. type (friend, boss, contactor, both, none (for no record)) - need to think well about it

### Case Scenarios

## Articles (by user or contractor)

# Create Text article

1. User logs in to system via web page using Google account (for now)
2. At first he doesn’t have any text to write and track
3. He receives externally task and then needs to put it down here in system
4. He clicks some button to add new Article task
5. Fills all necessary fields
6. If There is no company \- we need first to create one first (see Create company/employmennt)

# Update Text Article

1. Add more info about it
2. Change status of article

## Company (any user - think how to do it)

# CRUD

1. What to do if there are some articles connected to the company???

## Employment (by user)

# Create Employment with company

# Update Employment with company

1. Set finish date
2. Set rate

## Payment (by user)

# Register payment from some company

# Modify payment

# Register transfer to contractor

# Modify payment

# CRUD

## Payment Schedule (by user)

# CRUD

## User

# CRUD

# auth

## messages (by user)

# CRUD for chat

# CRUD for messages

## Relations (by user)

# CRUD

### Architecture

1. SQL Database (still need to choose which one)
2. Backend Java/Spring
3. Frontend React/TypeScript
4. App (android/IOS) for later
5. DB, backend and frontend are in cloud (AWS)
6. Maybe backend should be several services - still need to plan
7. Extra Frontend for each user with different personal domain and design with just portfolio

### Features

1. Registring and tracking workflow of articles from different companies while working basicly as a freelancer
2. Controling deadlines of articles
3. planning and balancing calendar of work
4. if too much work you can delegate work for contractor and later share payment
5. control and track payments
6. browse finished work
7. API for portfolio site
8. notifications for close deadlines (in site and later in app)
9. beautiful portfolio with all info from site
10. powerful tool to manage work, and using data for portfolio
11. mark finished text as pulic or not, it depends if it goes to public portfolio
12. support of different languages of interface and content
13. Admin panel for managing everything
14. Stats per months with text and money
15. Chatting with colleages (friends)
16. Invite for friends with any social media or link
17. Search for existing people and set relations

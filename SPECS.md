# SOFTWARE STACK

Requirements:

- Git
- Ruby 1.9.2
- Rails 3
- RVM
- MongoDB 

Nice things if you are on OS X:

- Homebrew
- TextMate
- GitX

Open question: do the people that will own the HTML/CSS prefer something like HAML/SASS? If so, we should get that set up.

# INFRASTRUCTURE CONSIDERATIONS

I think it'd be great if nobody has to maintain a shell box. To that end, my proposal is to build on top of PaaS (platform as a service) offerings where possible. Specifically:

- [Heroku](http://www.heroku.com/) - Totally sweet Ruby on Rails hosting with sweet Git-based workflow.
- [Amazon S3](http://aws.amazon.com/s3/) - Cheap, simple to use file storage for image and other file uploads.
- [MongoHQ](https://mongohq.com/home) - Cloud-hosted [MongoDB](http://www.mongodb.org/) hosting. Mildly exotic. The pricing seems fair but if people are opposed to a NOSQL/document-oriented database, I'd be willing to use something more vanilla.

# DESIGN GOALS

## Stuff you can do with it

- The first person who posts on a particular day gets to vanity name the day in that day's header. ("Tuesday of the Depends Adult Undergarments")

### Front page

- Reverse-chronological order.
- Folks can post stuff to the front page. That stuff could be quotes, snippets of text, links with descriptions, images, or YouTube videos.
- Folks can comment on stuff that gets posted to the front page; it gets indented and quasi-threaded underneath the posts.
- Front page gets emptied every month and archived

### Not front page

- User directory
- Pages are created with WikiSyntax
- Chronological order
- Tends to have less rigid use of quasi-threaded style

## Security

- Site lives behind a username / password required login form.
- Serve via SSL to avoid password sniffing on public access points.

## Polish

- Image of the day to be uploaded by first poster; displayed on login screen?
- Pull images from Flickr pool and display in header.
- Bookmarklet or post-by-email
- Relay top-level posts to Facebook and/or Twitter if desired?

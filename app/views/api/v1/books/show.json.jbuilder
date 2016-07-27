
json.title       @book.title
json.author      @book.author.to_s
json.description @book.description
json.ISBN        @book.ISBN
json.year        @book.year


json.comments   @book.comments do |comment|
  json.user     comment.user.to_s
  json.message  comment.message
  json.rate     comment.rate
end

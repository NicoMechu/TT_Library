
json.title       @book.title
json.author      @book.author.to_s
json.description @book.description
json.ISBN        @book.ISBN
json.year        @book.year


json.comments   @book.comments, partial: 'api/v1/books/comment', as: :comment 

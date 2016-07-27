json.books @books.each do |book|
  json.title  book.title
  json.author book.author.to_s
end

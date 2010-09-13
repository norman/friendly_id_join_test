Book.find("the-guide-to-stuff", :include => [:author, :publisher, :slugs],
  :select => ['books.name, books.id, books.author_id, books.publisher_id'])

UnfriendlyBook.find(1, :include => [:author, :publisher],:select => ['unfriendly_books.name, ' +
  'unfriendly_books.id, unfriendly_books.author_id, unfriendly_books.publisher_id'])
class Cart

  def add(books)
    @books = books
  end

  def empty?(books)
    empty = true
    for i in books do
      (empty = false) if i > 0
    end
    empty
  end

  def calculate
    price = 0
    organize_books = [0,0,0,0,0]
    for i in @books do
      organize_books[i-1] += 1
    end

    combo = []

    while !empty?(organize_books)
      combo.push(5 - organize_books.count(0))
      5.times do |i|
        organize_books[i] -= 1 if organize_books[i] > 0
      end
    end

    for i in 0...combo.size do
      if combo[i] == 1
        price += 100
      elsif combo[i] == 2
        price += 190
      end
    end

    return price
  end
end

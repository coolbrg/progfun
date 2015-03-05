module Paginated
  def paginate(page = 1, items_per_page = size, total_items = size)
    @page           = page
    @items_per_page = items_per_page
    @total_items    = total_items
  end

  attr_reader :page, :items_per_page, :total_items

  def total_pages
    (total_items / items_per_page.to_f).ceil
  end
end

collection = %w[first second third fourth fifth sixth seventh eigth night tenth]

collection.extend(Paginated)
collection.paginate(1, 3, collection.size)

puts "There are #{collection.total_pages} pages."
puts "The collection is an Array."           if collection.is_a?(Array)
puts "The collection is a Paginated object." if collection.is_a?(Paginated)
puts %w[a b c].total_pages

class Mastermind

  def self.run(file_path)
    file = File.new file_path
    file.each_line do |line|
      puts parse_line(line)
    end
  end

  def parse_line(line)
    customers, products = line.split(/\s*;\s*/)
    customers = customers.split(/\s*,\s*/)
    products  = products.split(/\s*,\s*/)
    calculate_score(customers, products)
  end

  def calculate_score(customers, products)
    customer_combination = []
    customers.each do |customer|
      customers.size.times do
        used = [customer]
        customer_combination << customer
      end
    end

    SuitabilityScore.new()
  end
end


# ['A', 'B', 'C'] [1, 2, 3]
# => [A,1], [B,2], [C,3]]
# ...
# 4,5,6
#
#
#4 -> iterate over non 4s -> iterate over non 4 an

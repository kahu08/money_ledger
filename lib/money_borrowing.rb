class Debt
  attr_reader(:name, :amount, :time)
  @@debts = []
  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @amount = attributes.fetch(:amount)
    @time = attributes.fetch(:time)
    @id = @@debts.length().+(0)

  end
  define_method(:total) do
    total_debt = (@amount*(1 + 0.1)**(@time)).round
    return total_debt
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
    @@debts
  end

  define_method(:save) do
    @@debts.push(self)
  end
  define_singleton_method(:clear) do
    @@debts = []
  end

  define_singleton_method(:find) do |identification|
    found_debt = nil
    @@debts.each() do |debt|
      if debt.id().eql?(identification.to_i())
        found_debt = debt
      end
    end
    found_debt
  end

end

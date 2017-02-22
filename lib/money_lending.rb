# class Fixnum
#   define_method(:money_lending) do
#     amount = self
#     money_owed = 0
#     if amount.<=(1000)
#       money_owed = amount.*(1.01)
#     elsif amount.<=(10000)
#       money_owed = (amount.*(1.1)).round
#
#     elsif amount.<=(20000)
#       money_owed = (amount.*(1.2)).round
#
#     elsif amount.<=(30000)
#       money_owed = (amount.*(1.3)).round
#     else
#       return "go to a bank maan!!"
#     end
#     money_owed.to_i()
#   end
#
# end
############################
class Loan
  attr_reader(:name, :amount, :time)
  @@loans = []
  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @amount = attributes.fetch(:amount)
    @time = attributes.fetch(:time)
    @id = @@loans.length().+(0)

  end
  define_method(:total) do
    total_loan = (@amount*(1 + 0.1)**(@time)).round
    return total_loan
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
    @@loans
  end

  define_method(:save) do
    @@loans.push(self)
  end
  define_singleton_method(:clear) do
    @@loans = []
  end

  define_singleton_method(:find) do |identification|
    found_loan = nil
    @@loans.each() do |loan|
      if loan.id().eql?(identification.to_i())
        found_loan = loan
      end
    end
    found_loan
  end

end

require('sinatra')
require('sinatra/reloader')
require('./lib/money_lending')
require('./lib/money_borrowing')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/loanForm') do
  erb(:loanForm)
end

get('/debtForm') do
  erb(:debtForm)
end
# get('/loan') do
#   @name = params.fetch('name').money_lending()
#   @amount = params.fetch('amount').to_i().money_lending()
#   @time = params.fetch('time').money_lending()
#   erb(:loans)
# end

###########################
get('/loans') do
  @loans = Loan.all()
  erb(:loans)
end

#user submits form and values fetched to create new debtor
post('/loans') do
  name = params.fetch("name").to_s()
  amount = params.fetch("amount").to_i()
  time = params.fetch("time").to_i()
  Loan.new({:name=> name, :amount => amount, :time => time}).save()
  erb(:success)
end

# user requests to see a particular debtor
get('/loans/:id') do
  @loan = Loan.find(params.fetch("id"))
  erb(:loan)
end

####################################
# get('/debts') do
#   @debts = Debt.all()
#   erb(:debts)
# end
#
# #user submits form and values fetched to create new loaner
# post('/debts') do
#   name = params.fetch("name").to_s()
#   amount = params.fetch("amount").to_i()
#   time = params.fetch("time").to_i()
#   Debt.new({:name=> name, :amount => amount, :time => time}).save()
#   erb(:success)
# end
#
# # user requests to see a particular loaner
# get('/debts/:id') do
#   @debt = Debt.find(params.fetch("id"))
#   erb(:debt)
# end

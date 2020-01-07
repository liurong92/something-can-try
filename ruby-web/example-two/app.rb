require 'sinatra'
require_relative 'public/src/main'

get '/' do
  erb :index
end

post '/' do
  items = []
  items.push ({
                 'inputs':params['fill_in_1'],
                 'name':'fill_in_1'
              })
  items.push({
                 'inputs':params['fill_in_2'],
                 'name':'fill_in_2'
             })
  items.push({
                 'inputs':params['choice_1'],
                 'name':'choice_1'
             })
  items.push({
                 'inputs':params['choice_2'],
                 'name':'choice_2'
             })
  items.push({
                 'inputs':params['multiple_choice_1'],
                 'name':'multiple_choice_1'
             })
  items.push({
                 'inputs':params['multiple_choice_2'],
                 'name':'multiple_choice_2'
             })
  items.push({
                 'inputs':params['true_false_1'],
                 'name':'true_false_1'
             })
  items.push({
                 'inputs':params['true_false_2'],
                 'name':'true_false_2'
             })
  items.push({
                 'inputs':params['short_answer_1'],
                 'name':'short_answer_1'
             })
  calculator = Calculator.new(items)
  @score = calculator.getScore
  erb :index
end
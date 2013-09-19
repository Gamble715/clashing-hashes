require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'twitter'
require_relative 'lib/clashing_hashes/follower_clash'
require_relative 'lib/follower_clash'

get '/' do
  erb :index
end

post '/twitter' do
  @form_submitted = "Your form has been submitted."
  @first_hash = params[:first_hash]
  @second_hash = params[:second_hash]
  @tweeted1 = 8283
  @tweeted2 = 828
  if @tweeted1 < @tweeted2
    @winner = @second_hash
  elsif @tweeted2 < @tweeted1
    @winner = @first_hash
  else
    @winner = "Both"
  end
  erb :twitter
end
require 'ruby-web-search'
class SearchesController < ApplicationController
def index
if not params[:user].nil?
response = RubyWebSearch::Google.search(:query => params[:user][:search])
@search = response.results
end
end
end

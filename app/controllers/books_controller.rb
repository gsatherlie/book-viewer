class BooksController < ApplicationController

	def index
		@books = get_books()
	end

	private

	def get_books()
		response = HTTParty.get("https://skookum-test-api.herokuapp.com/api/v1/books")
		
		if response.code == 404 then
				return nil
		end

		response
	end
end

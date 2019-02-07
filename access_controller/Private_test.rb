class Private_test
	def initialize
		puts "this is initialize method"
		second_with_private
	end

	def first
		p "this is first public method"
	end

	private

	def second_with_private
		p "this is second but privite method"
	end
end

pt = Private_test.new
pt.first
# pt.second_with_private
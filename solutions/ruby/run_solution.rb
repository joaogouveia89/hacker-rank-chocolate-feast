require 'colorize'
require './chocolate_feast'

#input parsing and reading

input_files = Dir.entries("../../test-cases/input")


start = Time.now
input_files.each do |input_file|
	unless input_file === "." || input_file === ".." 
		input = File.open("../../test-cases/input/" + input_file)
		data = input.map(&:chomp)
		response = []
		data.each.with_index do |line, idx|
			unless idx === 0
				spl = line.split(" ")
				response << chocolate_feast(spl[0].to_i, spl[1].to_i, spl[2].to_i)
			end
		end

		output_number = input_file[/input(.*?)\.txt/m, 1]

		output_file = File.open("../../test-cases/output/output" + output_number + ".txt")

		data = output_file.map(&:chomp)
		output = []
		data.each do |d|
			output << d.to_i
		end

		if response === output
			puts ("INPUT " + output_number.to_s).green
		else
			puts ("INPUT " + output_number.to_s).red
			puts(response)
		end
	end
end
finish = Time.now
puts("solved all the test cases in " + (1000 * (finish - start)).round(2).to_s + "ms")
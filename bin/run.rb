require_relative "../lib/bitmap"

commands = File.readlines($*.first).map(&:strip)
puts Bitmap.new.show(commands)

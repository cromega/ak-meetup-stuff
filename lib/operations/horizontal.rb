module Operations
  class Horizontal
    def initialize(*params)
      @line = params[0].to_i
      @x = params[1].to_i
      @y = params[2].to_i
      @colour = params[3]
    end

    def run(bitmap)
      (@x..@y).each do |i|
        bitmap[@line - 1][i - 1] = @colour
      end
      bitmap
    end
  end
end


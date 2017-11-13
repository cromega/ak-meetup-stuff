module Operations
  class Vertical
    def initialize(*params)
      @x = params[0].to_i
      @y = params[1].to_i
      @column = params[2].to_i
      @colour = params[3]
    end

    def run(bitmap)
      (@x..@y).each do |i|
        bitmap[i - 1][@column - 1] = @colour
      end
      bitmap
    end
  end
end


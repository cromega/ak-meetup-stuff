module Operations
  class Pixel
    def initialize(*params)
      @x = params[0].to_i
      @y = params[1].to_i
      @colour = params[2]
    end

    def run(bitmap)
      if @x > bitmap.size - 1 || @y > bitmap.first.size - 1
        raise "Coordinates out of bounds"
      end

      bitmap[@y - 1][@x - 1] = @colour
      bitmap
    end
  end
end

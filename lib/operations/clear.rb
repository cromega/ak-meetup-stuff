module Operations
  class Clear
    def initialize(*params)
      @colour = params.first || "0"
    end

    def run(bitmap)
      Array.new(bitmap.size) { @colour * bitmap.first.size }
    end
  end
end


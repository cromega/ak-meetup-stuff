module Operations
  class New
    def initialize(*commands)
      @m, @n = commands.map(&:to_i)
    end

    def run(bitmap)
      Array.new(@m) { "0" * @n }
    end
  end
end

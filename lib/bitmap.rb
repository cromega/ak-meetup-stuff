require_relative "operations/clear"
require_relative "operations/new"
require_relative "operations/pixel"
require_relative "operations/vertical"
require_relative "operations/horizontal"

class Bitmap
  def initialize
  end

  def show(lines)
    bitmap = []

    lines.each do |line|
      command, params = line.split(" ", 2)
      params = params.split if params

      case command
      when "I"
        bitmap = Operations::New.new(*params).run(bitmap)
      when "C"
        bitmap = Operations::Clear.new(*params).run(bitmap)
      when "P"
        bitmap = Operations::Pixel.new(*params).run(bitmap)
      when "V"
        bitmap = Operations::Vertical.new(*params).run(bitmap)
      when "H"
        bitmap = Operations::Horizontal.new(*params).run(bitmap)
      when "S"
        return bitmap.join("\n")
      end
    end
  end
end

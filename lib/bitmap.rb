require_relative "operations/clear"
require_relative "operations/new"
require_relative "operations/pixel"
require_relative "operations/vertical"
require_relative "operations/horizontal"

class Bitmap
  def show(lines)
    ops = []

    lines.each do |line|
      command, params = line.split(" ", 2)
      params = params.split if params

      case command
      when "I"
        ops << Operations::New.new(*params)
      when "C"
        ops << Operations::Clear.new(*params)
      when "P"
        ops << Operations::Pixel.new(*params)
      when "V"
        ops << Operations::Vertical.new(*params)
      when "H"
        ops << Operations::Horizontal.new(*params)
      when "S"
        bitmap = execute(ops)
        return bitmap.join("\n")
      end
    end
  end

  private

  def execute(ops)
    bitmap = []
    ops.each do |op|
      bitmap = op.run(bitmap)
    end
    bitmap
  end
end

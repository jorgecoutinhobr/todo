module ItemsHelper
  def item_border_color(item)
    case item.priority
    when "minimal"
      "border-green-400"
    when "normal"
      "border-yellow-400"
    when "critical"
      "border-red-900"
    end
  end
end

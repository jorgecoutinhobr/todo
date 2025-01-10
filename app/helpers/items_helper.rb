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

  def item_background_color(item)
    item.completed ? "border-none bg-base-300" : ""
  end

  def item_line_style(item)
     item.completed ? "line-through" : ""
  end
end

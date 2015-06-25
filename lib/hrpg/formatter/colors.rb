module HRPG::Formatter::Colors

  VALUE_COLORS = {
    5..10 => :light_blue,
    1..5 => :light_green,
    -1..1 => :light_yellow,
    -5..-1 => :yellow,
    -10..-5 => :light_red
  }

  STAT_COLORS = {
    HP: :red,
    MP: :green,
    EXP: :yellow,
    DAILIES: :light_magenta,
    TODOS: :light_blue
  }

  def value_color(value)
    VALUE_COLORS.select { |key, color| key.cover? value }.values.first
  end

  def stat_color(label)
    STAT_COLORS.key?(label) ? STAT_COLORS[label] : :default
  end

end

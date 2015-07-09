module PositionsHelper

  def capitalize_name(first_name, last_name)
    name = ""
    name += first_name.capitalize + " "
    name += last_name.capitalize
    return name
  end

end

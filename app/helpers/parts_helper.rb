module PartsHelper
  def categories_for_select(selected=nil)
    selected = selected || 1
    options_from_collection_for_select(Category.all, 'id', 'name', selected)
  end
end

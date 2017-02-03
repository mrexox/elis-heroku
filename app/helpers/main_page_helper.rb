module MainPageHelper
  def active?(var, sym)
    if var == sym
      raw 'class="active"'
    else
      ''
    end
  end

  def home_path
    'main_page/home'
  end
end

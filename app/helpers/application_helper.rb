module ApplicationHelper

  def current_class?(pathToValidate)
    request.path == pathToValidate ? 'active' : ''
  end

end

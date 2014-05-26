class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def find_resource_by_nested_path
    target = nil
    request.path_parameters.each do |name, value|
      if name =~ /(.+)_id$/
        if target
          target = target.send($1.pluralize.to_sym).find(value)
        else
          target = $1.classify.constantize.find(value)
        end
      end
    end
    target
  end
end

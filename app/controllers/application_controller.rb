class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def home
    render react_component: 'Hello', props: { name: 'Jen' }
  end
end

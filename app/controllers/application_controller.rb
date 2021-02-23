class ApplicationController < ActionController::Base
  def hello
    render html: "hello, freshly!"
  end
end

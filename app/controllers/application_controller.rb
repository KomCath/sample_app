class ApplicationController < ActionController::Base
  def hello
    render html: "hello, freshyly!"
  end
end

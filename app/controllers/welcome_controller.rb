class WelcomeController < ApplicationController
 http_basic_authenticate_with name: "keith", password: "david", except: :show

  def index
  end
end

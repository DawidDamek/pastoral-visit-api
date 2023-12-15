class ApplicationController < ActionController::API
  include JSONAPI::ActsAsResourceController
  respond_to :json
end

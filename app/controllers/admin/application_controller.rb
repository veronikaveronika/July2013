class Admin::ApplicationController < ApplicationController
	before_filter :only_for_admin!
end
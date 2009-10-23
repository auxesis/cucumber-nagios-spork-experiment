#!/usr/bin/env ruby 


require 'rubygems'
require 'spork'

Spork.prefork do

  require File.join(File.dirname(__FILE__), '..', '..', 'vendor', 'gems', 'environment')
  require 'cucumber'  
  require 'webrat'
  require 'webrat/mechanize'
  
  class ResponseHelper
    def response
      webrat_session.response
    end
  end
  
  World do
    ResponseHelper.new
    Webrat::Session.new(Webrat::MechanizeAdapter.new)
  end
end





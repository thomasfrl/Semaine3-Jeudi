require 'bundler'
Bundler.require
$:.unshift File.expand_path('./../lib', __FILE__)
require 'model_game.rb'
require 'model_player.rb'
require 'router.rb'
require 'controler.rb'
require 'view.rb'

Router.new.perform
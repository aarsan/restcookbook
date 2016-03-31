#
# Cookbook Name:: kcura
# Recipe:: installer
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


cookbook_file 'c:/config.json' do
  source 'config.json'
  action :create
end

config = JSON.parse(File.read('c:/config.json'))

folders = config['common']['folders']

folders.each do |folder|
  directory folder do
    action :create
  end
end


#
# Cookbook Name:: kcura
# Recipe:: kepler
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


keplerapi 'kepler_test' do
  guri 'https://data.cityofchicago.org/resource/alternative-fuel-locations.json'
  gmethod 'get'
  gid '39683'
  action :create
end

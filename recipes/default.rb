#
# Cookbook Name:: react_demo
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package ['git']  do
  action :install
end

directory '/opt/react' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

application '/opt/react/demo' do
  git '/opt/react/demo' do
    repository 'https://github.com/phosphene/react-fullstack-d3-demo.git'
  end
  javascript '6.4.0'
  npm_install
  execute 'build' do
    cwd '/opt/react/demo'
    command "/opt/nodejs-6.4.0/bin/node /opt/nodejs-6.4.0/bin/npm run build:all"
    user 'root'
  end
  npm_start do
    path '/opt/react/demo'
    command 'start'
    user 'root'
  end

end

resource_name :keplerapi

property :guri, String, required: false
property :gmethod, String, required: false
property :gid, String, required: false

action :create do

    locs = Chef::HTTP.new(guri).get("?id=#{gid}")
    locs = JSON.parse(locs)
    
    locs.each do |loc|

        directory "c:/#{gid}" do
            action :create
        end

        template "c:/#{gid}/app.conf" do
            source 'app.erb'
            variables({
                :sa => loc['street_address']
            })
        action :create
        end
    end
end

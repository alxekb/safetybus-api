json.data do
    json.user do
        json.partial! 'v1/orgs/org', org: @org
    end
end
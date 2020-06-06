json.data do 
    json.array! @orgs do |org|
        json.partial! 'v1/orgs/org', org: org
    end
end

local http = require("socket.http")
local ltn12 = require("ltn12")
local json = require("dkjson")


array = {"15035769500","18447073720","15848945997",
"18600517664","18847247269","18811500765","18247197363",
"14777707771","18780002244","15754884017","15598194478"}

local t ={}
local r,c,h,body=http.request{
    url = "https://redbag.goyounglife.com/admin/version",
    sink = ltn12.sink.table(t)}
    -- return r,c,h,table.concat(t)
    -- if (c~= 200) then
	-- 	print("ErrorCode: " .. c)
	-- 	return
	-- else
	-- 	return body
    -- end
 print(table.concat(t))

-- for i=1,1 do
    -- 参考 http://www.stutostu.com/?p=1285  
    -- local response_body = {}  
    -- -- local request_body = {"mobile" = array[i]}
    -- local request_body = [[mobile=18780002244]]
    -- local res, code, response_headers = http.request{

    --     url = "https://redbag.goyounglife.com/login/identifyingCode",  
    --     method = "POST",  
    --     headers =  
    --     {  
    --         ["Content-Type"] = "application/x-www-form-urlencoded",  
    --         ["Content-Length"] = #request_body,  
    --     },  
    --     source = ltn12.source.string(request_body),  
    --     sink = ltn12.sink.table(response_body)  
    -- }  
    -- print(res)
    -- print(code)
            
    -- if type(response_headers) == "table" then
    --     for k, v in pairs(response_headers) do
    --         print(k, v)
    --     end
    -- end
             
    -- print("Response body:")
    --     if type(response_body) == "table" then
    --         print(table.concat(response_body))
    --     else
    --         print("Not a table:", type(response_body))
    --     end
    -- --local tabledata  = --table格式的数据--
    -- local jsondata =  json.encode (response_body, { indent = true })
    -- print(jsondata)
-- end


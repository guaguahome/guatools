--
-- Author: GuaGua
-- Date: 2015-03-27 18:25:13
-- 输出助手
local printTool = {}


--输出 table 的所有key组合,以 : 分隔
function printTool.printKeys(table) 
	local str = ""
    for k,v in pairs(table) do
        str = str .. " : " .. k
    end
    return str 
end 





return printTool 


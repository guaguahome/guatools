--
-- Author: GuaGua
-- Date: 2015-03-12 14:01:16
-- 我得常用助手类

local guaHelper = {}

--输出参数获取animation对象
function guaHelper.createAnimation(filePrex , start , endnumb ,delta)
	local frames = display.newFrames(filePrex,start, endnumb)
	local animation = display.newAnimation(frames, delta) 
	return animation 
end 

--输出 table 的所有key组合
function guaHelper.printKeys(table) 
	local str = ""
    for k,v in pairs(table) do
        str = str .. " : " .. k
    end
    return str 
end 




return guaHelper 



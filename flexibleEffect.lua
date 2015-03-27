--
-- Author: GuaGua
-- Date: 2015-03-10 16:06:18
-- Action 特效助手

local fiexibleEffect = {}
-- 弹性效果
function fiexibleEffect.new(offset,item,pos)

	local function zoom1(offset, time, item,pos)
            local x, y = pos.x, pos.y
            local size = item:getContentSize()

            local scaleX = item:getScaleX() * (size.width + offset) / size.width
            local scaleY = item:getScaleY() * (size.height - offset) / size.height

            local moveAct = cc.MoveTo:create(time,cc.p(x,y-offset))
            local scaleAct =  cc.ScaleTo:create(time,scaleX,scaleY)
            local array = {}
            table.insert(array, moveAct)
            table.insert(array, scaleAct)
            return cc.Spawn:create(array)
    end
    local function zoom2(offset, time, item,pos)
            local x, y = pos.x, pos.y
            local size = item:getContentSize()
            local moveAct = cc.MoveTo:create(time/2,cc.p(x,y+offset))
            local scaleAct =  cc.ScaleTo:create(time,1,1)
            local array = {}
            table.insert(array, moveAct)
            table.insert(array, scaleAct)
            return cc.Spawn:create(array)
        end
    local act1 = zoom1(offset, 0.08,item,pos)
    local act2 = zoom2(offset, 0.09,item,pos)
    local act3 = zoom1(offset/2,0.1 , item,pos)
    local act4 = zoom2(offset/2,0.11, item,pos)

    local seq = cc.Sequence:create(act1,act2,act3,act4)
 	
 	return seq

end

return fiexibleEffect

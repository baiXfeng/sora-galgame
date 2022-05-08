
-- self 不可写入新成员变量
-- 使用一个新表来保留成员变量
local c = {}

function init( self )
	c.title = {
		c.start,
		c.option
	}
	c.index = 1

	c.se = Sound("assets/res/sound.wav")
end

function on_assign( self, name, object )
	c[name] = object
	print(name, object)
end

function key_down( self, key )
	if key == BUTTON_UP then

		c.index = c.index - 1
		if c.index < 1 then
			c.index = #c.title
		end
		local position = c.title[ c.index ]:position()
		c.icon:setPosition( position )

		c.se:play()

	elseif key == BUTTON_DOWN then

		c.index = c.index + 1
		if c.index > #c.title then
			c.index = 1
		end
		local position = c.title[ c.index ]:position()
		c.icon:setPosition( position )

		c.se:play()
	
	elseif key == BUTTON_A then
	
		if c.index == 1 then
			-- 进入新场景
			scene.push( "assets/story/scene.xml" )
		elseif c.index == 2 then
			print("no processing program")
		end
		c.se:play()

	end
end

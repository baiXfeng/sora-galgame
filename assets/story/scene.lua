
-- 调用顺序是: 1.on_assign 2.init

local c = {}

function animation( self )
	
	local scale = action.ScaleTo({1.0, 1.0}, 1.0)
	local rotate = action.RotationTo(360*4, 1.0)

	self:stopAllActions()
	self:runAction(scale)
	self:runAction(rotate)

	self:setRenderTarget(true)
	self:setScale({x=0.01, y=0.01})
	self:setPosition({x=480, y=272})
	self:setAnchor({x=0.5, y=0.5})
	self:setRotation(0)
end

function init( self )
	-- init 负责初始化

	local size = self:size()
	c.npc:setScale({ x=2, y=2 })						-- 缩放到2倍大小
	c.npc:setPosition({ x=size.x*0.5, y=-40 })			-- 设置新坐标

	c.bgm = Music("assets/res/bgm.mp3")					-- 加载背景音乐
	c.bgm:play()										-- 播放背景音乐

	c.se = Sound("assets/res/sound.wav")				-- 加载音效

	animation( self )
end

function release( self )
	c.bgm:stop()
	c.se:stop()
end

function on_assign( self, name, object )
	-- on_assign 负责绑定UI布局文件中的元素到lua脚本
	c[name] = object
end

function key_down( self, key )
	-- 按键按下处理
	if key == BUTTON_UP then
		c.se:play()
	elseif key == BUTTON_DOWN then
		c.se:play()
	elseif key == BUTTON_LEFT then
		c.se:play()
	elseif key == BUTTON_RIGHT then
		c.se:play()
	elseif key == BUTTON_A then
		c.se:play()
		animation( self )
	elseif key == BUTTON_B then
		-- 回退到上一个场景
		scene.pop()
		c.se:play()
	elseif key == BUTTON_X then
		-- 对应键盘i键
		c.textbox:setVisible( not c.textbox:visible() )	-- 隐藏/显示 对话框
		c.se:play()
	end
end

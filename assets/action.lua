
local _action = {

    Steps = function(...)
        return {
            type = "Sequence",
            actions = {...},
        }
    end,

    Repeat = function(act, repeatCount)
        if repeatCount == nil then
            repeatCount = 0
        end
        return {
            type = "Repeat",
            action = act,
            repeatCount = repeatCount,  -- int
        }
    end,

    Delay = function(duration)
        return {
            type = "Delay",
            duration = duration,    -- float
        }
    end,

    Callback = function(lua_func, object)
        return {
            type = "Callback",
            func = lua_func,        -- function
            object = object,        -- table or cpp object
        }
    end,

    ScaleTo = function(scale, duration)
        return {
            type = "ScaleTo",
            scale = scale,          -- {[0], [1]}
            duration = duration,    -- float
        }
    end,

    ScaleBy = function(scale, duration)
        return {
            type = "ScaleBy",
            scale = scale,          -- {[0], [1]}
            duration = duration,    -- float
        }
    end,

    MoveTo = function(position, duration)
        return {
            type = "MoveTo",
            position = position,    -- {[0], [1]}
            duration = duration,    -- float
        }
    end,

    MoveBy = function(position, duration)
        return {
            type = "MoveBy",
            position = position,    -- {[0], [1]}
            duration = duration,    -- float
        }
    end,

    RotationTo = function(rotation, duration)
        return {
            type = "RotationTo",
            rotation = rotation,    -- float
            duration = duration,    -- float
        }
    end,

    RotationBy = function(rotation, duration)
        return {
            type = "RotationBy",
            rotation = rotation,    -- float
            duration = duration,    -- float
        }
    end,

    FadeTo = function(opacity, duration)
        return {
            type = "FadeTo",
            opacity = opacity,      -- int 0-255
            duration = duration,    -- float
        }
    end,

    FadeBy = function(opacity, duration)
        return {
            type = "FadeBy",
            opacity = opacity,      -- int
            duration = duration,    -- float
        }
    end,

    Blink = function(times, duration)
        return {
            type = "Blink",
            times = times,          -- int
            duration = duration,    -- float
        }
    end,
}

action = _action

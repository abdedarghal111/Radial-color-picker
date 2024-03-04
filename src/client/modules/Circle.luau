--!strict

export type Circle = {
    __index: Circle,
    new: (h:number, w:number, r:number) -> circle
}

export type circle = typeof(setmetatable(
    {} :: {
    h: number,
    w: number,
    r: number
}, {} :: Circle))

local Circle : Circle = {} :: Circle
Circle.__index = Circle

function Circle.new(h,w,r)
    local self = {
        h = h,
        w = w,
        r = r
    }

    setmetatable(self,Circle)

    return self
end

return Circle
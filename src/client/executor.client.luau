local testEZ = require(script.Parent.libraries.testEZ)
testEZ.run(script.Parent.modules,function(callback)
    print(callback)
end)

local circle : Circle = require(script.Parent.modules.Circle);
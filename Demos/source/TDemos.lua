TDemos = class()


function TDemos:New()
	print("TDemos:New")
	self.preview = {}
	self.currentDemo =""
	return class(self)

end


function TDemos:Add(demoName,screenInfo,obj)
	self.preview[demoName] = {}
	self.preview[demoName].name = screenInfo
	self.preview[demoName].demo = obj
end

function TDemos:SetDemo(name)
	self.currentDemo = name
	self:Initialize()
end

function TDemos:Initialize()
	self.preview[self.currentDemo].demo:Initialize()
end

function TDemos:Update(dt)
	self.preview[self.currentDemo].demo:Update(dt)
end

function TDemos:PreRender() 
	self.preview[self.currentDemo].demo:PreRender()
end

function TDemos:Render()
	self.preview[self.currentDemo].demo:Render()
end

function TDemos:GetDemoInfo()
	return self.preview[self.currentDemo].name
end


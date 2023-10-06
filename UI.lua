local Library = {
	Theme = {
		Accent = Color3.fromRGB(1, 170, 244),
		Background = Color3.fromRGB(8, 8, 8),
		BackgroundAccent = Color3.fromRGB(11, 11, 14),
		Border = Color3.fromRGB(40, 40, 40),
		Focused = Color3.fromRGB(255, 255, 255),
		NotFocused = Color3.fromRGB(120, 120, 120),
		Highlighted = Color3.fromRGB(172, 172, 172)
	},
	Flags = {},
	Items = {},
	Saved = {},
	Utils = {},
	Opened = {},
	Dropdowns = {}
}




function Library:New(option)
	option = type(option) == "table" and option or {}
	option.title = option.title or "BABAWARE"

	local TabHandler = {}

	local ScreenGui = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
	ScreenGui.Name = "Skid"

	local Canvas = Instance.new("Frame")
	local TabList = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local UIPadding = Instance.new("UIPadding")
	local BlurFolder = Instance.new("Folder")
	local BlurFrame = Instance.new("Frame")
	local Separator = Instance.new("Frame")
	local Profile = Instance.new("Frame")
	local Avatar = Instance.new("ImageLabel")
	local UICorner = Instance.new("UICorner")
	local UIListLayout = Instance.new("UIListLayout")
	local UIPadding_2 = Instance.new("UIPadding")
	local ProfileInfo = Instance.new("Frame")
	local User = Instance.new("TextLabel")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local Till = Instance.new("TextLabel")
	local UIListLayout_3 = Instance.new("UIListLayout")
	local Separator_2 = Instance.new("Frame")
	local Main = Instance.new("Frame")
	local UIListLayout_4 = Instance.new("UIListLayout")
	local UICorner_2 = Instance.new("UICorner")
	local UIListLayout_5 = Instance.new("UIListLayout")

	--Properties:

	Canvas.Name = "Canvas"
	Canvas.Parent = ScreenGui
	Canvas.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Canvas.BackgroundTransparency = 0.350
	Canvas.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Canvas.BorderSizePixel = 0
	Canvas.Position = UDim2.new(0.100000006, 0, 0.100000001, 0)
	Canvas.Size = UDim2.new(0, 686, 0, 595)

	TabList.Name = "TabList"
	TabList.Parent = Canvas
	TabList.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	TabList.BackgroundTransparency = 0.500
	TabList.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TabList.BorderSizePixel = 0
	TabList.Position = UDim2.new(-0.109329447, 0, -0.0235294122, 0)
	TabList.Size = UDim2.new(0, 168, 0, 595)

	Title.Name = "Title"
	Title.Parent = TabList
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Size = UDim2.new(0, 169, 0, 54)
	Title.Font = Enum.Font.GothamBold
	Title.Text = "<stroke color=\"#0081c7\" joins=\"miter\" thickness=\"1\" weight=\"bold\" transparency=\"0.5\">".. tostring(option.title) .."</stroke>"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextSize = 24.000
	Title.RichText = true

	UIPadding.Parent = Title
	UIPadding.PaddingTop = UDim.new(0, 13)

	BlurFolder.Name = "BlurFolder"
	BlurFolder.Parent = TabList

	BlurFrame.Name = "BlurFrame"
	BlurFrame.Parent = BlurFolder
	BlurFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BlurFrame.BackgroundTransparency = 1.000
	BlurFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	BlurFrame.BorderSizePixel = 0
	BlurFrame.Size = UDim2.new(0, 168, 0, 595)

	Separator.Name = "Separator"
	Separator.Parent = BlurFolder
	Separator.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Separator.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Separator.BorderSizePixel = 0
	Separator.Position = UDim2.new(3.63304508e-07, 0, 0.909243703, 0)
	Separator.Size = UDim2.new(0, 169, 0, 1)

	Profile.Name = "Profile"
	Profile.Parent = BlurFolder
	Profile.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Profile.BackgroundTransparency = 1.000
	Profile.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Profile.BorderSizePixel = 0
	Profile.Position = UDim2.new(3.63304508e-07, 0, 0.910924375, 0)
	Profile.Size = UDim2.new(0, 169, 0, 53)

	Avatar.Name = "Avatar"
	Avatar.Parent = Profile
	Avatar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Avatar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Avatar.BorderSizePixel = 0
	Avatar.Position = UDim2.new(0.035502959, 0, 0.113207549, 0)
	Avatar.Size = UDim2.new(0, 33, 0, 33)
	Avatar.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

	UICorner.CornerRadius = UDim.new(0, 3333)
	UICorner.Parent = Avatar

	UIListLayout.Parent = Profile
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout.Padding = UDim.new(0, 10)

	UIPadding_2.Parent = Profile
	UIPadding_2.PaddingLeft = UDim.new(0, 12)

	ProfileInfo.Name = "ProfileInfo"
	ProfileInfo.Parent = Profile
	ProfileInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ProfileInfo.BackgroundTransparency = 1.000
	ProfileInfo.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ProfileInfo.BorderSizePixel = 0
	ProfileInfo.Position = UDim2.new(0.273885339, 0, 0.188679248, 0)
	ProfileInfo.Size = UDim2.new(0, 113, 0, 30)

	User.Name = "User"
	User.Parent = ProfileInfo
	User.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	User.BackgroundTransparency = 1.000
	User.BorderColor3 = Color3.fromRGB(0, 0, 0)
	User.BorderSizePixel = 0
	User.Size = UDim2.new(0, 113, 0, 15)
	User.Font = Enum.Font.Gotham
	User.Text = "lncr#0"
	User.TextColor3 = Color3.fromRGB(255, 255, 255)
	User.TextSize = 12.000
	User.TextXAlignment = Enum.TextXAlignment.Left

	UIListLayout_2.Parent = ProfileInfo
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

	Till.Name = "Till"
	Till.Parent = ProfileInfo
	Till.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Till.BackgroundTransparency = 1.000
	Till.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Till.BorderSizePixel = 0
	Till.Size = UDim2.new(0, 113, 0, 15)
	Till.Font = Enum.Font.Gotham
	Till.Text = "<font color=\"rgb(58, 72, 83)\">Till:</font> <font color=\"rgb(1, 170, 244)\" size=\"15\">∞</font>"
	Till.TextColor3 = Color3.fromRGB(255, 255, 255)
	Till.TextSize = 12.000
	Till.TextXAlignment = Enum.TextXAlignment.Left
	Till.RichText = true

	UIListLayout_3.Parent = TabList
	UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_3.Padding = UDim.new(0, 5)

	Separator_2.Name = "Separator"
	Separator_2.Parent = Canvas
	Separator_2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Separator_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Separator_2.BorderSizePixel = 0
	Separator_2.Position = UDim2.new(0.246355683, 0, 0, 0)
	Separator_2.Size = UDim2.new(0, 1, 0, 595)
	Separator_2.LayoutOrder = 1

	Main.Name = "Main"
	Main.Parent = Canvas
	Main.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
	Main.BackgroundTransparency = 0.050
	Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0.246355683, 0, 0, 0)
	Main.Size = UDim2.new(0, 517, 0, 595)
	Main.LayoutOrder = 2

	UIListLayout_4.Parent = Main
	UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder

	UICorner_2.CornerRadius = UDim.new(0, 0)
	UICorner_2.Parent = Main

	UIListLayout_5.Parent = Canvas
	UIListLayout_5.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder

	local inUse, inputPosition, CanvasPosition, dragInput

	Title.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			inUse = true; inputPosition = input.Position; CanvasPosition = Canvas.Position;
			input.Changed:Connect(function() if input.UserInputState == Enum.UserInputState.End then inUse = false end end)
		end
	end)

	Title.InputChanged:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then dragInput = input end end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if input == dragInput and inUse then
			Canvas.Position = UDim2.new(CanvasPosition.X.Scale, CanvasPosition.X.Offset + (input.Position - inputPosition).X, CanvasPosition.Y.Scale, CanvasPosition.Y.Offset + (input.Position - inputPosition).Y)
		end
	end)

	-- [[ THIS MODULE IS NOT MINE	https://devforum.roblox.com/t/new-ui-blur-fully-automatic/2402850/30 ]]
	do 
		local RunService = game:GetService('RunService')
		local camera = workspace.CurrentCamera
		local MTREL = "Glass"
		local binds = {}
		local root = Instance.new('Folder', camera)
		root.Name = 'BlurSnox'

		local gTokenMH = 99999999
		local gToken = math.random(1, gTokenMH)

		local DepthOfField = Instance.new('DepthOfFieldEffect', game:GetService('Lighting'))
		DepthOfField.FarIntensity = 0
		DepthOfField.FocusDistance = 51.6
		DepthOfField.InFocusRadius = 50
		DepthOfField.NearIntensity = 1
		DepthOfField.Name = "DPT_"..gToken

		local frame = Instance.new('Frame')
		frame.Parent = BlurFrame
		frame.Size = UDim2.new(0.95, 0, 0.95, 0)
		frame.Position = UDim2.new(0.5, 0, 0.5, 0)
		frame.AnchorPoint = Vector2.new(0.5, 0.5)
		frame.BackgroundTransparency = 1

		local GenUid; do
			local id = 0
			function GenUid()
				id = id + 1
				return 'neon::'..tostring(id)
			end
		end

		do
			local function IsNotNaN(x)
				return x == x
			end
			local continue = IsNotNaN(camera:ScreenPointToRay(0,0).Origin.x)
			while not continue do
				RunService.RenderStepped:wait()
				continue = IsNotNaN(camera:ScreenPointToRay(0,0).Origin.x)
			end
		end

		local DrawQuad; do
			local acos, max, pi, sqrt = math.acos, math.max, math.pi, math.sqrt
			local sz = 0.2

			function DrawTriangle(v1, v2, v3, p0, p1)
				local s1 = (v1 - v2).magnitude
				local s2 = (v2 - v3).magnitude
				local s3 = (v3 - v1).magnitude
				local smax = max(s1, s2, s3)
				local A, B, C
				if s1 == smax then
					A, B, C = v1, v2, v3
				elseif s2 == smax then
					A, B, C = v2, v3, v1
				elseif s3 == smax then
					A, B, C = v3, v1, v2
				end

				local para = ( (B-A).x*(C-A).x + (B-A).y*(C-A).y + (B-A).z*(C-A).z ) / (A-B).magnitude
				local perp = sqrt((C-A).magnitude^2 - para*para)
				local dif_para = (A - B).magnitude - para

				local st = CFrame.new(B, A)
				local za = CFrame.Angles(pi/2,0,0)

				local cf0 = st

				local Top_Look = (cf0 * za).lookVector
				local Mid_Point = A + CFrame.new(A, B).lookVector * para
				local Needed_Look = CFrame.new(Mid_Point, C).lookVector
				local dot = Top_Look.x*Needed_Look.x + Top_Look.y*Needed_Look.y + Top_Look.z*Needed_Look.z

				local ac = CFrame.Angles(0, 0, acos(dot))

				cf0 = cf0 * ac
				if ((cf0 * za).lookVector - Needed_Look).magnitude > 0.01 then
					cf0 = cf0 * CFrame.Angles(0, 0, -2*acos(dot))
				end
				cf0 = cf0 * CFrame.new(0, perp/2, -(dif_para + para/2))

				local cf1 = st * ac * CFrame.Angles(0, pi, 0)
				if ((cf1 * za).lookVector - Needed_Look).magnitude > 0.01 then
					cf1 = cf1 * CFrame.Angles(0, 0, 2*acos(dot))
				end
				cf1 = cf1 * CFrame.new(0, perp/2, dif_para/2)

				if not p0 then
					p0 = Instance.new('Part')
					p0.FormFactor = 'Custom'
					p0.TopSurface = 0
					p0.BottomSurface = 0
					p0.Anchored = true
					p0.CanCollide = false
					p0.CastShadow = false
					p0.Material = MTREL
					p0.Size = Vector3.new(sz, sz, sz)
					local mesh = Instance.new('SpecialMesh', p0)
					mesh.MeshType = 2
					mesh.Name = 'WedgeMesh'
				end
				p0.WedgeMesh.Scale = Vector3.new(0, perp/sz, para/sz)
				p0.CFrame = cf0

				if not p1 then
					p1 = p0:clone()
				end
				p1.WedgeMesh.Scale = Vector3.new(0, perp/sz, dif_para/sz)
				p1.CFrame = cf1

				return p0, p1
			end

			function DrawQuad(v1, v2, v3, v4, parts)
				parts[1], parts[2] = DrawTriangle(v1, v2, v3, parts[1], parts[2])
				parts[3], parts[4] = DrawTriangle(v3, v2, v4, parts[3], parts[4])
			end
		end

		if binds[frame] then
			return binds[frame].parts
		end

		local uid = GenUid()
		local parts = {};
		local f = Instance.new('Folder', root)
		f.Name = frame.Name

		local parents = {}
		do
			local function add(child)
				if child:IsA'GuiObject' then
					parents[#parents + 1] = child
					add(child.Parent)
				end
			end
			add(frame)
		end

		local function UpdateOrientation(fetchProps)
			local properties = {
				Transparency = 0.98;
				BrickColor = BrickColor.new('Institutional white');
			}
			local zIndex = 1 - 0.05*frame.ZIndex

			local tl, br = frame.AbsolutePosition, frame.AbsolutePosition + frame.AbsoluteSize
			local tr, bl = Vector2.new(br.x, tl.y), Vector2.new(tl.x, br.y)
			do
				local rot = 0;
				for _, v in ipairs(parents) do
					rot = rot + v.Rotation
				end
				if rot ~= 0 and rot%180 ~= 0 then
					local mid = tl:lerp(br, 0.5)
					local s, c = math.sin(math.rad(rot)), math.cos(math.rad(rot))
					local vec = tl
					tl = Vector2.new(c*(tl.x - mid.x) - s*(tl.y - mid.y), s*(tl.x - mid.x) + c*(tl.y - mid.y)) + mid
					tr = Vector2.new(c*(tr.x - mid.x) - s*(tr.y - mid.y), s*(tr.x - mid.x) + c*(tr.y - mid.y)) + mid
					bl = Vector2.new(c*(bl.x - mid.x) - s*(bl.y - mid.y), s*(bl.x - mid.x) + c*(bl.y - mid.y)) + mid
					br = Vector2.new(c*(br.x - mid.x) - s*(br.y - mid.y), s*(br.x - mid.x) + c*(br.y - mid.y)) + mid
				end
			end
			DrawQuad(
				camera:ScreenPointToRay(tl.x + 8, tl.y, zIndex).Origin, 
				camera:ScreenPointToRay(tr.x + 8, tr.y, zIndex).Origin, 
				camera:ScreenPointToRay(bl.x + 8, bl.y, zIndex).Origin, 
				camera:ScreenPointToRay(br.x + 8, br.y, zIndex).Origin, 
				parts
			)
			if fetchProps then
				for _, pt in pairs(parts) do
					pt.Parent = f
				end
				for propName, propValue in pairs(properties) do
					for _, pt in pairs(parts) do
						pt[propName] = propValue
					end
				end
			end
		end

		UpdateOrientation(true)
		RunService:BindToRenderStep(uid, 2000, UpdateOrientation)
	end
	-- // End of the module which is not mine, appreciate it tho

	local firstTab = true

	function TabHandler:AddTab(option)
		option = type(option) == "table" and option or {}
		option.text = option.text or "New Tab"
		option.image = option.image or "http://www.roblox.com/asset/?id=14760677473"

		local Tab = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local TabImage = Instance.new("ImageLabel")
		local UIListLayout = Instance.new("UIListLayout")
		local UIPadding = Instance.new("UIPadding")
		local TabText = Instance.new("TextLabel")
		local UIPadding_2 = Instance.new("UIPadding")
		local TabButtonFolder = Instance.new("Folder")
		local TabButton = Instance.new("TextButton")


		Tab.Name = "Tab"
		Tab.Parent = TabList
		Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Tab.BackgroundTransparency = 1.000
		Tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Tab.BorderSizePixel = 0
		Tab.Position = UDim2.new(0.202380955, 0, 0.124369748, 0)
		Tab.Size = UDim2.new(0, 149, 0, 23)

		UICorner.CornerRadius = UDim.new(0, 5)
		UICorner.Parent = Tab

		TabImage.Name = "TabImage"
		TabImage.Parent = Tab
		TabImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabImage.BackgroundTransparency = 1.000
		TabImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TabImage.BorderSizePixel = 0
		TabImage.Size = UDim2.new(0, 17, 0, 17)
		TabImage.Image = option.image
		TabImage.ImageColor3 = Color3.fromRGB(1, 170, 244)

		UIListLayout.Parent = Tab
		UIListLayout.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
		UIListLayout.Padding = UDim.new(0, 5)

		UIPadding.Parent = Tab
		UIPadding.PaddingLeft = UDim.new(0, 5)

		TabText.Name = "TabText"
		TabText.Parent = Tab
		TabText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabText.BackgroundTransparency = 1.000
		TabText.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TabText.BorderSizePixel = 0
		TabText.Position = UDim2.new(0.173611104, 0, 0.100000001, 0)
		TabText.Size = UDim2.new(0, 119, 0, 20)
		TabText.Font = Enum.Font.Gotham
		TabText.Text = option.text
		TabText.TextColor3 = Color3.fromRGB(255, 255, 255)
		TabText.TextSize = 12.000
		TabText.TextXAlignment = Enum.TextXAlignment.Left

		UIPadding_2.Parent = TabText
		UIPadding_2.PaddingLeft = UDim.new(0, 3)
		UIPadding_2.PaddingTop = UDim.new(0, 1)

		TabButtonFolder.Name = "TabButtonFolder"
		TabButtonFolder.Parent = Tab

		TabButton.Name = "TabButton"
		TabButton.Parent = TabButtonFolder
		TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabButton.BackgroundTransparency = 1.000
		TabButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TabButton.BorderSizePixel = 0
		TabButton.Position = UDim2.new(-0.0347222239, 0, 0, 0)
		TabButton.Size = UDim2.new(0, 149, 0, 25)
		TabButton.Font = Enum.Font.SourceSans
		TabButton.Text = ""
		TabButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		TabButton.TextSize = 14.000
		

		-- PAGE

		local Page = Instance.new("Frame")
		local Header = Instance.new("Frame")
		local UIListLayout = Instance.new("UIListLayout")
		local Separator = Instance.new("Frame")
		local BG = Instance.new("Frame")

		Page.Name = "Page"
		Page.Parent = Main
		Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Page.BackgroundTransparency = 1.000
		Page.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Page.BorderSizePixel = 0
		Page.Position = UDim2.new(0, 0, 0.00168072351, 0)
		Page.Size = UDim2.new(0, 517, 0, 594)
		Page.Visible = false

		Header.Name = "Header"
		Header.Parent = Page
		Header.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
		Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Header.BorderSizePixel = 0
		Header.Size = UDim2.new(0, 517, 0, 54)

		BG.Name = "BG"
		BG.Parent = Page
		BG.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
		BG.BorderColor3 = Color3.fromRGB(0, 0, 0)
		BG.BorderSizePixel = 0
		BG.Position = UDim2.new(0, 0, 0.0924369767, 0)
		BG.Size = UDim2.new(0, 517, 0, 540)

		UIListLayout.Parent = BG
		UIListLayout.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 1)

		Separator.Name = "Separator"
		Separator.Parent = Page
		Separator.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		Separator.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Separator.BorderSizePixel = 0
		Separator.Position = UDim2.new(0, 0, 0.0907563046, 0)
		Separator.Size = UDim2.new(0, 517, 0, 1)
		
		local UISSkid = Instance.new("UIStroke")
		UISSkid.Parent = Tab
		UISSkid.Color = Color3.fromRGB(255, 255, 255)
		UISSkid.Transparency = 1
		UISSkid.Thickness = 1
		
		local tabbedIn = false
		
		if firstTab then firstTab = false
			tabbedIn = true
			Tab.BackgroundTransparency = 0.75
			UISSkid.Transparency = 0.65
			Page.Visible = true
		end
		
		TabButton.MouseButton1Click:Connect(function()
			for i, v in pairs(Tab.Parent:GetChildren()) do
				if v:IsA("Frame") and v.Name == "Tab" then
					game:GetService("TweenService"):Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
					game:GetService("TweenService"):Create(v:FindFirstChildWhichIsA("UIStroke"), TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Transparency = 1}):Play()
				end
			end
			
			for i, v in pairs(Page.Parent:GetChildren()) do
				if v:IsA("Frame") and v.Name == "Page" then
					v.Visible = false
				end
			end
			Page.Visible = true
			game:GetService("TweenService"):Create(Tab, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0.75}):Play()
			game:GetService("TweenService"):Create(UISSkid, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Transparency = 0.65}):Play()
		end)

		local ColumnHandler = {}

		function ColumnHandler:AddColumn()
			local Collumn = Instance.new("ScrollingFrame")
			local UIListLayout = Instance.new("UIListLayout")
			local UIPadding = Instance.new("UIPadding")


			Collumn.Name = "Column"
			Collumn.Active = true
			Collumn.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
			Collumn.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Collumn.BorderSizePixel = 0
			Collumn.ClipsDescendants = false
			Collumn.Position = UDim2.new(0.00193423603, 0, 0.00740740728, 0)
			Collumn.Size = UDim2.new(0, 258, 0, 540)
			Collumn.CanvasSize = UDim2.new(0, 0, 0, 0)
			Collumn.ScrollBarThickness = 3

			UIListLayout.Parent = Collumn
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 10)

			UIPadding.Parent = Collumn
			if BG:FindFirstChild("Column") then
				UIPadding.PaddingRight = UDim.new(0, 6)
			else
				UIPadding.PaddingLeft = UDim.new(0, 6)
			end
			UIPadding.PaddingTop = UDim.new(0, 15)

			Collumn.Parent = BG

			local SectionHandler = {}

			function SectionHandler:AddSection(title)

				local Section = Instance.new("Frame")
				local SectionHeader = Instance.new("Frame")
				local HeaderText = Instance.new("TextLabel")
				local UIPadding = Instance.new("UIPadding")
				local UIListLayout = Instance.new("UIListLayout")
				local Separator = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")
				local UIListLayout_2 = Instance.new("UIListLayout")
				local UnnamedSpace = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")
				local Folder = Instance.new("Folder")

				--Properties:

				Section.Name = "Section"
				Section.Parent = Collumn
				Section.BackgroundColor3 = Color3.fromRGB(11, 11, 14)
				Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Section.BorderSizePixel = 0
				Section.Position = UDim2.new(0.0470588244, 0, 0, 0)
				Section.Size = UDim2.new(0, 243, 0, 25)

				SectionHeader.Name = "SectionHeader"
				SectionHeader.Parent = Section
				SectionHeader.BackgroundColor3 = Color3.fromRGB(14, 13, 19)
				SectionHeader.BackgroundTransparency = 1.000
				SectionHeader.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SectionHeader.BorderSizePixel = 0
				SectionHeader.Position = UDim2.new(0.00212765951, 0, 0.068119891, 0)
				SectionHeader.Size = UDim2.new(0, 235, 0, 27)

				HeaderText.Name = "HeaderText"
				HeaderText.Parent = SectionHeader
				HeaderText.BackgroundColor3 = Color3.fromRGB(11, 11, 14)
				HeaderText.BackgroundTransparency = 1.000
				HeaderText.BorderColor3 = Color3.fromRGB(0, 0, 0)
				HeaderText.BorderSizePixel = 0
				HeaderText.LayoutOrder = 100
				HeaderText.Position = UDim2.new(0.012765957, 0, 0.959999979, 0)
				HeaderText.Size = UDim2.new(0, 235, 0, 26)
				HeaderText.Font = Enum.Font.Gotham
				HeaderText.Text = title or "Main"
				HeaderText.TextColor3 = Library.Theme.Highlighted
				HeaderText.TextSize = 13.000
				HeaderText.TextXAlignment = Enum.TextXAlignment.Left

				UIPadding.Parent = HeaderText
				UIPadding.PaddingLeft = UDim.new(0, 8)
				UIPadding.PaddingTop = UDim.new(0, 1)

				UIListLayout.Parent = SectionHeader
				UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
				UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

				Separator.Name = "Separator"
				Separator.Parent = SectionHeader
				Separator.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
				Separator.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Separator.BorderSizePixel = 0
				Separator.LayoutOrder = 3000
				Separator.Position = UDim2.new(-0.00212765951, 0, 1.08000004, 0)
				Separator.Size = UDim2.new(0, 228, 0, 1)

				UICorner.CornerRadius = UDim.new(0, 13)
				UICorner.Parent = SectionHeader

				UIListLayout_2.Parent = Section
				UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
				UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout_2.Padding = UDim.new(0, 5)

				UnnamedSpace.Name = "UnnamedSpace"
				UnnamedSpace.Parent = Section
				UnnamedSpace.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				UnnamedSpace.BackgroundTransparency = 1.000
				UnnamedSpace.BorderColor3 = Color3.fromRGB(0, 0, 0)
				UnnamedSpace.BorderSizePixel = 0
				UnnamedSpace.Position = UDim2.new(0.0255319141, 0, 0.0817438662, 0)
				UnnamedSpace.Size = UDim2.new(0, 223, 0, 2)

				UICorner_2.CornerRadius = UDim.new(0, 4)
				UICorner_2.Parent = Section

				Folder.Parent = Section

				local UISSkid = Instance.new("UIStroke")
				UISSkid.Parent = Section
				UISSkid.Color = Library.Theme.Border
				UISSkid.Transparency = 0.5
				UISSkid.Thickness = 1

				local function UpdateSec()
					Section.Size = UDim2.new(0, Section.Size.X.Offset, 0, Section.UIListLayout.AbsoluteContentSize.Y + 7)
				end

				local Utilities = {}

				function Utilities:AddSlider(option)
					option = type(option) == "table" and option or {}
					option.text = option.text or "Slider"
					option.min = option.min or 0
					option.max = option.max or 100
					option.value = option.value or option.min
					option.float = option.float or 0
					option.flag = option.flag or option.text
					option.callback = option.callback or function() end

					local Slider = Instance.new("Frame")
					local TextLabel = Instance.new("TextLabel")
					local UIPadding = Instance.new("UIPadding")
					local SliderFolder = Instance.new("Folder")
					local UIListLayout = Instance.new("UIListLayout")
					local ToggleFrame = Instance.new("Frame")
					local UICorner = Instance.new("UICorner")
					local TextBox = Instance.new("TextBox")
					local UIPadding_2 = Instance.new("UIPadding")
					local SliderSelection = Instance.new("TextButton")
					local UIListLayout_2 = Instance.new("UIListLayout")
					local SliderOut = Instance.new("Frame")
					local UIListLayout_3 = Instance.new("UIListLayout")
					local Folder = Instance.new("Folder")
					local ToggleFrameInner = Instance.new("Frame")
					local UICorner_2 = Instance.new("UICorner")
					local SliderIn = Instance.new("Frame")


					Slider.Name = "Slider"
					Slider.Parent = Section
					Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Slider.BackgroundTransparency = 1.000
					Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Slider.BorderSizePixel = 0
					Slider.Position = UDim2.new(0.0255319141, 0, 0.0817438662, 0)
					Slider.Size = UDim2.new(0, 223, 0, 17)

					TextLabel.Parent = Slider
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel.BackgroundTransparency = 1.000
					TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
					TextLabel.BorderSizePixel = 0
					TextLabel.Size = UDim2.new(0, 81, 0, 17)
					TextLabel.Font = Enum.Font.Gotham
					TextLabel.Text = "Hit Chance"
					TextLabel.TextColor3 = Color3.fromRGB(120, 120, 120)
					TextLabel.TextSize = 12.000
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left

					UIPadding.Parent = TextLabel
					UIPadding.PaddingBottom = UDim.new(0, 1)

					SliderFolder.Name = "SliderFolder"
					SliderFolder.Parent = Slider

					UIListLayout.Parent = SliderFolder
					UIListLayout.FillDirection = Enum.FillDirection.Horizontal
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
					UIListLayout.Padding = UDim.new(0, 7)

					ToggleFrame.Name = "ToggleFrame"
					ToggleFrame.Parent = SliderFolder
					ToggleFrame.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
					ToggleFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
					ToggleFrame.BorderSizePixel = 0
					ToggleFrame.LayoutOrder = 5
					ToggleFrame.Position = UDim2.new(0.862385333, 0, 0.205882356, 0)
					ToggleFrame.Size = UDim2.new(0, 25, 0, 12)

					UICorner.CornerRadius = UDim.new(0, 2)
					UICorner.Parent = ToggleFrame

					TextBox.Parent = ToggleFrame
					TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextBox.BackgroundTransparency = 1.000
					TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
					TextBox.BorderSizePixel = 0
					TextBox.Size = UDim2.new(0, 25, 0, 12)
					TextBox.ClearTextOnFocus = false
					TextBox.Font = Enum.Font.Gotham
					TextBox.Text = "60"
					TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
					TextBox.TextSize = 10.000
					TextBox.TextWrapped = true

					UIPadding_2.Parent = TextBox
					UIPadding_2.PaddingTop = UDim.new(0, 1)

					SliderSelection.Name = "SliderSelection"
					SliderSelection.Parent = SliderFolder
					SliderSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					SliderSelection.BackgroundTransparency = 1.000
					SliderSelection.BorderColor3 = Color3.fromRGB(0, 0, 0)
					SliderSelection.BorderSizePixel = 0
					SliderSelection.Position = UDim2.new(0.403669715, 0, 0.14705883, 0)
					SliderSelection.Size = UDim2.new(0, 75, 0, 12)
					SliderSelection.Text = ""

					UIListLayout_2.Parent = SliderSelection
					UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
					UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center

					SliderOut.Name = "SliderOut"
					SliderOut.Parent = SliderSelection
					SliderOut.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
					SliderOut.BorderColor3 = Color3.fromRGB(0, 0, 0)
					SliderOut.BorderSizePixel = 0
					SliderOut.Position = UDim2.new(0.036144577, 0, 0, 0)
					SliderOut.Size = UDim2.new(0, 75, 0, 2)

					UIListLayout_3.Parent = SliderOut
					UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

					Folder.Parent = SliderOut

					ToggleFrameInner.Name = "ToggleFrameInner"
					ToggleFrameInner.Parent = Folder
					ToggleFrameInner.BackgroundColor3 = Color3.fromRGB(1, 170, 244)
					ToggleFrameInner.BorderColor3 = Color3.fromRGB(0, 0, 0)
					ToggleFrameInner.BorderSizePixel = 0
					ToggleFrameInner.Position = UDim2.new(0.239996746, 0, -2.69999695, 0)
					ToggleFrameInner.Size = UDim2.new(0, 12, 0, 12)

					UICorner_2.Parent = ToggleFrameInner

					SliderIn.Name = "SliderIn"
					SliderIn.Parent = SliderOut
					SliderIn.BackgroundColor3 = Color3.fromRGB(1, 170, 244)
					SliderIn.BorderColor3 = Color3.fromRGB(0, 0, 0)
					SliderIn.BorderSizePixel = 0
					SliderIn.Position = UDim2.new(0.036144577, 0, 0, 0)
					SliderIn.Size = UDim2.new(0, 30, 0, 2)

					local UISSkid = Instance.new("UIStroke")
					UISSkid.Parent = ToggleFrame
					UISSkid.Color = Library.Theme.Border
					UISSkid.Transparency = 0.5
					UISSkid.Thickness = 1

					local Mouse = game.Players.LocalPlayer:GetMouse()

					local function Modulate()
						ToggleFrameInner.Position = UDim2.new(0, math.clamp((Mouse.X - SliderOut.AbsolutePosition.X) - (ToggleFrameInner.AbsoluteSize.X/2), 0, SliderOut.AbsoluteSize.X - ToggleFrameInner.AbsoluteSize.X), -2.7, 0)
						SliderIn.Size = UDim2.new(0, math.clamp(Mouse.X - SliderOut.AbsolutePosition.X, 0, SliderOut.AbsoluteSize.X), 0, 2)
						option.value = math.clamp(((ToggleFrameInner.AbsolutePosition.X - SliderOut.AbsolutePosition.X) / (SliderOut.AbsoluteSize.X - ToggleFrameInner.AbsoluteSize.X)) * (option.max - option.min) + option.min, option.min, option.max)
						TextBox.Text = string.format("%."..option.float.."f", option.value)
						option.callback(option.value)
					end

					local function Calculate(input)
						if tonumber(input) > tonumber(option.max) then
							input = option.max
						elseif tonumber(input) < tonumber(option.min) then
							input = option.min
						end
						ToggleFrameInner:TweenPosition(UDim2.new(0, math.clamp((((input - option.min) / (option.max - option.min)) * (SliderOut.AbsoluteSize.X - ToggleFrameInner.AbsoluteSize.X)), option.min, option.max), -2.7, 0), Enum.EasingDirection.In, Enum.EasingStyle.Linear, 0.1, true)
						SliderIn:TweenSize(UDim2.new(0, math.clamp((((input - option.min) / (option.max - option.min)) * SliderOut.AbsoluteSize.X), option.min, option.max), 0, 2), Enum.EasingDirection.In, Enum.EasingStyle.Linear, 0.1, true)
						option.value = input
						TextBox.Text = tostring(input)
						option.callback(option.value)
					end

					SliderSelection.MouseButton1Down:Connect(function()
						local MoveConnection, ReleaseConnection
						Modulate()
						MoveConnection = game.Players.LocalPlayer:GetMouse().Move:Connect(function()
							Modulate()
						end)
						ReleaseConnection = game:GetService("UserInputService").InputEnded:Connect(function(input: InputObject, gameProcessedEvent: boolean)
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								if MoveConnection then MoveConnection:Disconnect(); ReleaseConnection:Disconnect() end
							end
						end)
					end)


					TextBox:GetPropertyChangedSignal("Text"):Connect(function()
						local text = TextBox.Text
						local a = string.match(text, "[%-]?[%d]*[%.]?[%d]*")
						
						
						
						Calculate(tonumber(a))

							
					end)

					function option:SetValue(input)
						if tonumber(input) then Calculate(input) end
					end
					
					UpdateSec()

					return option;
				end

				function Utilities:AddDropdown(option)
					option = type(option) == "table" and option or {}
					option.text = option.text or "New Dropdown"
					option.values = option.values or {}
					option.multi = option.multi or false
					if option.multi then option.value = option.value or {1} else option.value = option.value or 1 end
					option.flag = option.flag or option.text
					option.callback = option.callback or function() end


					local Dropdown = Instance.new("Frame")
					local TextLabel = Instance.new("TextLabel")
					local UIPadding = Instance.new("UIPadding")
					local DropdownFolder = Instance.new("Folder")
					local UIListLayout = Instance.new("UIListLayout")
					local DropdownFrame = Instance.new("Frame")
					local UICorner = Instance.new("UICorner")
					local IgnoreDDARROW = Instance.new("Folder")
					local UIListLayout_2 = Instance.new("UIListLayout")
					local Frame = Instance.new("Frame")
					local UIListLayout_3 = Instance.new("UIListLayout")
					local DDArrowDOWN = Instance.new("ImageLabel")
					local DDArrowUP = Instance.new("ImageLabel")
					local DDSelected = Instance.new("TextLabel")
					local UIPadding_2 = Instance.new("UIPadding")
					local UIListLayout_4 = Instance.new("UIListLayout")
					local DDButtons = Instance.new("Frame")
					local UIListLayout_5 = Instance.new("UIListLayout")
					local TextButton = Instance.new("TextButton")
					local UIPadding_3 = Instance.new("UIPadding")
					local TextButton_2 = Instance.new("TextButton")
					local UIPadding_4 = Instance.new("UIPadding")
					local TextButton_3 = Instance.new("TextButton")
					local UIPadding_5 = Instance.new("UIPadding")
					local Folder = Instance.new("Folder")
					local UIListLayout_6 = Instance.new("UIListLayout")
					local Gradinet = Instance.new("ImageLabel")
					local Frame_2 = Instance.new("Frame")
					local Folder_2 = Instance.new("Folder")
					local TextButton_4 = Instance.new("TextButton")

					--Properties:

					Dropdown.Name = "Dropdown"
					Dropdown.Parent = Section
					Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Dropdown.BackgroundTransparency = 1.000
					Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Dropdown.BorderSizePixel = 0
					Dropdown.Position = UDim2.new(0.0255319141, 0, 0.0817438662, 0)
					Dropdown.Size = UDim2.new(0, 223, 0, 17)

					TextLabel.Parent = Dropdown
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel.BackgroundTransparency = 1.000
					TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
					TextLabel.BorderSizePixel = 0
					TextLabel.Size = UDim2.new(0, 81, 0, 17)
					TextLabel.Font = Enum.Font.Gotham
					TextLabel.Text = option.text
					TextLabel.TextColor3 = Color3.fromRGB(120, 120, 120)
					TextLabel.TextSize = 12.000
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left

					UIPadding.Parent = TextLabel
					UIPadding.PaddingBottom = UDim.new(0, 1)

					DropdownFolder.Name = "DropdownFolder"
					DropdownFolder.Parent = Dropdown

					UIListLayout.Parent = DropdownFolder
					UIListLayout.FillDirection = Enum.FillDirection.Horizontal
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout.Padding = UDim.new(0, 5)

					DropdownFrame.Name = "DropdownFrame"
					DropdownFrame.Parent = DropdownFolder
					DropdownFrame.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
					DropdownFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
					DropdownFrame.BorderSizePixel = 0
					DropdownFrame.ClipsDescendants = true
					DropdownFrame.LayoutOrder = 100
					DropdownFrame.Position = UDim2.new(0.520179391, 0, 0, 0)
					DropdownFrame.Size = UDim2.new(0, 107, 0, 15)
					DropdownFrame.ZIndex = 38

					UICorner.CornerRadius = UDim.new(0, 2)
					UICorner.Parent = DropdownFrame

					IgnoreDDARROW.Name = "IgnoreDDARROW"
					IgnoreDDARROW.Parent = DropdownFrame

					UIListLayout_2.Parent = IgnoreDDARROW
					UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Right
					UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

					Frame.Parent = IgnoreDDARROW
					Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Frame.BackgroundTransparency = 1.000
					Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Frame.BorderSizePixel = 0
					Frame.Position = UDim2.new(0.887850463, 0, 0.300000012, 0)
					Frame.Rotation = 95.000
					Frame.Size = UDim2.new(0, 15, 0, 15)
					Frame.ZIndex = 15

					UIListLayout_3.Parent = Frame
					UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center

					DDArrowDOWN.Name = "DDArrowDOWN"
					DDArrowDOWN.Parent = Frame
					DDArrowDOWN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					DDArrowDOWN.BackgroundTransparency = 1.000
					DDArrowDOWN.BorderColor3 = Color3.fromRGB(0, 0, 0)
					DDArrowDOWN.BorderSizePixel = 0
					DDArrowDOWN.Position = UDim2.new(0.859813094, 0, 0.0666666701, 0)
					DDArrowDOWN.Rotation = 90.000
					DDArrowDOWN.Size = UDim2.new(0, 11, 0, 11)
					DDArrowDOWN.ZIndex = 51
					DDArrowDOWN.Image = "http://www.roblox.com/asset/?id=14769224260"

					DDArrowUP.Name = "DDArrowUP"
					DDArrowUP.Parent = Frame
					DDArrowUP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					DDArrowUP.BackgroundTransparency = 1.000
					DDArrowUP.BorderColor3 = Color3.fromRGB(0, 0, 0)
					DDArrowUP.BorderSizePixel = 0
					DDArrowUP.Position = UDim2.new(0.859813094, 0, 0.0666666701, 0)
					DDArrowUP.Rotation = 180.000
					DDArrowUP.Size = UDim2.new(0, 11, 0, 11)
					DDArrowUP.Visible = false
					DDArrowUP.ZIndex = 51
					DDArrowUP.Image = "http://www.roblox.com/asset/?id=14863299022"

					DDSelected.Name = "DDSelected"
					DDSelected.Parent = DropdownFrame
					DDSelected.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					DDSelected.BackgroundTransparency = 1.000
					DDSelected.BorderColor3 = Color3.fromRGB(0, 0, 0)
					DDSelected.BorderSizePixel = 0
					DDSelected.ClipsDescendants = true
					DDSelected.Size = UDim2.new(0, 105, 0, 15)
					DDSelected.ZIndex = 45
					DDSelected.Font = Enum.Font.Gotham
					DDSelected.Text = "Example, Cum"
					DDSelected.TextColor3 = Color3.fromRGB(120, 120, 120)
					DDSelected.TextSize = 11.000
					DDSelected.TextXAlignment = Enum.TextXAlignment.Left

					UIPadding_2.Parent = DDSelected
					UIPadding_2.PaddingLeft = UDim.new(0, 5)

					UIListLayout_4.Parent = DropdownFrame
					UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder

					DDButtons.Name = "DDButtons"
					DDButtons.Parent = DropdownFrame
					DDButtons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					DDButtons.BackgroundTransparency = 1.000
					DDButtons.BorderColor3 = Color3.fromRGB(0, 0, 0)
					DDButtons.BorderSizePixel = 0
					DDButtons.ClipsDescendants = true
					DDButtons.Position = UDim2.new(0, 0, 0.238095239, 0)
					DDButtons.Size = UDim2.new(0, 107, 0, 0)
					DDButtons.ZIndex = 40

					UIListLayout_5.Parent = DDButtons
					UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder


					Folder.Parent = DropdownFrame

					UIListLayout_6.Parent = Folder
					UIListLayout_6.FillDirection = Enum.FillDirection.Horizontal
					UIListLayout_6.HorizontalAlignment = Enum.HorizontalAlignment.Right
					UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder

					Gradinet.Name = "Gradinet"
					Gradinet.Parent = Folder
					Gradinet.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Gradinet.BackgroundTransparency = 1.000
					Gradinet.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Gradinet.BorderSizePixel = 0
					Gradinet.Position = UDim2.new(0.579439223, 0, 0, 0)
					Gradinet.Size = UDim2.new(0, 44, 0, 15)
					Gradinet.ZIndex = 50
					Gradinet.Image = "http://www.roblox.com/asset/?id=4581715247"
					Gradinet.ImageColor3 = Color3.fromRGB(8, 8, 8)

					Frame_2.Parent = Folder
					Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Frame_2.BackgroundTransparency = 1.000
					Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Frame_2.BorderSizePixel = 0
					Frame_2.Position = UDim2.new(0.981308401, 0, -2.33333325, 0)
					Frame_2.Size = UDim2.new(0, 1, 0, 15)

					Folder_2.Parent = DropdownFrame

					TextButton_4.Parent = Folder_2
					TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextButton_4.BackgroundTransparency = 1.000
					TextButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
					TextButton_4.BorderSizePixel = 0
					TextButton_4.Size = UDim2.new(0, 107, 0, 15)
					TextButton_4.Font = Enum.Font.SourceSans
					TextButton_4.Text = ""
					TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
					TextButton_4.TextSize = 14.000

					local UISSkid = Instance.new("UIStroke")
					UISSkid.Parent = DropdownFrame
					UISSkid.Color = Library.Theme.Border
					UISSkid.Transparency = 0.5
					UISSkid.Thickness = 1

					local DropdownValue = Instance.new("BoolValue")
					DropdownValue.Value = false
					DropdownValue.Parent = Dropdown
					DropdownValue.Name = "OpenedValue"

					table.insert(Library.Opened, DropdownValue)

					local SelectedValues = {}


					local function SortTable(o, r)
						local sortedTable = {}
						for i = 1, #o do
							for j = 1, #r do
								if o[i] == r[j] then
									table.insert(sortedTable, r[j])
									break
								end
							end
						end
						return sortedTable
					end

					if option.multi then
						SelectedValues = option.value
					else
						option.value = option.value
					end
					
					local function CreateDarkerColor(color, strength)
						strength = strength or 0.3

						local r, g, b = color.r, color.g, color.b
						local newR = r * (1 - strength)
						local newG = g * (1 - strength)
						local newB = b * (1 - strength)

						return Color3.new(newR, newG, newB)
					end

					local function Modulate()
						for i, v in pairs(option.values) do
							local TextButton = Instance.new("TextButton")
							local UIPadding_3 = Instance.new("UIPadding")

							TextButton.Parent = DDButtons
							TextButton.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
							TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
							TextButton.BorderSizePixel = 0
							TextButton.Size = UDim2.new(0, 107, 0, 15)
							TextButton.ZIndex = 70
							TextButton.AutoButtonColor = false
							TextButton.Font = Enum.Font.Gotham
							TextButton.Text = tostring(v)
							TextButton.TextColor3 = Color3.fromRGB(120, 120, 120)
							TextButton.TextSize = 11.000
							TextButton.TextXAlignment = Enum.TextXAlignment.Left

							UIPadding_3.Parent = TextButton
							UIPadding_3.PaddingLeft = UDim.new(0, 5)
							

							TextButton.MouseButton1Click:Connect(function()
								if (not option.multi) then
									DropdownValue.Value = false
									DropdownFrame:TweenSize(UDim2.new(0, 107, 0, 15), Enum.EasingDirection.In, Enum.EasingStyle.Linear, 0.1, true)
									DDArrowUP.Visible = false; DDArrowDOWN.Visible = true

									for i,v in pairs(TextButton.Parent:GetChildren()) do
										if v:IsA("TextButton") then
											v.TextColor3 = Library.Theme.NotFocused
										end
									end
									TextButton.TextColor3 = Library.Theme.Highlighted
									game:GetService("TweenService"):Create(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3 = Library.Theme.NotFocused}):Play()
									game:GetService("TweenService"):Create(DDSelected, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3 = Library.Theme.NotFocused}):Play()
									
									DDSelected.Text = tostring(TextButton.Text)
									option.value = tostring(TextButton.Text)
									option.callback(option.value)
								else
									if (not table.find(SelectedValues, TextButton.Text)) then
										table.insert(SelectedValues, TextButton.Text)
										TextButton.TextColor3 = Library.Theme.Highlighted
									elseif  table.find(SelectedValues, TextButton.Text) and (#SelectedValues	> 1) then
										table.remove(SelectedValues, table.find(SelectedValues, TextButton.Text))
										TextButton.TextColor3 = Library.Theme.NotFocused
									end

									SelectedValues = SortTable(option.values, SelectedValues)
									DDSelected.Text = tostring(table.concat(SelectedValues, ", "))
									option.value = SelectedValues
									option.callback(option.value)
								end	
							end)
							
							TextButton.MouseEnter:Connect(function()
								game:GetService("TweenService"):Create(TextButton, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3 = CreateDarkerColor(TextButton.TextColor3, 0.3)}):Play()
							end)
							
							TextButton.MouseLeave:Connect(function()
								if (not option.multi) then
									if TextButton.Text == option.value then
										game:GetService("TweenService"):Create(TextButton, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3 = Library.Theme.Highlighted}):Play()
									else
										game:GetService("TweenService"):Create(TextButton, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3 = Library.Theme.NotFocused}):Play()
									end
								else
									if (not table.find(SelectedValues, TextButton.Text)) then
										game:GetService("TweenService"):Create(TextButton, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3 = Library.Theme.NotFocused}):Play()
									elseif table.find(SelectedValues, TextButton.Text) then
										game:GetService("TweenService"):Create(TextButton, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3 = Library.Theme.Highlighted}):Play()
									end
								end
							end)
						end
						local Calculated = (15 * #option.values)
						DDButtons.Size =  UDim2.new(0, 107, 0, Calculated)

					end

					do Modulate() end

					if option.multi then
						for i, v in pairs(DDButtons:GetChildren()) do
							if v:IsA("TextButton") then
								for _, n in pairs(SelectedValues) do
									if v.Text == n then
										v.TextColor3 = Library.Theme.Highlighted
									end
								end
							end
						end
						SelectedValues = SortTable(option.values, SelectedValues)
						DDSelected.Text = table.concat(SelectedValues, ", ")
						option.value = SelectedValues
						option.callback(option.value)
					else
						for i, v in pairs(DDButtons:GetChildren()) do
							if v:IsA("TextButton") then
								if v.Text == option.value then
									v.TextColor3 = Library.Theme.Highlighted
								end
							end
						end
						DDSelected.Text = tostring(option.value)
						option.callback(option.value)
					end


					do
						local Dropdowns = {}
						for i, v in pairs(Section:GetChildren()) do
							if v.Name == "Dropdown" then
								table.insert(Dropdowns, v)
							end
						end
						for i, v in pairs(Dropdown:GetDescendants()) do
							if not (v:IsA("Folder") or v:IsA("UIStroke") or v:IsA("UIPadding") or v:IsA("UIListLayout") or v:IsA("BoolValue") or v:IsA("UICorner")) then
								if v.ZIndex > 5 then
									v.ZIndex -= (#Dropdowns)
								end
							end
						end
					end
					
					local function IsMouseInFrame(frame)
						local mouse = game.Players.LocalPlayer:GetMouse()
						local framePos = frame.AbsolutePosition
						local frameSize = frame.AbsoluteSize
						local mousePos = Vector2.new(mouse.X, mouse.Y)

						return (mousePos.X >= framePos.X and mousePos.X <= framePos.X + frameSize.X and
							mousePos.Y >= framePos.Y and mousePos.Y <= framePos.Y + frameSize.Y)
					end

					TextButton_4.MouseButton1Click:Connect(function()
						if DropdownValue.Value then
							DropdownFrame:TweenSize(UDim2.new(0, 107, 0, 15), Enum.EasingDirection.In, Enum.EasingStyle.Linear, 0.1, true)
							DDArrowUP.Visible = false; DDArrowDOWN.Visible = true
							if IsMouseInFrame(TextButton_4) then
								game:GetService("TweenService"):Create(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3 = Library.Theme.Highlighted}):Play()
								game:GetService("TweenService"):Create(DDSelected, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3 = Library.Theme.Highlighted}):Play()
							else
								game:GetService("TweenService"):Create(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3 = Library.Theme.NotFocused}):Play()
								game:GetService("TweenService"):Create(DDSelected, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3 = Library.Theme.NotFocused}):Play()
							end
						else
							do
								for i, v in pairs(ScreenGui:GetDescendants()) do
									if v:IsA("BoolValue") and v.Name == "OpenedValue" then
										v.Value = false
										v.Parent.DropdownFolder.DropdownFrame:TweenSize(UDim2.new(0, 107, 0, 15), Enum.EasingDirection.In, Enum.EasingStyle.Linear, 0.1, true)
										local arrows = v.Parent.DropdownFolder.DropdownFrame.IgnoreDDARROW.Frame;
										arrows.DDArrowDOWN.Visible = true; arrows.DDArrowUP.Visible = false
										if v.Parent.TextLabel ~= TextLabel then
											game:GetService("TweenService"):Create(v.Parent.TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3 = Library.Theme.NotFocused}):Play()
											game:GetService("TweenService"):Create(v.Parent.DropdownFolder.DropdownFrame.DDSelected, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3 = Library.Theme.NotFocused}):Play()
										end
									end
								end
							end
							DropdownFrame:TweenSize(UDim2.new(0, 107, 0, 15 * (#option.values) + 15), Enum.EasingDirection.In, Enum.EasingStyle.Linear, 0.1, true)
							DDArrowUP.Visible = true; DDArrowDOWN.Visible = false
						end

						DropdownValue.Value = not DropdownValue.Value
					end)
					
					
					TextButton_4.MouseEnter:Connect(function()
						game:GetService("TweenService"):Create(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3 = Library.Theme.Highlighted}):Play()
						game:GetService("TweenService"):Create(DDSelected, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3 = Library.Theme.Highlighted}):Play()
					end)
					
					TextButton_4.MouseLeave:Connect(function()
						if not DropdownValue.Value then
							game:GetService("TweenService"):Create(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3 = Library.Theme.NotFocused}):Play()
							game:GetService("TweenService"):Create(DDSelected, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3 = Library.Theme.NotFocused}):Play()
						end
					end)

					function option:SetValue(value)
						if type(value) == "table" and value then

						else

						end
					end
					
					UpdateSec()

					return option;
					
				end
				
				function Utilities:AddToggle(option)
					option = type(option) == "table" and option or {}
					option.text = option.text or "New Toggle"
					option.toggled = option.toggled or false
					option.flag = option.flag or option.text
					option.callback = option.callback or function() end
					

					local Toggle = Instance.new("Frame")
					local TextLabel = Instance.new("TextLabel")
					local UIPadding = Instance.new("UIPadding")
					local ToggleFolder = Instance.new("Folder")
					local ToggleFrame = Instance.new("Frame")
					local UICorner = Instance.new("UICorner")
					local ToggleFrameInner = Instance.new("Frame")
					local UICorner_2 = Instance.new("UICorner")
					local UIListLayout = Instance.new("UIListLayout")
					local Folder = Instance.new("Folder")
					local toggleBtn = Instance.new("TextButton")

					--Properties:

					Toggle.Name = "Toggle"
					Toggle.Parent = Section
					Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Toggle.BackgroundTransparency = 1.000
					Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Toggle.BorderSizePixel = 0
					Toggle.Position = UDim2.new(0.0255319141, 0, 0.0817438662, 0)
					Toggle.Size = UDim2.new(0, 223, 0, 17)

					TextLabel.Parent = Toggle
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel.BackgroundTransparency = 1.000
					TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
					TextLabel.BorderSizePixel = 0
					TextLabel.Size = UDim2.new(0, 81, 0, 17)
					TextLabel.Font = Enum.Font.Gotham
					TextLabel.Text = option.text
					TextLabel.TextColor3 = Color3.fromRGB(120, 120, 120)
					TextLabel.TextSize = 12.000
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left

					UIPadding.Parent = TextLabel
					UIPadding.PaddingBottom = UDim.new(0, 1)

					ToggleFolder.Name = "ToggleFolder"
					ToggleFolder.Parent = Toggle

					ToggleFrame.Name = "ToggleFrame"
					ToggleFrame.Parent = ToggleFolder
					ToggleFrame.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
					ToggleFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
					ToggleFrame.BorderSizePixel = 0
					ToggleFrame.LayoutOrder = 100
					ToggleFrame.Position = UDim2.new(0.862385333, 0, 0, 0)
					ToggleFrame.Size = UDim2.new(0, 25, 0, 10)

					UICorner.Parent = ToggleFrame

					ToggleFrameInner.Name = "ToggleFrameInner"
					ToggleFrameInner.Parent = ToggleFrame
					ToggleFrameInner.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
					ToggleFrameInner.BorderColor3 = Color3.fromRGB(0, 0, 0)
					ToggleFrameInner.BorderSizePixel = 0
					ToggleFrameInner.Position = UDim2.new(0, 0, -0.119, 0)
					ToggleFrameInner.Size = UDim2.new(0, 12, 0, 12)

					UICorner_2.Parent = ToggleFrameInner

					UIListLayout.Parent = ToggleFolder
					UIListLayout.FillDirection = Enum.FillDirection.Horizontal
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
					UIListLayout.Padding = UDim.new(0, 5)

					Folder.Parent = ToggleFolder

					toggleBtn.Name = "toggleBtn"
					toggleBtn.Parent = Folder
					toggleBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					toggleBtn.BackgroundTransparency = 1.000
					toggleBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
					toggleBtn.BorderSizePixel = 0
					toggleBtn.Position = ToggleFrame.Position
					toggleBtn.Size = UDim2.new(0, 25, 0, 17)
					toggleBtn.Font = Enum.Font.SourceSans
					toggleBtn.Text = ""
					toggleBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
					toggleBtn.TextSize = 14.000
					
					local USDIJDK = Instance.new("UIListLayout")
					USDIJDK.Parent = Folder
					USDIJDK.Name = "UIListLayout"
					USDIJDK.VerticalAlignment = Enum.VerticalAlignment.Center
					USDIJDK.HorizontalAlignment = Enum.HorizontalAlignment.Right
					
					local UISSkid = Instance.new("UIStroke")
					UISSkid.Parent = ToggleFrame
					UISSkid.Color = Library.Theme.Border
					UISSkid.Transparency = 0.5
					UISSkid.Thickness = 1
					
					local function LightShade(color, strength)
						strength = strength or 0.3
						local r, g, b = color.r, color.g, color.b
						local newR = r + (1 - r) * strength
						local newG = g + (0.8 - g) * strength
						local newB = b + (1 - b) * strength

						return Color3.new(newR, newG, newB)
					end
					
					local function IsMouseInFrame(frame)
						local mouse = game.Players.LocalPlayer:GetMouse()
						local framePos = frame.AbsolutePosition
						local frameSize = frame.AbsoluteSize
						local mousePos = Vector2.new(mouse.X, mouse.Y)

						return (mousePos.X >= framePos.X and mousePos.X <= framePos.X + frameSize.X and
							mousePos.Y >= framePos.Y and mousePos.Y <= framePos.Y + frameSize.Y)
					end
										
					local function Toggle()
						if not option.toggled then
							game:GetService("TweenService"):Create(ToggleFrameInner, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(1, 170, 244), Position = UDim2.new(0.513, 0, -0.119, 0)}):Play()
							game:GetService("TweenService"):Create(ToggleFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(14, 40, 65)}):Play()
						else
							if IsMouseInFrame(toggleBtn) then
								game:GetService("TweenService"):Create(ToggleFrameInner, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3 = LightShade(Color3.fromRGB(1, 170, 244), 0.2), Position = UDim2.new(0, 0, -0.119, 0)}):Play()
								game:GetService("TweenService"):Create(ToggleFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(8, 8, 8)}):Play()
							else
								game:GetService("TweenService"):Create(ToggleFrameInner, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(71, 71, 71), Position = UDim2.new(0, 0, -0.119, 0)}):Play()
								game:GetService("TweenService"):Create(ToggleFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(8, 8, 8)}):Play()
							end
						end
					end
					
					toggleBtn.MouseButton1Click:Connect(function()
						Toggle()
						option.toggled = not option.toggled
						option.callback(option.toggled)
					end)
					
					toggleBtn.MouseEnter:Connect(function()
						if not option.toggled then
							game:GetService("TweenService"):Create(ToggleFrameInner, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3 = LightShade(Color3.fromRGB(1, 170, 244), 0.2)}):Play()
						end
						game:GetService("TweenService"):Create(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3 = Library.Theme.Highlighted}):Play()
					end)
				
					
					toggleBtn.MouseLeave:Connect(function()
						if not option.toggled then
							game:GetService("TweenService"):Create(ToggleFrameInner, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(71, 71, 71)}):Play()
						end
						game:GetService("TweenService"):Create(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3 = Library.Theme.NotFocused}):Play()
					end)
					
					function option:SetValue(h)
						h = type(h) == "boolean" and h or false
						if (not h) and (option.toggled) then
							option.toggled = not option.toggled
						end
					end
					
					
					UpdateSec()
					
					return option;
				end
				
				return Utilities;
			end

			return SectionHandler;
		end

		return ColumnHandler;
	end


	function TabHandler:AddTabClass(text)
		text = text or "New Class"

		local TabDivider = Instance.new("TextLabel")
		local UIPadding = Instance.new("UIPadding")


		TabDivider.Name = "TabDivider"
		TabDivider.Parent = TabList
		TabDivider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabDivider.BackgroundTransparency = 1.000
		TabDivider.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TabDivider.BorderSizePixel = 0
		TabDivider.Position = UDim2.new(-0.00297619053, 0, 0.240396664, 0)
		TabDivider.Size = UDim2.new(0, 169, 0, 21)
		TabDivider.Font = Enum.Font.Gotham
		TabDivider.Text = tostring(text)
		TabDivider.TextColor3 = Color3.fromRGB(58, 72, 83)
		TabDivider.TextSize = 11.000
		TabDivider.TextXAlignment = Enum.TextXAlignment.Left
		TabDivider.TextYAlignment = Enum.TextYAlignment.Bottom

		UIPadding.Parent = TabDivider
		UIPadding.PaddingLeft = UDim.new(0, 20)
	end

	return TabHandler;

end


return Library; -- hehe

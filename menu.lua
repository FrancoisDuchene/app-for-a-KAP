
--launch the initial menu
function launchMenu()

	wallMenu = Bitmap.new(FondPreservatif)
	stage:addChild(wallMenu)
	
	local posBut1H = 50
	local posBut2H = posBut1H + 90
	local posBut3H = posBut2H + 90
	
	local mainTtl = TextField.new(bigTitleFont, "Kapotopia")
	mainTtl:setPosition(100, 30)
	wallMenu:addChild(mainTtl)
	
	local txt1 = TextField.new(font, "Continent 1")
	local txt2 = TextField.new(font, "Continent 2")
	local txt3 = TextField.new(font, "Continent 3")
	
	txt1:setPosition(TXTBUTTON_W, TXTBUTTON_H)
	txt2:setPosition(TXTBUTTON_W, TXTBUTTON_H)
	txt3:setPosition(TXTBUTTON_W, TXTBUTTON_H)
	
	local button1 = Button.new(Bitmap.new(ButtonUp), Bitmap.new(ButtonDown), txt1)
	button1:addEventListener("click",
		function()
			stage:removeChild(wallMenu)
			launchMenuContinent(1,2)
		end)
	button1:setPosition(MARGE, posBut1H)
	wallMenu:addChild(button1)

	if (lock2 == 0) then -- continent 2 and 3 is locked
		local lockedButton2 = Bitmap.new(GrayButton)
		lockedButton2:setPosition(MARGE, posBut2H)
		wallMenu:addChild(lockedButton2)
		lockedButton2:addChild(txt2)
		-----
		local lockedButton3 = Bitmap.new(GrayButton)
		lockedButton3:setPosition(MARGE, posBut3H)
		wallMenu:addChild(lockedButton3)
		lockedButton3:addChild(txt3)
	else -- continent 2 is accessible
		local button2 = Button.new(Bitmap.new(ButtonUp), Bitmap.new(ButtonDown), txt2)
		button2:addEventListener("click", 
			function()
				stage:removeChild(wallMenu)
				launchMenuContinent(2,1)
			end)
		button2:setPosition(MARGE, posBut2H)
		wallMenu:addChild(button2)
		
		if (lock3 == 0) then -- continent 3 is locked
			local lockedButton3 = Bitmap.new(GrayButton)
			lockedButton3:setPosition(MARGE, posBut3H)
			wallMenu:addChild(lockedButton3)
			lockedButton3:addChild(txt3)
		else -- continent 3 is accessible
			local button3 = Button.new(Bitmap.new(ButtonUp), Bitmap.new(ButtonDown), txt3)
			button3:addEventListener("click", 
			function()
				stage:removeChild(wallMenu)
				launchMenuContinent(3,1)
			end)
			button3:setPosition(MARGE, posBut3H)
			wallMenu:addChild(button3)
		end
	end
	
	-- Initial animation
	if(lock0 == 0)then
		local mireille1 = Bitmap.new(Mireille1)
		mireille1:setPosition(80,160)
		local mireille2 = Bitmap.new(Mireille2)
		mireille2:setPosition(80,119)
		local mireille3 = Bitmap.new(Mireille3)
		mireille3:setPosition(80,118)
		local mireille4 = Bitmap.new(Mireille4)
		mireille4:setPosition(80,117)
		local mireille5 = Bitmap.new(Mireille5)
		mireille5:setPosition(80,116)
		local mireille6 = Bitmap.new(Mireille6)
		mireille6:setPosition(80,115)
		local mireille7 = Bitmap.new(Mireille7)
		mireille7:setPosition(80,114)
		local mireille8 = Bitmap.new(Mireille8)
		mireille8:setPosition(80,113)
		local mireille9 = Bitmap.new(Mireille9)
		mireille9:setPosition(80,112)
		
		local talk11 = TextField.new(font, "Bienvenue à Kapotopia !")
		talk11:setPosition(20,20)
		local talk12 = TextField.new(font, "Je suis Mireille la capote.")
		talk12:setPosition(20,50)
		local talk21 = TextField.new(font, "J’imagine que tu sais, au moins vaguement, à quoi le petit bout extensible de latex que je suis sert dans la vie. ")
		talk21:setPosition(20,20)
		local talk31 = TextField.new(font, "Mais à quel point es-tu au courant de toutes les subtilités du monde du sexe, de ses pratiques et de ses risques ? ")
		talk31:setPosition(20,20)
		local talk32 = TextField.new(font, "Je vais te le dire, t’es sûrement pas au top mon pote !")
		talk32:setPosition(20,20)
		local talk41 = TextField.new(font, "Alors prends tes valises, c’est le moment de partir à l’aventure.")
		talk41:setPosition(20,20)
		local talk42 = TextField.new(font, "Ca va être fun, ça cause de sexe et c’est pour ton bien !")
		talk42:setPosition(20,20)
		local talk43 = TextField.new(font, "Et puis c’est marrant et t’as sûrement pas mieux à faire là maintenant.")
		talk43:setPosition(20,20)
		local talk51 = TextField.new(font, "Kapotopia est divisée en trois continents.")
		talk51:setPosition(20,20)
		local talk61 = TextField.new(font, "Ben t’attends quoi l’ami(e) ?")
		talk61:setPosition(20,20)
		local talk62 = TextField.new(font, "Allez on y va.")
		talk62:setPosition(20,20)
		
		bubble = Bitmap.new(ButtonUp)
		bubble:setPosition(10,-100)
		
		wallMenu:addChild(mireille1)
		mireille1:addChild(bubble)
		bubble:addChild(talk11)
		bubble:addChild(talk12)
		--Mireille sautille
		
		--local nextButtonUp = Bitmap.new(Texture.new("images/button_next.png"))
		--local nextButtonDown = Bitmap.new(Texture.new("images/button_next_down.png"))
		local nextText = TextField.new(font, "Next")
		nextButton = Button.new(Bitmap.new(LittleButtonUp), Bitmap.new(LittleButtonDown), nextText)
		nextButton:setPosition(140,-30)
		mireille1:addChild(nextButton)
		i = 1
		nextButton:addEventListener("click",
			function()
				if(i == 1)then
					bubble:removeChild(talk11)
					bubble:removeChild(talk12)
					bubble:addChild(talk21)
				elseif(i == 2)then
					bubble:removeChild(talk21)
					bubble:addChild(talk31)
					bubble:addChild(talk32)
				elseif(i == 3)then
					bubble:removeChild(talk31)
					bubble:removeChild(talk32)
					bubble:addChild(talk41)
					bubble:addChild(talk42)
					bubble:addChild(talk43)
				elseif(i == 4)then
					bubble:removeChild(talk41)
					bubble:removeChild(talk42)
					bubble:removeChild(talk43)
					bubble:addChild(talk51)
				elseif(i == 5)then
					bubble:removeChild(talk51)
					bubble:addChild(talk61)
					bubble:addChild(talk62)
				elseif(i == 6)then
					wallMenu:removeChild(mireille1)
					lock0 = 1
					lock1 = 1
				end
				i = i+1
			end
		,i)
	end
end


-- Take care of the menus of the different continents
-- Cnbr is the continent number
-- Bnbr is the number of button to set up, "go back" button not included
function launchMenuContinent(Cnbr, Bnbr)

	--print("launchMenuContinent")

	-- Creation of wallPaper
	wallContinent = Bitmap.new(FondPreservatif)
	stage:addChild(wallContinent)

	-- Creation of button 1	
	local button1
	if(Cnbr == 1) then -- Continent 1
		local txt = TextField.new(font,'Reconnaitre les IST')
		txt:setPosition(TXTBUTTON_W-20, TXTBUTTON_H)
		button1 = Button.new(Bitmap.new(ButtonUp), Bitmap.new(ButtonDown), txt)
		button1:addEventListener("click", 
		function()
			stage:removeChild(wallContinent)
			level1()
		end)
	elseif(Cnbr == 2) then -- Continent 2
		local txt = TextField.new(font,'Pratiques à risque')
		txt:setPosition(TXTBUTTON_W-20, TXTBUTTON_H)
		button1 = Button.new(Bitmap.new(ButtonUp), Bitmap.new(ButtonDown), txt)
		button1:addEventListener("click", 
		function()
			stage:removeChild(wallContinent)
			level3()
		end)
	elseif(Cnbr == 3) then -- Continent 3
		local txt = TextField.new(font,'Dépistage')
		txt:setPosition(TXTBUTTON_W, TXTBUTTON_H)
		button1 = Button.new(Bitmap.new(ButtonUp), Bitmap.new(ButtonDown), txt)
		button1:addEventListener("click", 
		function()
			stage:removeChild(wallContinent)
			level4()
		end)
	end
	button1:setPosition(MARGE, 120)
	wallContinent:addChild(button1)
	
	-- Creation of second button if needed
	if(Bnbr>=2)then
		local buttonText2
		local button2
		if(Cnbr == 1) then -- In continent 1, the second button leads to the second game
			buttonText2 = TextField.new(font,'Symptomes des IST')
			buttonText2:setPosition(TXTBUTTON_W-20, TXTBUTTON_H)
			if(lock1 == 1)then
				local lockedButton2 = Bitmap.new(GrayButton)
				lockedButton2:setPosition(MARGE, 210)
				wallContinent:addChild(lockedButton2)
				lockedButton2:addChild(buttonText2)
			else
				button2 = Button.new(Bitmap.new(ButtonUp), Bitmap.new(ButtonDown), buttonText2)
				button2:addEventListener("click",
				function()
					stage:removeChild(wallContinent)
					level2()
				end)
				button2:setPosition(MARGE, 210)
				wallContinent:addChild(button2)
				
			end
		else
			-- This 'other' button is not used yet --
			local buttonText2 = TextField.new(font,'Autre')
			buttonText2:setPosition(TXTBUTTON_W, TXTBUTTON_H)
			button2 = Button.new(Bitmap.new(ButtonUp), Bitmap.new(ButtonDown), buttonText2)
			-- !! Do something (for example: statistics, previous scores...) !! --
			button2:setPosition(MARGE, 210)
			wallContinent:addChild(button2)
		end
	end
	
	createButtonMiniG(Cnbr)
	buttonMiniG:setPosition(MARGE, 300)
	wallContinent:addChild(buttonMiniG)
	
				
	--Creation of "go back" button
	local back = Button.new(Bitmap.new(ButtonUp), Bitmap.new(ButtonDown), TextField.new(font,'Retour'))
	back:addEventListener("click", 
		function()
			stage:removeChild(wallContinent)
			launchMenu()
		end)
	back:setPosition(70,430)
	wallContinent:addChild(back)
end

-- Crée un bouton pour les minijeu avec une difficulté donné par level:int
function createButtonMiniG(level)
	local txt = TextField.new(font, "Minijeu")
	txt:setPosition(TXTBUTTON_W, TXTBUTTON_H)
	buttonMiniG = Button.new(Bitmap.new(ButtonUp), Bitmap.new(ButtonUp), txt)
	buttonMiniG:addEventListener("click",
		function()
			stage:removeChild(wallContinent)
			startMiniGame(level)
		end)
end
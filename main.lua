-----------------------------------------------------------------------------------------
--
-- Created: Md Faiyaz hossain
-- Created on 2018-03-06
--
-----------------------------------------------------------------------------------------

math.randomseed( os.time() )

display.setDefault("background", 0.3, 0.6, 0.4)

local numberGuess = math.random( 1, 10 )

local answer

local answerAsNumber = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 1505, 156 )

print(numberGuess)




local seeNumberButton = display.newImageRect( "Button.png", 406, 157 )
seeNumberButton.x = display.contentCenterX + 1000
seeNumberButton.y = display.contentCenterY + 200

 

local function onButtonPressed( event )
	
	answer = tonumber(answerAsNumber.text)
	
	

    if answer == numberGuess then
	    
	    local correCt = display.newText("correct", display.contentCenterX, display.contentCenterY)
    
    else 


	    local incorreCt = display.newText("Incorrect", display.contentCenterX, display.contentCenterY)


    end
end
seeNumberButton:addEventListener( "touch", onButtonPressed)
return function()
    -- Create and display a progress bar with a title
    -- IMPORTANT: The Lua variable 'progressHandle' is needed to remove the progressbar again - StopProgress()
	progressHandle = StartProgress("ProgressBar Title")
end
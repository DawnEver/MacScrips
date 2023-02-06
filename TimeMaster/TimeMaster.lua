function printFormatTime(time)

	local second=time%60;
	local minute=(time-second)/60;
	local hour=(time-second*60)/60;

	
	print(string.format("Left Time	%d:%d ",minute,second))
end
local workTime=45*60;
local restTime=5*60;
local endTime=os.time()+workTime;
flag=true;

while(1)
do
	os.execute("sleep 1");
	os.execute("clear");
	local currentTime = os.date("%c");
	print(currentTime);

	if(os.time()>endTime)
	then
		if(flag)
		then
			endTime=restTime+endTime
		else
			endTime=workTime+endTime
		end
		flag=not flag
		local content="end";
		local title="TimeMaster";
		os.execute(string.format([[osascript -e 'display notification "%s" with title "%s" ']],content,title))

	end
	printFormatTime(endTime-os.time())

end

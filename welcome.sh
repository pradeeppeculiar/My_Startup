echo ""
echo "Hi Pradeep, "
echo ""
hour=$(date +"%H" )
if [ $hour -lt 12 ]
	then
	{
		if [ $hour -lt 8 ]
			then
			{
				gsettings set org.gnome.desktop.background picture-uri file:///home/pradeep/Pictures/morning1.jpg
			}				
		else
		{
				gsettings set org.gnome.desktop.background picture-uri file:///home/pradeep/Pictures/morning2.jpg
		}
		fi
		echo -n  "Good Morning !!! "
		echo "Make The Best day in your life"
		
		echo "Have you made today's plan ?  "
		read x
		if [[ "$x" != "y" ]]
			then
			{
				echo "My Todays Work :-\n" < todo.txt	
				vim todo.txt
			}
		else
			echo "Good Carry On"
		fi
	}	
elif [ $hour -lt 16 ]
	then 
	{
		gsettings set org.gnome.desktop.background picture-uri file:///home/pradeep/Pictures/afternoon.jpg
		echo  -n "Good Afternoon !!! "
		echo "Don't Be Lazy! Hurry up!"
	}
elif [ $hour -lt 20 ]
	then	
	{
		gsettings set org.gnome.desktop.background picture-uri file:///home/pradeep/Pictures/evening.jpg
		echo -n "Good Evening !!! "
		echo "The Great Time for Productivity!"
	}
else
	{
		if [ $hour -lt 22 ]
			then
			{ 
				gsettings set org.gnome.desktop.background picture-uri file:///home/pradeep/Pictures/night1.jpg
			}
			else
			{
				gsettings set org.gnome.desktop.background picture-uri file:///home/pradeep/Pictures/night2.jpg
			}
		fi
		echo -n "Good Night !!! "
		echo "Give Rest To Your Super Computer"
	}
fi
#echo "The Time Is : $( date +"%r")"
#echo "The Date Is : $( date +"%d-%m-%Y")"
echo ""
echo $(date)

#sudo su
#sudo mount /dev/sda1 /media/pradeep
sudo mkdir /media/pradeep/Windows
sudo mount /dev/sda2 /media/pradeep/Windows
#df -H
sudo mkdir /media/pradeep/"Technical Stuffs"
sudo mount /dev/sda3 /media/pradeep/"Technical Stuffs"
#df -H
sudo mkdir /media/pradeep/Raja
sudo mount /dev/sda5 /media/pradeep/Raja
#df -H
sudo mkdir /media/pradeep/Entertainment
sudo mount /dev/sda6 /media/pradeep/Entertainment
#df -H
#sudo mount /dev/sdb1 /media/pradeep
# To change Wallpaper

# gsettings set org.gnome.desktop.background picture-uri file:///home/# serrano/Pictures/y.jpg

read a 

# Name: Javier Hernandez Requena
# File: to_hex_color
# Date: December 6, 2021
# Desc: using read, allows a user to interactively enter three numbers between 0 and 255 and have the program print the output as the CSS hexadecimal color



echo -n "Enter three color values between 0 and 255: "
read color1 color2 color3


until [[ "$color1" = 'q' || "$color1" = 'quit' || "$color1" = 'QUIT' || "$color1" = 'Q' ]] ; do
	if [[ "$color1" -ge 0 && "$color1" -le 255 && "$color2" -ge 0 && "$color2" -le 255 && "$color3" -ge 0 && "$color3" -le 255 ]] ; then	
		printf "RGB "$color1", "$color2", "$color3" is: #%.2x%.2x%.2x\n" "$color1" "$color2" "$color3"
		echo -n "Enter three color values between 0 and 255: "
		read color1 color2 color3
	elif [ false ] ; then
		echo "Values must be between 0 and 255."
		echo -n "Enter three color values between 0 and 255: "
		read color1 color2 color3
	elif [ "$#" -ne 3 ] ; then
		echo "Please enter THREE color values only."
		echo -n "Enter three color values between 0 and 255: "
		read color1 color2 color3
	fi
done

	
echo "Finished!"


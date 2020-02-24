current_ip=$(curl -s "https://checkip.dyndns.org/" | grep -o -E "[0-9\.]+")
echo ${current_ip}
geolocation_data=$(curl -s http://ipapi.co/${current_ip}/json)
echo ${geolocation_data}

country_code=$(echo ${geolocation_data} | grep -o -P -i "(?<=<country_code>).*(?=</country_code>)")

country_name=$(echo ${geolocation_data} | grep -o -P -i "(?<=<country_name>).*(?=</country_name>)")

city_name=$(echo ${geolocation_data} | grep -o -P -i "(?<=<city>).*(?=</city>)")

latitude=$(echo ${geolocation_data} | grep -o -P -i "(?<=<latitude>).*(?=</latitude>)")

longitude=$(echo ${geolocation_data} | grep -o -P -i "(?<=<longitude>).*(?=</longitude>)")

woeid=$(curl -s "http://metaweather.com/api/location/search/?lattlong=${latitude},${longitude}" | grep -o -P -i "(?<=<woeid>).*(?<=/woeid>)" )

current_weather_data=$(curl -s "http://metaweather.com/api/location/${woeid}")

temperature_value=$(echo ${current_weather_data} | grep -o -P -i "(?<=<temperature value=\")[^(\"|\.)]*")

wind_value=$(echo ${current_weather_data} | grep -o -P -i "(?<=<speed value=\")[^\"]*")

wind_direction=$(echo ${current_weather_data} | grep -o -P -i "(?<=<direction value=\")[^/]*" | grep -o -P -i "(?<=code=\")[^\"]*")
	
weather_condition=$(echo ${current_weather_data} | grep -o -P -i "(?<=<weather number=\"...\" value=\")[^\"]*")
echo ${temperature_value}



#nfb [National Film Board]



for url in urls:


	
	r = requests.get(url[1])

	soup = BeautifulSoup(r.text)


	if soup.find_all("a", class_= "campus-label"): 
 		print str(count) +  " of " + str(num_lines) + " | " + "Nope!" + " | " + url[1] + " | " + url[0]
		outurls.writerow([url[0], url[1], "Nope!"])  
		count += 1
	elif soup.find_all("div", class_= "embed-player-container"): 
		print str(count) +  " of " + str(num_lines) + " | " + "Right On!"
		outurls.writerow([url[0], url[1], "Right On!"])  
		count += 1
 	else: 
		print str(count) +  " of " + str(num_lines) + " | " + "Look into this . . . " + " | " + url[1]  + " | " + url[0]
		outurls.writerow([url[0], url[1], "Look into this . . ."])  
		count += 1













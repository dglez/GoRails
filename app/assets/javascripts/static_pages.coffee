# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
 
menuItems =
	$('.menu ul').find('li')
liHeight = 
	$(window).height()/menuItems.length
toggle = 
	true
for item in menuItems 
	$(item)
		.height(liHeight)		
		.css('padding-top',$(window).height()/12 - 14 + 'px')
	$('.menu')
		.width(liHeight)
$(window).resize(->
	liHeight = 
		$(window).height()/menuItems.length
	$('.menu')
		.width(liHeight)
	for item in menuItems 
		$(item)				
			.css({'padding-top':$(window).height()/12 - 14 + 'px', 'height': liHeight + 'px' })
	return)
$('.switch').click(->
	if toggle
		$(this)
			.transition({ rotate: '180deg' })
		$('.menu')
			.transition({ x: -liHeight + 'px' })
		toggle = 
			false
		return
	else
		$(this)
			.transition({ rotate: '0deg' })
		$('.menu')
			.transition({ x: '0px' })
		toggle = 
			true
		return
	
	
	)
	

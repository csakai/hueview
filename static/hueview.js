var HueView = HueView || function() {
	this.makeButtonsForLights = (numberOfLights, hueston) => {
		var body = document.getElementsByTagName('body')[0],
				i,
				clicker
    for (i=1; i<=numberOfLights; i++) {
			clicker = document.createElement('button')
			clicker.dataset.lightid = i
			clicker.innerHTML = "Toggle light " + i
      clicker.onclick = hueston.hitTheLights
			body.appendChild(clicker)
    }
	}
}

<div id="slider">
					<div class="viewer">
						<div class="reel">
							<div id="gallery">
								<div class="slide"> <a href="images/cosca1.jpg"><img src="images/cosca1.jpg" width="590" height="300" alt="" /></a> </div>
								<div class="slide"> <a href="images/cosca2.jpg"><img src="images/cosca2.jpg" width="590" height="300" alt="" /></a> </div>								
							</div>
						</div>
					</div>
				</div>
				<script type="text/javascript">
				$('#slider').slidertron({
					viewerSelector: '.viewer',
					reelSelector: '.viewer .reel',
					slidesSelector: '.viewer .reel .slide',
					advanceDelay: 3000,
					speed: 'slow'
				});
			</script>
				<script type="text/javascript">
				$('#gallery').poptrox({
					overlayColor: '#222222',
					overlayOpacity: 0.75,
					popupCloserBackgroundColor: '#560969',
					popupBackgroundColor: '#FFFFFF',
					popupTextColor: '#aaaaaa',
					popupPadding: 20
				});
			</script>
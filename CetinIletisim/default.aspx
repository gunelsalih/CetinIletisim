<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="CetinIletisim._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div role="main" class="main">
			<div class="slider-with-overlay">

                <div class="slider-container rev_slider_wrapper" style="height: 700px;">
					<div id="revolutionSlider" class="slider rev_slider" data-plugin-revolution-slider="" data-plugin-options='{"delay": 6000, "gridwidth": 800, "gridheight": 720}'>
						<ul>                

                           <li data-transition="fade">
								<img src="img/slides/slide.jpg"  
									alt=""
									data-bgposition="center center" 
									data-bgfit="cover" 
									data-bgrepeat="no-repeat" 
									class="rev-slidebg" />
							</li>
							 <li data-transition="fade">
								<img src="img/slides/slide2.jpg"  
									alt=""
									data-bgposition="center center" 
									data-bgfit="cover" 
									data-bgrepeat="no-repeat" 
									class="rev-slidebg" />
							</li>
                             <li data-transition="fade">
								<img src="img/slides/slide3.jpg"  
									alt=""
									data-bgposition="center center" 
									data-bgfit="cover" 
									data-bgrepeat="no-repeat" 
									class="rev-slidebg" />
							</li>
						</ul>
					</div>
				</div>

				<div class="home-intro" id="home-intro">
						<div class="container">
							<div class="row-center">
								<div class="col-md-12" align="center">
									<p>
										<em>İletişim</em>&nbsp; alanındaki lider ile teknolojinin keyfini çıkarın.
										<span>Sayfamıza dikkatlice göz atın.</span>
									</p>
								</div>
							</div>

						</div>
					</div>
				</div>
				
				<div class="container">				
					<div class="row center">
						<div class="col-md-12">
							<h1 class="mb-sm word-rotator-title">
								Çetin İletişim sizlere
								<strong class="inverted">
									<span class="word-rotate" data-plugin-options='{"delay": 2000, "animDelay": 300}'>
										<span class="word-rotate-items">
											<span>hızlı</span>
											<span>yerinde</span>
											<span>sürekli</span>
                                            <span>güvenilir</span>
										</span>
									</span>
								</strong>
								hizmet sunar.
							</h1>
							<p class="lead">
								Firmanıza en uygun çözümler, en güzel tasarımlar ve bilişim alanında Erzincan başta olmak üzere her yerde sorunsuz destek bizim işimiz.
							</p>
						</div>
					</div>
				
				</div>
				
				<div class="home-concept">
					<div class="container">
				
						<div class="row center">
							<span class="sun"></span>
							<span class="cloud"></span>
							<div class="col-md-2 col-md-offset-1">
								<div class="process-image appear-animation" data-appear-animation="bounceIn">
									<img src="img/home-concept-item-1.png" alt="" />
									<strong>Kalite</strong>
								</div>
							</div>
							<div class="col-md-2">
								<div class="process-image appear-animation" data-appear-animation="bounceIn" data-appear-animation-delay="300">
									<img src="img/home-concept-item-2.png" alt="" />
									<strong>Güven</strong>
								</div>
							</div>
							<div class="col-md-2">
								<div class="process-image appear-animation" data-appear-animation="bounceIn" data-appear-animation-delay="600">
									<img src="img/home-concept-item-3.png" alt="" />
									<strong>Mutluluk</strong>
								</div>
							</div>
							<div class="col-md-4 col-md-offset-1">
								<div class="project-image">
									<div id="fcSlideshow" class="fc-slideshow">
										<ul class="fc-slides">
											<li><img class="img-responsive" src="img/slides/slide.jpg" alt="" /></li>
											<li><img class="img-responsive" src="img/slides/slide2.jpg" alt="" /></li>
											<li><img class="img-responsive" src="img/slides/slide3.jpg" alt="" /></li>              
										</ul>
									</div>
									<strong class="our-work">Ürünlerimiz</strong>
								</div>
							</div>
						</div>
				
					</div>
				</div>
				
				<div class="container">
					<hr class="tall"/>
				
					<div class="row center">
						<div class="col-md-12">
							<h2 class="mb-sm word-rotator-title">
								Müşterilerimiz bizimle
								<strong>
									<span class="word-rotate" data-plugin-options='{"delay": 3500, "animDelay": 400}'>
										<span class="word-rotate-items">
											<span>hoşnut</span>
											<span>mutlu</span>
										</span>
									</span>
								</strong>
								olurlar.
							</h2>
							<h4 class="heading-primary lead tall">Erzincan'a hakim müşteri portföyümüzle her zaman hizmetinizdeyiz.</h4>
						</div>
					</div>				
				</div>				
			</div>
</asp:Content>

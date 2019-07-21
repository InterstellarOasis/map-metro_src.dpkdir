//SKY
//LIGHTS
//GFX 
//CARS
//PLANTS
//M77
//MATERIAL
//AD & SIGNAUX
//PARIS
//OBJECTS
//NATURE
//EVILAIR
//COMMON
//FIRE LIGHT NOISE



//*************************************** SKY *****************************************//

textures/metro/skybox
{
	qer_editorimage textures/metro/env/KOsAD_Nuages.jpg

	q3map_sunExt .66 .63 .53 100 350 60 2 4
	q3map_skyLight 120 3

	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm nodlight
	surfaceparm sky

	skyparms textures/metro/env/sky 256 -
	nopicmip

	{
		map textures/metro/env/KOsAD_Nuages.jpg
		tcmod scale 6 6
		tcmod scroll -.0001 -.005
		rgbgen wave sin .8 .6 0 .002
	}
}


//*************************************** LIGHTS ***************************************//


textures/metro/sign_rouge
{
	qer_editorimage textures/metro/sign_rouge.jpg

	q3map_lightimage textures/metro/sign_rouge.jpg
	q3map_surfacelight 200

	surfaceparm nomarks
	surfaceparm nolightmap

	{
		map textures/metro/sign_rouge.jpg
	}
}


textures/metro/sign_vert
{
	qer_editorimage textures/metro/sign_vert.jpg

	q3map_lightimage textures/metro/sign_vert.jpg
	q3map_surfacelight 200

	surfaceparm nomarks
	surfaceparm nolightmap

	{
		map textures/metro/sign_vert.jpg
	}
}


textures/metro/sign_25
{
	qer_editorimage textures/metro/sign_25.jpg

	surfaceparm nomarks
	surfaceparm nolightmap

	{
		map textures/metro/sign_25.jpg
	}
}


textures/metro/KOsAD_NeonWhite
{
	qer_editorimage textures/metro/KOsAD_Neon.blend.jpg

	surfaceparm nomarks

	{
		map textures/metro/KOsAD_Neon.blend.jpg
	}
	{
		map $lightmap
		blendfunc add
	}
	{
		map textures/metro/KOsAD_Neon.jpg
		blendfunc filter
	}
}

textures/metro/KOsAD_NeonBroken
{
	qer_editorimage textures/metro/KOsAD_Neon.jpg

	surfaceparm nomarks

	{
		map textures/metro/ss191.jpg
		tcmod scale 1 2
		tcmod scroll 0 1
		tcmod turb .5 .3 0 4
	}
	{
		map $lightmap
		blendfunc add
	}
	{
		map textures/metro/KOsAD_Neon.jpg
		blendfunc filter
	}
	{
		//style 2
		map textures/metro/KOsAD_Neon.blend.jpg
		rgbgen wave triangle 0 .5 0 .8
		blendfunc add
	}
	{
		//style 3
		map textures/metro/KOsAD_Neon.blend.jpg
		rgbgen wave triangle 0 .6 .3 .8
		blendfunc add
	}
	{
		//style 4
		map textures/metro/KOsAD_Neon.blend.jpg
		rgbgen wave square 0 .5 .4 .6
		blendfunc add
	}
}


textures/metro/KOsAD_NeonOrange
{
	qer_editorimage textures/metro/KOsAD_NeonOrange.blend.jpg

	surfaceparm nomarks

	{
		map textures/metro/KOsAD_NeonOrange.blend.jpg
	}
	{
		map $lightmap
		blendfunc add
	}
	{
		map textures/metro/KOsAD_Neon.jpg
		blendfunc filter
	}
}


textures/metro/KOsAD_Blanc_Entree
{
	qer_editorimage textures/metro/KOsAD_Blanc.jpg

	q3map_lightimage textures/metro/KOsAD_Blanc.jpg
	q3map_backsplash 30 128
	q3map_surfacelight 3000

	surfaceparm nomarks
	surfaceparm nolightmap

	{
		map textures/metro/KOsAD_Blanc.jpg
	}
}

textures/metro/KOsAD_Blanc_EscalatorT
{
	qer_editorimage textures/metro/KOsAD_Blanc.jpg

	q3map_lightimage textures/metro/KOsAD_Blanc.jpg
	q3map_backsplash 30 64
	q3map_surfacelight 1500

	surfaceparm nomarks
	surfaceparm nolightmap

	{
		map textures/metro/KOsAD_Blanc.jpg
	}
}

textures/metro/KOsAD_Blanc_0
{
	qer_editorimage textures/metro/KOsAD_Blanc.jpg

	surfaceparm nomarks
	surfaceparm nolightmap

	{
		map textures/metro/KOsAD_Blanc.jpg
	}
}

textures/metro/KOsAD_Ocre_5
{
	qer_editorimage textures/metro/KOsAD_Blanc.jpg

	q3map_lightimage textures/metro/KOsAD_Blanc.jpg
	q3map_lightrgb .9 .8 .6
	q3map_surfacelight 500

	surfaceparm nomarks
	surfaceparm nolightmap

	{
		map textures/metro/KOsAD_Blanc.jpg
	}
}




//***************************************** GFX *****************************************//

textures/metro/KOsAD_Fog
{
	qer_editorimage textures/metro/KOsAD_fog.jpg
	qer_trans .5

	surfaceparm nonsolid
	surfaceparm nolightmap
	surfaceparm trans

	surfaceparm fog
	fogparms ( 0 0 0 ) 1024
}

textures/metro/KOsAD_LightFog
{
	qer_editorimage textures/metro/KOsAD_LightFog.tga
	qer_alphafunc greater 0.5

	surfaceparm nonsolid
	surfaceparm nolightmap
	surfaceparm trans

	cull disable

	{
		map textures/metro/KOsAD_LightFog.tga
		blendfunc blend
	}
}

textures/metro/PasBien
{
	qer_editorimage textures/metro/PasBien.tga
	qer_alphafunc greater 0.5

	{
		map textures/metro/PasBien.tga
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		depthfunc equal
		blendfunc filter
	}
}


// From flap.shader by OverFlow
textures/metro/sparkstreak_s
{  
  cull disable
  {
    map textures/metro/sparkstreak.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    alphaGen vertex
  }
}


textures/metro/zinc_ed
{
	qer_editorimage textures/metro/zinc_ed.tga

	{
		map $lightmap
	}
	{
		map textures/metro/zinc_ed.tga
		blendfunc gl_dst_color gl_src_alpha
		rgbgen identity
		alphagen lightingspecular
	}
}

textures/metro/KOsAD_Cable3
{
	qer_editorimage textures/metro/KOsAD_Cable3.jpg

	surfaceparm nonsolid
	surfaceparm trans

	{
		map $lightmap
	}
	{
		map textures/metro/KOsAD_Cable3.jpg
		blendfunc filter
	}
}


textures/metro/KOsAD_Mirroir
{
	qer_editorimage textures/metro/KOsAD_Mirroir.jpg

	portal

	{
		map textures/metro/KOsAD_Mirroir.blend.tga
		alphafunc lt128
		blendfunc gl_one gl_one_minus_src_alpha
		alphagen portal 512
		depthwrite
	}
	{
		map textures/metro/KOsAD_Mirroir.jpg
		blendfunc filter
	}
	{
		map textures/metro/glass03.jpg
		tcgen environment
		tcmod scale 8 8
		blendfunc filter
	}

	{
		map textures/metro/KOsAD_Mirroir.blend.tga
		alphafunc ge128
		rgbgen vertex
		depthwrite
	}
}


textures/metro/KOsAD_FlammeBougie
{
	qer_editorimage textures/metro/KOsAD_FlammeBougie1.jpg

	surfaceparm nolightmap
	surfaceparm nomarks
	surfaceparm trans

	cull disable
	deformvertexes autosprite2

	{
		animmap 50 textures/metro/KOsAD_FlammeBougie1.tga textures/metro/KOsAD_FlammeBougie2.tga textures/metro/KOsAD_FlammeBougie3.tga textures/metro/KOsAD_FlammeBougie4.tga textures/metro/KOsAD_FlammeBougie5.tga textures/metro/KOsAD_FlammeBougie6.tga textures/metro/KOsAD_FlammeBougie7.tga textures/metro/KOsAD_FlammeBougie8.tga
		blendfunc add
	}
}


textures/metro/KOsAD_Chaine
{
	qer_editorimage textures/metro/KOsAD_Chaine.tga

	cull disable
	deformvertexes autosprite2

	{
		map textures/metro/KOsAD_Chaine.tga
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}


textures/metro/red_particle
{
	qer_editor textures/metro/red_particle.tga

	{
		map textures/metro/red_particle.tga
		blendfunc blend
	}
}


textures/metro/flare_02
{
	qer_editorimage textures/metro/flare_02.tga

	surfaceparm nolightmap
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm trans

	{
		map textures/metro/flare_02.tga
		blendfunc add
	}
}


textures/metro/KOsAD_Noir
{
	qer_editorimage textures/metro/KOsAD_Noir.jpg

	surfaceparm nomarks
	surfaceparm nolightmap

	{
		map textures/metro/KOsAD_Noir.jpg
	}
}


textures/metro/navily-tv
{
	qer_editorimage textures/metro/navily-tv.jpg

	{
		map textures/metro/navily-tv.jpg
	}
	{
		animmap 10 textures/metro/KOsAD_Bruit1.jpg textures/metro/KOsAD_Bruit2.jpg textures/metro/KOsAD_Bruit3.jpg textures/metro/KOsAD_Bruit4.jpg textures/metro/KOsAD_Bruit5.jpg
		blendfunc filter
	}

	{
		map textures/metro/navily-tv.alpha.tga
		alphafunc ge128
	}
	{
		map textures/metro/navily-tv.jpg
		blendfunc add
	}
	{
		map $lightmap
		blendfunc filter
	}
}


textures/metro/KOsAD_Barre
{
	qer_editorimage textures/metro/KOsAD_Barre.tga
	qer_alphafunc greater .5

	surfaceparm alphashadow
	surfaceparm nomarks
	surfaceparm trans

	cull disable

	{
		map textures/metro/KOsAD_Barre.tga
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}


textures/metro/KOsAD_Cable3_mix
{
	qer_editorimage textures/metro/KOsAD_Cable3.jpg
	qer_trans .5

	{
		map textures/metro/KOsAD_Cable3.jpg
		blendfunc add
	}
	{
		map $lightmap
		blendfunc filter
	}
}


textures/metro/Alumb_t_s
{
	qer_editorimage textures/metro/Alumb_t.jpg

	{
		map textures/metro/Alumb_t.jpg
	}
	{
		map textures/metro/Blualum_g.jpg
		tcgen environment
		tcmod scale 4 4
		blendfunc add
	}
	{
		map $lightmap
		blendfunc filter
	}
}


textures/metro/door007
{
	qer_editorimage textures/metro/door007.tga
	qer_alphafunc greater .5

	surfaceparm alphashadow
	surfaceparm trans

	{
		map textures/metro/door007.tga
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}




//*************************************** CARS **************************************//

textures/metro/cars/austin
{
	qer_editorimage textures/metro/cars/austin.tga
	qer_alphafunc greater .5

	{
		map textures/metro/cars/austin.tga
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}

textures/metro/cars/2cv
{
	qer_editorimage textures/metro/cars/2cv.tga
	qer_alphafunc greater .5

	{
		map textures/metro/cars/2cv.tga
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}


textures/metro/cars/clio
{
	qer_editorimage textures/metro/cars/clio.tga
	qer_alphafunc greater .5

	{
		map textures/metro/cars/clio.tga
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}

textures/metro/cars/espace
{
	qer_editorimage textures/metro/cars/espace.tga
	qer_alphafunc greater .5

	{
		map textures/metro/cars/espace.tga
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}

textures/metro/cars/jumper
{
	qer_editorimage textures/metro/cars/jumper.tga
	qer_alphafunc greater .5

	{
		map textures/metro/cars/jumper.tga
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}


textures/metro/cars/kangoo
{
	qer_editorimage textures/metro/cars/kangoo.tga
	qer_alphafunc greater .5

	{
		map textures/metro/cars/kangoo.tga
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}

textures/metro/cars/twingo
{
	qer_editorimage textures/metro/cars/twingo.tga
	qer_alphafunc greater .5

	{
		map textures/metro/cars/twingo.tga
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}

textures/metro/cars/xsara-picasso
{
	qer_editorimage textures/metro/cars/xsara-picasso.tga
	qer_alphafunc greater .5

	{
		map textures/metro/cars/xsara-picasso.tga
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}

//*************************************** PLANTS **************************************//
textures/metro/40c_e
{
	qer_editorimage textures/metro/40c_e.tga
	qer_alphafunc greater .5

	cull disable
	deformvertexes autosprite2

	{
		map textures/metro/40c_e.tga
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}

textures/metro/hedge_small
{
	qer_editorimage textures/metro/hedge_small.tga
	qer_alphafunc greater .5

	{
		map textures/metro/hedge_small.tga
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}

textures/metro/SmallLeafTree01_256
{
	qer_editorimage textures/metro/SmallLeafTree01_256.tga
	qer_alphafunc greater .5

	cull disable
	deformvertexes autosprite2

	{
		map textures/metro/SmallLeafTree01_256.tga
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}




//**************************************** MF77 *****************************************//

textures/metro/M77-Roue
{
	qer_editorimage textures/metro/M77-Roue.tga
	qer_alphafunc greater .5

	cull disable

	{
		map textures/metro/M77-Roue.tga
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}


textures/metro/M77-ft-In_err
{
	qer_editorimage textures/metro/M77-ft.alpha.tga
	qer_alphafunc greater .5

	{
		map textures/metro/M77-ft.alpha.tga
		alphafunc lt128
		blendfunc filter
		depthwrite
	}
	{
		map textures/metro/metal030.jpg
		rgbgen const ( .4 .4 .5 )
		tcgen environment
		blendfunc add
	}

	{
		map textures/metro/M77-ft.alpha.tga
		alphafunc ge128
	}
}


textures/metro/M77-cote-vide
{
	qer_editorimage textures/metro/M77-cote-vide.jpg

	{
		map textures/metro/M77-cote-vide.jpg
	}
	{
		map $lightmap
		blendfunc filter
	}
	{
		map textures/metro/KOsAD_noir.jpg
		blendfunc add
	}
}


textures/metro/M77-ft
{
	qer_editorimage textures/metro/M77-ft.jpg

	{
		map textures/metro/metal030.jpg
		tcgen environment
		rgbgen const ( .4 .4 .5 )
		//blendfunc add
	}

	{
		map textures/metro/M77-ft.alpha.tga
		alphafunc ge128
		depthwrite
	}
	{
		map textures/metro/M77-ft.jpg
		blendfunc add
	}
	{
		map $lightmap
		blendfunc filter
	}
	{
		map textures/metro/M77-ft.blend.jpg
		blendfunc add
	}
}

textures/metro/M77-cote-In_err
{
	qer_editorimage textures/metro/M77-cote.alpha.tga
	qer_alphafunc greater 0.5

	{
		map textures/metro/M77-cote.alpha.tga
		alphafunc lt128
		blendfunc filter
		depthwrite
	}
	{
		map textures/metro/metal030.jpg
		rgbgen const ( .4 .4 .5 )
		tcgen environment
		blendfunc add
	}

	{
		map textures/metro/M77-cote.alpha.tga
		alphafunc ge128
	}
}


textures/metro/M77-cote
{
	qer_editorimage textures/metro/M77-cote.jpg

	{
		map textures/metro/metal030.jpg
		tcgen environment
		rgbgen const ( .4 .4 .5 )
		//blendfunc add
	}

	{
		map textures/metro/M77-cote.alpha.tga
		alphafunc ge128
		depthwrite
	}
	{
		map textures/metro/M77-cote.jpg
		blendfunc add
	}
	{
		map $lightmap
		blendfunc filter
	}
}


textures/metro/M77-cote3-In_err
{
	qer_editorimage textures/metro/M77-cote3.alpha.tga
	qer_alphafunc greater 0.5

	{
		map textures/metro/M77-cote3.alpha.tga
		alphafunc lt128
		blendfunc filter
		depthwrite
	}
	{
		map textures/metro/metal030.jpg
		rgbgen const ( .4 .4 .5 )
		tcgen environment
		blendfunc add
	}

	{
		map textures/metro/M77-cote3.alpha.tga
		alphafunc ge128
	}
}


textures/metro/M77-cote3
{
	qer_editorimage textures/metro/M77-cote3.jpg

	{
		map textures/metro/metal030.jpg
		tcgen environment
		rgbgen const ( .4 .4 .5 )
		//blendfunc add
	}

	{
		map textures/metro/M77-cote3.alpha.tga
		alphafunc ge128
		depthwrite
	}
	{
		map textures/metro/M77-cote3.jpg
		blendfunc add
	}
	{
		map $lightmap
		blendfunc filter
	}
}



//*************************************** MATERIAL **************************************//

textures/metro/glassblock1
{
	qer_editorimage textures/metro/glassblock1.jpg
	qer_trans 0.6

	surfaceparm lightfilter
	surfaceparm nomarks
	surfaceparm trans

	{
		map textures/metro/glassblock1.jpg
		blendfunc gl_dst_color gl_src_color
	}
	//{
	//	map textures/metro/glass03.jpg
	//	blendfunc filter
	//	tcmod scale 4 4
	//	tcgen environment
	//}
}


textures/metro/KOsAD_Window
{
	qer_editorimage textures/metro/KOsAD_Window.jpg
	qer_trans 0.6

	surfaceparm nomarks
	surfaceparm trans

	{
		map textures/metro/KOsAD_Window.jpg
		blendfunc filter
	}
	//{
	//	map textures/metro/glass03.jpg
	//	blendfunc filter
	//	tcmod scale 4 4
	//	tcgen environment
	//}
}




//*************************************** AD & SIGNAUX *********************************//

textures/metro/KOsAD_SortiePicto
{
	qer_editorimage textures/metro/KOsAD_SortiePicto

	q3map_surfacelight 5000
	q3map_lightrgb .8 .9 .3
	q3map_backsplash 10 8

	surfaceparm nomarks
	surfaceparm nolightmap

	{
		map textures/metro/KOsAD_SortiePicto.jpg
		rgbgen const ( .8 .9 .3 )
	}
}

textures/metro/SIEL_RATP_MET_2
{
	qer_editorimage textures/metro/SIEL_RATP_MET_2.jpg

	{
		map textures/metro/SIEL_RATP_MET_2.jpg
	}
	{
		map $lightmap
		blendfunc filter
	}

	{
		animmap 1 textures/metro/SIEL_RATP_MET_2a.blend.jpg textures/metro/SIEL_RATP_MET_2b.blend.jpg
		blendfunc add
	}
}

textures/metro/SIEL_RATP_MET_1la
{
	qer_editorimage textures/metro/SIEL_RATP_MET_1la.jpg

	{
		map textures/metro/SIEL_RATP_MET_1la.jpg
	}
	{
		map $lightmap
		blendfunc filter
	}

	{
		map textures/metro/SIEL_RATP_MET_1.blend.jpg
		blendfunc add
	}
}

textures/metro/SIEL_RATP_MET_1ld
{
	qer_editorimage textures/metro/SIEL_RATP_MET_1ld.jpg

	{
		map textures/metro/SIEL_RATP_MET_1ld.jpg
	}
	{
		map $lightmap
		blendfunc filter
	}

	{
		map textures/metro/SIEL_RATP_MET_1.blend.jpg
		blendfunc add
	}
}


textures/metro/pub/5530784
{
	qer_editorimage textures/metro/pub/5530784.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/5530784.jpg
		blendfunc filter
	}
}

textures/metro/pub/5942902
{
	qer_editorimage textures/metro/pub/5942902.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/5942902.jpg
		blendfunc filter
	}
}

textures/metro/pub/6083541
{
	qer_editorimage textures/metro/pub/6083541.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/6083541.jpg
		blendfunc filter
	}
}

textures/metro/pub/6155183
{
	qer_editorimage textures/metro/pub/6155183.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/6155183.jpg
		blendfunc filter
	}
}

textures/metro/pub/6295332
{
	qer_editorimage textures/metro/pub/6295332.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/6295332.jpg
		blendfunc filter
	}
}

textures/metro/pub/7950657
{
	qer_editorimage textures/metro/pub/7950657.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/7950657.jpg
		blendfunc filter
	}
}

textures/metro/pub/8366227
{
	qer_editorimage textures/metro/pub/8366227.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/8366227.jpg
		blendfunc filter
	}
}

textures/metro/pub/9737445
{
	qer_editorimage textures/metro/pub/9737445.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/9737445.jpg
		blendfunc filter
	}
}

textures/metro/pub/alwcoke
{
	qer_editorimage textures/metro/pub/alwcoke.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/alwcoke.jpg
		blendfunc filter
	}
}

textures/metro/pub/bush_le_tout_puissant
{
	qer_editorimage textures/metro/pub/bush_le_tout_puissant.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/bush_le_tout_puissant.jpg
		blendfunc filter
	}
}

textures/metro/pub/DOP
{
	qer_editorimage textures/metro/pub/DOP.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/DOP.jpg
		blendfunc filter
	}
}

textures/metro/pub/electionmisstrans
{
	qer_editorimage textures/metro/pub/electionmisstrans.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/electionmisstrans.jpg
		blendfunc filter
	}
}

textures/metro/pub/gaymobil1
{
	qer_editorimage textures/metro/pub/gaymobil1.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/gaymobil1.jpg
		blendfunc filter
	}
}

textures/metro/pub/imacII
{
	qer_editorimage textures/metro/pub/imacII.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/imacII.jpg
		blendfunc filter
	}
}

textures/metro/pub/inspecteurlabavure
{
	qer_editorimage textures/metro/pub/inspecteurlabavure.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/inspecteurlabavure.jpg
		blendfunc filter
	}
}

textures/metro/pub/johnnie_walked
{
	qer_editorimage textures/metro/pub/johnnie_walked.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/johnnie_walked.jpg
		blendfunc filter
	}
}

textures/metro/pub/la_doublure_bis
{
	qer_editorimage textures/metro/pub/la_doublure_bis.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/la_doublure_bis.jpg
		blendfunc filter
	}
}

textures/metro/pub/Le_Pignon_est_Fran_ois
{
	qer_editorimage textures/metro/pub/Le_Pignon_est_Fran_ois.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/Le_Pignon_est_Fran_ois.jpg
		blendfunc filter
	}
}

textures/metro/pub/leboulet
{
	qer_editorimage textures/metro/pub/leboulet.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/leboulet.jpg
		blendfunc filter
	}
}

textures/metro/pub/lionel_le_people
{
	qer_editorimage textures/metro/pub/lionel_le_people.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/lionel_le_people.jpg
		blendfunc filter
	}
}

textures/metro/pub/loreal
{
	qer_editorimage textures/metro/pub/loreal.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/loreal.jpg
		blendfunc filter
	}
}

textures/metro/pub/m-royal_canin
{
	qer_editorimage textures/metro/pub/m-royal_canin.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/m-royal_canin.jpg
		blendfunc filter
	}
}

textures/metro/pub/m-sorciere_bien_aimee
{
	qer_editorimage textures/metro/pub/m-sorciere_bien_aimee.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/m-sorciere_bien_aimee.jpg
		blendfunc filter
	}
}

textures/metro/pub/Macdo_cr
{
	qer_editorimage textures/metro/pub/Macdo_cr.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/Macdo_cr.jpg
		blendfunc filter
	}
}

textures/metro/pub/marxix_revolution
{
	qer_editorimage textures/metro/pub/marxix_revolution.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/marxix_revolution.jpg
		blendfunc filter
	}
}

textures/metro/pub/menteur_menteur
{
	qer_editorimage textures/metro/pub/menteur_menteur.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/menteur_menteur.jpg
		blendfunc filter
	}
}

textures/metro/pub/militaire
{
	qer_editorimage textures/metro/pub/militaire.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/militaire.jpg
		blendfunc filter
	}
}

textures/metro/pub/murdersinbagdad
{
	qer_editorimage textures/metro/pub/murdersinbagdad.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/murdersinbagdad.jpg
		blendfunc filter
	}
}

textures/metro/pub/nescafe
{
	qer_editorimage textures/metro/pub/nescafe.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/nescafe.jpg
		blendfunc filter
	}
}

textures/metro/pub/pas_les_royal
{
	qer_editorimage textures/metro/pub/pas_les_royal.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/pas_les_royal.jpg
		blendfunc filter
	}
}

textures/metro/pub/publicite-030
{
	qer_editorimage textures/metro/pub/publicite-030.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/publicite-030.jpg
		blendfunc filter
	}
}

textures/metro/pub/rato-plage
{
	qer_editorimage textures/metro/pub/rato-plage.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/rato-plage.jpg
		blendfunc filter
	}
}

textures/metro/pub/sarkocop2
{
	qer_editorimage textures/metro/pub/sarkocop2.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/sarkocop2.jpg
		blendfunc filter
	}
}

textures/metro/pub/sarkophages
{
	qer_editorimage textures/metro/pub/sarkophages.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/sarkophages.jpg
		blendfunc filter
	}
}

textures/metro/pub/truelies
{
	qer_editorimage textures/metro/pub/truelies.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/truelies.jpg
		blendfunc filter
	}
}

textures/metro/pub/vivre_ensemble1
{
	qer_editorimage textures/metro/pub/vivre_ensemble1.jpg

	{
		map textures/metro/pub/light3.blend.jpg
	}
	{
		map textures/metro/pub/vivre_ensemble1.jpg
		blendfunc filter
	}
}

textures/metro/KOsAD_sortieL
{
	qer_editorimage textures/metro/KOsAD_sortie.jpg

	{
		map textures/metro/KOsAD_sortie.blend.jpg
	}
	{
		map $lightmap
		blendfunc add
	}
	{
		map textures/metro/KOsAD_sortie.jpg
		blendfunc filter
	}

}

textures/metro/RFSP-Alarme1L
{
	qer_editorimage textures/metro/RFSP-Alarme1.jpg

	{
		map textures/metro/RFSP-Alarme1.blend.jpg
	}
	{
		map $lightmap
		blendfunc add
	}
	{
		map textures/metro/RFSP-Alarme1.jpg
		blendfunc filter
	}
}

textures/metro/RFSP-Alarme2L
{
	qer_editorimage textures/metro/RFSP-Alarme2.jpg

	{
		map textures/metro/RFSP-Alarme2.blend.jpg
	}
	{
		map $lightmap
		blendfunc add
	}
	{
		map textures/metro/RFSP-Alarme2.jpg
		blendfunc filter
	}
}

//*************************************** PARIS ****************************************//

textures/metro/KOsAD_EiffelTop
{
	qer_editorimage textures/metro/KOsAD_EiffelTop.tga
	qer_alphafunc greater .5

	{
		map textures/metro/KOsAD_EiffelTop.tga
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}


textures/metro/RFSP-Paris02a
{
	qer_editorimage textures/metro/RFSP-Paris02a.tga
	qer_alphafunc greater .5

	{
		map textures/metro/RFSP-Paris02a.tga
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}

textures/metro/RFSP-Paris02b
{
	qer_editorimage textures/metro/RFSP-Paris02b.tga
	qer_alphafunc greater .5

	{
		map textures/metro/RFSP-Paris02b.tga
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}

textures/metro/RFSP-Paris03a
{
	qer_editorimage textures/metro/RFSP-Paris03a.tga
	qer_alphafunc greater .5

	{
		map textures/metro/RFSP-Paris03a.tga
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}

textures/metro/RFSP-Paris03b
{
	qer_editorimage textures/metro/RFSP-Paris03b.tga
	qer_alphafunc greater .5

	{
		map textures/metro/RFSP-Paris03b.tga
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}


//*************************************** OBJECTS **************************************//


                    //****** Plant_life ******//

models/mapobjects/plant_life/fern_leaf
{
	cull disable
	nopicmip
	surfaceparm alphashadow
	{
		map models/mapobjects/plant_life/fern_leaf.tga
		alphaFunc GE128
		depthWrite
		rgbGen lightingDiffuse
	}
}

models/mapobjects/plant_life/palm_leaf
{
	cull disable
	nopicmip
	surfaceparm alphashadow
	{
		map models/mapobjects/plant_life/palm_leaf.tga
		alphaFunc GE128
		depthWrite
		rgbGen lightingDiffuse
	}
}

                    //****** Voute ******//

models/mapobjects/KOsAD/voute/e7brickfloor01
{
	qer_editorimage models/mapobjects/KOsAD/voute/e7brickfloor01.jpg

	{
		map models/mapobjects/KOsAD/voute/e7brickfloor01.jpg
		rgbgen wave noise .8 .1 .5 10
	}
	{
		map $lightmap
		blendfunc filter
	}
}

                    //****** Boite 3 ******//

models/mapobjects/KOsAD/conteneur/object023_3_p
{
	qer_editorimage models/mapobjects/KOsAD/conteneur/object023_3_p.jpg

	{
		map models/mapobjects/KOsAD/conteneur/object023_3_p.jpg
		rgbgen wave noise .8 .1 .5 10
	}
	{
		map $lightmap
		blendfunc filter
	}
}

                    //****** Bouteille ******//

models/mapobjects/KOsAD/bouteille/tour-du-roc
{
	qer_editorimage models/mapobjects/KOsAD/bouteille/tour-du-roc.jpg

	q3map_backshader textures/metro/KOsAD_grey1.jpg

	{
		map models/mapobjects/KOsAD/bouteille/tour-du-roc.jpg
		rgbgen vertex
	}
}

models/mapobjects/KOsAD/bouteille/gris
{
	qer_editorimage models/mapobjects/KOsAD/bouteille/gris.jpg

	cull disable

	{
		map models/mapobjects/KOsAD/bouteille/gris.jpg
		rgbgen vertex
	}
}

models/mapobjects/KOsAD/bouteille/verre
{
	qer_editorimage models/mapobjects/KOsAD/bouteille/verre.jpg
	qer_trans .5

	cull disable

	{
		map models/mapobjects/KOsAD/bouteille/verre.jpg
		blendfunc filter
	}
}

                    //****** Luminaire ******//

models/mapobjects/KOsAD/lumiere/glass03
{
	qer_editorimage models/mapobjects/KOsAD/lumiere/glass03.jpg

	{
		map models/mapobjects/KOsAD/lumiere/glass03.jpg
	}
}

models/mapobjects/KOsAD/lumiere/ocre2
{
	qer_editorimage models/mapobjects/KOsAD/lumiere/ocre2.jpg

	{
		map models/mapobjects/KOsAD/lumiere/ocre2.jpg
		rgbgen const ( .1 .1 .1 )
	}
}

models/mapobjects/KOsAD/lumiere/dore
{
	qer_editorimage models/mapobjects/KOsAD/lumiere/dore.jpg

	{
		map models/mapobjects/KOsAD/lumiere/dore.jpg
		rgbgen const ( .1 .1 .1 )
	}
}


                    //****** Lanterne ******//

models/mapobjects/KOsAD/lanterne/KOsAD_Bougie2
{
	qer_editorimage models/mapobjects/KOsAD/lanterne/KOsAD_Bougie2.jpg

	{
		map $lightmap
	}
	{
		map models/mapobjects/KOsAD/lanterne/KOsAD_Bougie2.jpg
		blendfunc filter
	}
}

models/mapobjects/KOsAD/lanterne/KOsAD_Cuivre
{
	qer_editorimage models/mapobjects/KOsAD/lanterne/KOsAD_Cuivre.jpg

	{
		map models/mapobjects/KOsAD/lanterne/KOsAD_Cuivre.jpg
		rgbgen vertex
	}
}

models/mapobjects/KOsAD/lanterne/glass03
{
	qer_editorimage models/mapobjects/KOsAD/lanterne/glass03.jpg
	qer_trans .5

	{
		map $whiteimage
		rgbgen const ( .1 .06 0 )
		blendfunc add
	}
	{
		map models/mapobjects/KOsAD/lanterne/glass03.jpg
		blendfunc filter
	}
}

models/mapobjects/KOsAD/lanterne/KOsAD_FlammeBougie
{
	q3map_cloneshader textures/metro/KOsAD_FlammeBougie

	{
		map $lightmap
		blendfunc filter
	}
}

//lanterne2.md3
models/mapobjects/KOsAD/lanterne/LumiereDiffuse8
{
	qer_editorimage models/mapobjects/KOsAD/lanterne/LumiereDiffuse8.jpg
	qer_trans .2

	q3map_surfacelight 5000
	q3map_lightrgb 1 .8 .4
	q3map_backsplash 5 8

	{
		map $lightmap
		blendfunc filter
	}
}

//lanterne1.md3 self lightning
models/mapobjects/KOsAD/lanterne/LumiereSoft
{
	qer_editorimage models/mapobjects/KOsAD/lanterne/LumiereSoft.jpg
	qer_trans .2

	q3map_surfacelight 5000
	q3map_lightrgb 1 .8 .4
	q3map_backsplash 30 4

	{
		map $lightmap
		blendfunc filter
	}
}

//lanterne1.md3
models/mapobjects/KOsAD/lanterne/LumiereDiffuse32
{
	qer_editorimage models/mapobjects/KOsAD/lanterne/LumiereDiffuse32.jpg

	q3map_surfacelight 15000
	q3map_lightrgb 1 .8 .4
	q3map_backsplash 60 32

	{
		map $lightmap
		blendfunc filter
	}
}


                    //****** Bougie ******//
                    
//Backlight a effacer !!
models/mapobjects/KOsAD/bougie/Lumiere
{
	qer_editorimage models/mapobjects/KOsAD/bougie/Lumiere.jpg
	qer_trans .2

	//q3map_surfacelight 10000
	//q3map_lightrgb .9 .85 .6
	//q3map_backsplash 80 2

	{
		map $lightmap
		blendfunc filter
	}
}

models/mapobjects/KOsAD/bougie/KOsAD_FlammeBougie
{
	q3map_cloneshader textures/metro/KOsAD_FlammeBougie

	q3map_surfacelight 50000
	q3map_lightrgb .9 .85 .6
	q3map_backsplash 75 32

	{
		map $lightmap
		blendfunc filter
	}
}

                    //****** Lustre ******//

models/mapobjects/KOsAD/lustre/flame1
{
	q3map_cloneshader textures/metro/torchflame

	{
		map $whiteimage
		blendfunc filter
	}
}

models/mapobjects/KOsAD/lustre/wood1toplit
{
	q3map_cloneshader textures/metro/wood1toplit

	q3map_surfacelight 50000
	q3map_lightrgb .8 .4 0
	q3map_backsplash 80 8

	{
		map $lightmap
		blendfunc filter
	}
}


//Dasprid.shader
// ======================================================================
// Wall Torch Stuff - Thanks to Sockter
// ======================================================================
//Edited by KOsAD
textures/metro/torchflame
{
	qer_editorimage textures/metro/flame1.jpg
	qer_trans .6

	surfaceparm nolightmap
	surfaceparm nomarks
	surfaceparm trans

	cull disable
	deformvertexes autosprite2

	{
		animMap 10 textures/metro/flame1.tga textures/metro/flame2.tga textures/metro/flame3.tga textures/metro/flame4.tga textures/metro/flame5.tga textures/metro/flame6.tga textures/metro/flame7.tga textures/metro/flame8.tga
		blendFunc add
		rgbGen wave inverseSawtooth 0 1 0 10
	}
	{
		animMap 10 textures/metro/flame2.tga textures/metro/flame3.tga textures/metro/flame4.tga textures/metro/flame5.tga textures/metro/flame6.tga textures/metro/flame7.tga textures/metro/flame8.tga textures/metro/flame1.tga
		blendFunc add
		rgbGen wave sawtooth 0 1 0 10
	}
	{
		map textures/metro/flameball.tga
		blendFunc add
		rgbGen wave sin .6 .2 0 .6
	}
}


textures/metro/wood1toplit
{
	qer_editorimage textures/metro/wood1toplit.jpg

	{
		map textures/metro/wood1toplit.jpg
		rgbGen vertex
	}
	{
		map textures/metro/wood1glow.jpg
		blendFunc add
		tcMod rotate -6
		rgbGen wave sin .8 .1 0 .6
	}
	{
		map textures/metro/wood1glow.jpg
		blendFunc add
		tcMod rotate 8
	}
}




//*************************************** NATURE **************************************//


//vers l'ouest
textures/metro/KOsAD_EauEgoutsL
{
	qer_editorimage textures/metro/water024.jpg
	qer_trans .8

	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm water

	cull disable

	{
		map textures/metro/water024.jpg
		//tcmod turb .5 .1 .1 .01
		tcmod scroll .1 0
		blendfunc add
	}
	{
		map textures/metro/water024.jpg
		//tcmod turb .5 .1 .1 .01
		tcmod scroll .1 0
		blendfunc filter
	}
	{
		map textures/metro/water014.jpg
		//tcmod turb .5 .05 .05 .05
		tcmod scroll .05 0
		blendfunc add
	}
	{
		map $lightmap
		blendfunc filter
	}
}

//vers le sud
textures/metro/KOsAD_EauEgoutsD
{
	qer_editorimage textures/metro/water024.jpg
	qer_trans .8

	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm water

	cull disable

	{
		map textures/metro/water024.jpg
		tcmod turb .5 .1 .1 .01
		tcmod scroll 0 -.1
		blendfunc add
	}
	{
		map textures/metro/water024.jpg
		tcmod turb .5 .1 .1 .01
		tcmod scroll 0 -.1
		blendfunc filter
	}
	{
		map textures/metro/water014.jpg
		tcmod turb .5 .05 .05 .05
		tcmod scroll 0 -.05
		blendfunc add
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/metro/KOsAD_EauEgouts
{
	qer_editorimage textures/metro/water024.jpg
	qer_trans .8

	surfaceparm nomarks
	//surfaceparm lightfilter
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm water

	//~100FPS
	//fps hack
	//surfaceparm fog
	//fogparms ( .05 .05 .03 ) 512

	cull disable

	{
		map textures/metro/water024.jpg
		tcmod turb .5 .1 .1 .05
		blendfunc add
	}
	{
		map textures/metro/water024.jpg
		tcmod turb .5 .1 .1 .05
		blendfunc filter
	}
	{
		map textures/metro/water014.jpg
		tcmod turb .5 .05 .05 .05
		blendfunc add
	}
	{
		map $lightmap
		blendfunc filter
	}
}


//*************************************** EVILAIR **************************************//

textures/metro/e6bsegrtflr128
{
	qer_editorimage textures/metro/e6bsegrtflr128.tga
	qer_alphafunc greater 0.5

	surfaceparm trans
	//surfaceparm playerclip
	//surfaceparm nonsolid
	surfaceparm nomarks

	{
		map textures/metro/e6bsegrtflr128.tga
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		depthfunc equal
		blendfunc filter
	}
}

//karith.shader
//by Evillair -c
textures/metro/e6metalfan_s2
{
	qer_editorimage textures/metro/e6metalfan.tga

	{
		map textures/metro/e6metalfan_blade.tga
		tcmod rotate -5000
	}
	{
		map textures/metro/e6metalfan.tga
		blendfunc blend
	}
	{
		map $lightmap
		blendfunc filter
	}
}

//transparent
textures/metro/e6metalfan_s2_t
{
	qer_editorimage textures/metro/e6metalfan.tga
	qer_alphafunc greater 0.5

	{
		map $whiteimage
		blendfunc gl_dst_color gl_one
	}
	{
		map textures/metro/e6metalfan_blade.tga
		blendfunc blend
		tcmod rotate -5000
	}
	{
		map textures/metro/e6metalfan.tga
		blendfunc blend
	}
	{
		map $lightmap
		blendfunc filter
	}
}


textures/metro/e6grtflr2bl
{
	qer_editorimage textures/metro/e6grtflr2bl.tga
	qer_alphafunc greater 0.5

	surfaceparm metalsteps
	surfaceparm nomarks
	//surfaceparm playerclip
	surfaceparm trans

	{
		map textures/metro/e6grtflr2bl.tga
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		depthfunc equal
		blendfunc filter
	}
}

textures/metro/eX_floor_grate03_d
{
	qer_editorimage textures/metro/eX_floor_grate03_d.tga
	qer_alphafunc greater 0.5

	surfaceparm metalsteps
	surfaceparm nomarks
	//surfaceparm playerclip
	surfaceparm trans

	cull disable

	{
		map textures/metro/eX_floor_grate03_d.tga
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		depthfunc equal
		blendfunc filter
	}
}


textures/metro/e7slight
{
	qer_editorimage textures/metro/e7slight.jpg

	q3map_lightimage textures/metro/e7slight.blend.jpg
	q3map_surfacelight 8000
	q3map_backsplash 30 32

	surfaceparm nomarks

	{
		map $lightmap
	}
	{
		map textures/metro/e7slight.jpg
		blendfunc filter
	}
	{
		map textures/metro/e7slight.blend.jpg
		blendfunc add
	}
}

textures/metro/e7slight_vents
{
	qer_editorimage textures/metro/e7slight.jpg

	q3map_lightimage textures/metro/e7slight.blend.jpg
	q3map_surfacelight 3000
	q3map_backsplash 30 32
	q3map_lightrgb .96 .96 .78

	surfaceparm nomarks

	{
		map $lightmap
	}
	{
		map textures/metro/e7slight.jpg
		rgbgen const ( .96 .96 .78 )
		blendfunc filter
	}
	{
		map textures/metro/e7slight.blend.jpg
		blendfunc add
	}
}

textures/metro/e6horzlight
{
	qer_editorimage textures/metro/e6horzlight.jpg

	q3map_lightimage textures/metro/e6horzlight.blend.jpg
	q3map_surfacelight 5000
	//q3map_backsplash 30 8

	surfaceparm nomarks

	{
		map $lightmap
	}
	{
		map textures/metro/e6horzlight.jpg
		blendfunc filter
	}
	{
		map textures/metro/e6horzlight.blend.jpg
		blendfunc add
	}
}


textures/metro/e7mlight
{
	qer_editorimage textures/metro/e7mlight.jpg

	q3map_surfacelight 4000
	q3map_lightrgb .9 .8 .6

	surfaceparm nomarks

	{
		map $lightmap
	}
	{
		map textures/metro/e7mlight.jpg
		blendfunc filter
	}
	{
		map textures/metro/e7mlight.blend.jpg
		rgbgen const ( .9 .8 .6 )
		blendfunc add
	}
}


textures/metro/e6v_light_sm
{
	qer_editorimage textures/metro/e6v_light_sm.jpg

	q3map_lightimage textures/metro/e6v_light_sm.blend.jpg
	q3map_surfacelight 1000

	surfaceparm nomarks

	{
		map $lightmap
	}
	{
		map textures/metro/e6v_light_sm.jpg
		blendfunc filter
	}
	{
		map textures/metro/e6v_light_sm.blend.jpg
		blendfunc add
	}
}

textures/metro/e6v_light_sm_10
{
	qer_editorimage textures/metro/e6v_light_sm.jpg

	q3map_lightimage textures/metro/e6v_light_sm.blend.jpg
	q3map_lightrgb 1 1 1
	q3map_surfacelight 5000
	q3map_backsplash 60 64

	surfaceparm nomarks

	{
		map $lightmap
	}
	{
		map textures/metro/e6v_light_sm.jpg
		blendfunc filter
	}
	{
		map textures/metro/e6v_light_sm.blend.jpg
		blendfunc add
	}
}


//*************************************** COMMON **************************************//

textures/metro/KOsAD_Filtre
{
	qer_editorimage textures/metro/KOsAD_Grey3.jpg
	qer_trans 0.5

	surfaceparm lightfilter
	surfaceparm nolightmap
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm trans

	cull disable

	{
		map textures/metro/KOsAD_Grey3.jpg
		blendfunc gl_zero gl_one
	}
}


textures/metro/invisible
{
	qer_editorimage textures/metro/invisible.jpg
	qer_trans 0.5

	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm trans

	{
		map textures/metro/mirror.tga
		alphafunc ge128
		depthwrite
	}
}

textures/metro/skip
{
	qer_editorimage textures/metro/KOsAD_skip.jpg
	qer_trans .1

	surfaceparm nodraw
	surfaceparm nonsolid
	surfaceparm trans
}

textures/metro/ladder
{
	qer_editorimage textures/common/clip
	qer_trans .5

	surfaceparm ladder
	surfaceparm nodraw
	surfaceparm nonsolid
	surfaceparm playerclip
}


//******************************* FIRE LIGHT NOISE ************************************//

																												// Crypte ********************

textures/metro/e7brickfloor01
{
	qer_editorimage textures/metro/e7brickfloor01.jpg

	cull disable

	{
		map $lightmap
	}
	{
		map textures/metro/e7brickfloor01.jpg
		rgbgen wave noise .8 .1 .5 10
		blendfunc filter
	}
}


textures/metro/misc018
{
	qer_editorimage textures/metro/misc018.jpg

	cull disable

	{
		map $lightmap
	}
	{
		map textures/metro/misc018.jpg
		rgbgen wave noise .8 .1 .5 10
		blendfunc filter
	}
}


textures/metro/KOsAD_Banniere
{
	qer_editorimage textures/metro/KOsAD_Banniere.jpg
	qer_alphafunc greater 0.5

	{
		map textures/metro/KOsAD_Banniere.tga
		rgbgen wave noise .8 .1 .5 10
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		depthfunc equal
		blendfunc filter
	}
}

textures/metro/Tempgryl
{
	qer_editorimage textures/metro/Tempgryl.jpg

	{
		map $lightmap
	}
	{
		map textures/metro/Tempgryl.jpg
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/ornam11b
{
	qer_editorimage textures/metro/ornam11b.jpg

	{
		map $lightmap
	}
	{
		map textures/metro/ornam11b.jpg
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/ornam11b2
{
	qer_editorimage textures/metro/ornam11b2.jpg

	{
		map $lightmap
	}
	{
		map textures/metro/ornam11b2.jpg
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/Coffre_cote
{
	qer_editorimage textures/metro/Coffre_cote.jpg

	{
		map $lightmap
	}
	{
		map textures/metro/Coffre_cote.jpg
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/Coffre_face
{
	qer_editorimage textures/metro/Coffre_face.jpg

	{
		map $lightmap
	}
	{
		map textures/metro/Coffre_face.jpg
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/imageafter-b19wall031
{
	qer_editorimage textures/metro/imageafter-b19wall031.jpg

	{
		map $lightmap
	}
	{
		map textures/metro/imageafter-b19wall031.jpg
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/drock074
{
	qer_editorimage textures/metro/drock074.jpg

	{
		map $lightmap
	}
	{
		map textures/metro/drock074.jpg
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/e7bmtrim
{
	qer_editorimage textures/metro/e7bmtrim.jpg

	q3map_nonplanar
	q3map_shadeangle 70

	{
		map $lightmap
	}
	{
		map textures/metro/e7bmtrim.jpg
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}


textures/metro/e7bricks01
{
	qer_editorimage textures/metro/e7bricks01.jpg

	q3map_nonplanar
	q3map_shadeangle 70

	{
		map $lightmap
	}
	{
		map textures/metro/e7bricks01.jpg
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/e7sbrickfloor
{
	qer_editorimage textures/metro/e7sbrickfloor.jpg

	{
		map $lightmap
	}
	{
		map textures/metro/e7sbrickfloor.jpg
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/e7sbrickfloorbig
{
	qer_editorimage textures/metro/e7sbrickfloorbig.jpg

	{
		map $lightmap
	}
	{
		map textures/metro/e7sbrickfloorbig.jpg
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/KOsAD_Brique1c
{
	qer_editorimage textures/metro/KOsAD_Brique1c.jpg

	q3map_nonplanar
	q3map_shadeangle 70

	{
		map $lightmap
	}
	{
		map textures/metro/KOsAD_Brique1c.jpg
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/KOsAD_Brique2b
{
	qer_editorimage textures/metro/KOsAD_Brique2b.jpg

	{
		map $lightmap
	}
	{
		map textures/metro/KOsAD_Brique2b.jpg
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

																												// Aqueduc ********************

textures/metro/rock29t
{
	qer_editorimage textures/metro/rock29t.jpg

	{
		map $lightmap
	}
	{
		map textures/metro/rock29t.jpg
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/KOsAD_Brique1b
{
	qer_editorimage textures/metro/KOsAD_Brique1b.jpg

	{
		map $lightmap
	}
	{
		map textures/metro/KOsAD_Brique1b.jpg
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/KOsAD_Brique2
{
	qer_editorimage textures/metro/KOsAD_Brique2.jpg

	{
		map $lightmap
	}
	{
		map textures/metro/KOsAD_Brique2.jpg
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/KOsAD_Brique2_nonoise
{
	qer_editorimage textures/metro/KOsAD_Brique2.jpg

	{
		map $lightmap
	}
	{
		map textures/metro/KOsAD_Brique2.jpg
		blendfunc filter
	}
}

textures/metro/plaster20
{
	qer_editorimage textures/metro/plaster20.jpg

	{
		map $lightmap
	}
	{
		map textures/metro/plaster20.jpg
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/rock10c
{
	qer_editorimage textures/metro/rock10c.jpg

	q3map_nonplanar
	q3map_shadeangle 70

	{
		map $lightmap
	}
	{
		map textures/metro/rock10c.jpg
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

																												// Catacombe & grotte *********

textures/metro/ROCK_005
{
	qer_editorimage textures/metro/ROCK_005.jpg

	q3map_nonplanar
	q3map_shadeangle 70

	{
		map $lightmap
	}
	{
		map textures/metro/ROCK_005.jpg
		rgbgen wave noise .8 .1 .5 10
		blendfunc filter
	}
}

textures/metro/GROUND_008
{
	qer_editorimage textures/metro/GROUND_008.jpg

	q3map_nonplanar
	q3map_shadeangle 70

	{
		map $lightmap
	}
	{
		map textures/metro/GROUND_008.jpg
		rgbgen wave noise .8 .1 .5 10
		blendfunc filter
	}
}

textures/metro/GROUND_008_unp
{
	qer_editorimage textures/metro/GROUND_008.jpg

	{
		map $lightmap
	}
	{
		map textures/metro/GROUND_008.jpg
		blendfunc filter
	}
}

textures/metro/rockwall1
{
	qer_editorimage textures/metro/rockwall1.jpg

	q3map_nonplanar
	q3map_shadeangle 70

	{
		map $lightmap
	}
	{
		map textures/metro/rockwall1.jpg
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/KOsAD_Ossements3
{
	qer_editorimage textures/metro/KOsAD_Ossements3.jpg

	q3map_nonplanar
	q3map_shadeangle 70

	{
		map $lightmap
	}
	{
		map textures/metro/KOsAD_Ossements3.jpg
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/ROCK_008
{
	qer_editorimage textures/metro/ROCK_008.jpg

	q3map_nonplanar
	q3map_shadeangle 70

	{
		map $lightmap
	}
	{
		map textures/metro/ROCK_008.jpg
		rgbgen wave noise .8 .1 .5 10
		blendfunc filter
	}
}

textures/metro/ROCK_003
{
	qer_editorimage textures/metro/ROCK_003.jpg

	q3map_nonplanar
	q3map_shadeangle 70

	{
		map $lightmap
	}
	{
		map textures/metro/ROCK_003.jpg
		rgbgen wave noise .8 .1 .5 10
		blendfunc filter
	}
}
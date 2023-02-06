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

// SKY

textures/metro/skybox
{
	qer_editorimage env/metro/kosad_nuages

	q3map_sunExt .66 .63 .53 100 350 60 2 4
	q3map_skyLight 120 3

	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm nodlight
	surfaceparm sky

	skyparms env/metro/sky 256 -
	nopicmip

	{
		map env/metro/kosad_nuages
		tcmod scale 6 6
		tcmod scroll -.0001 -.005
		rgbgen wave sin .8 .6 0 .002
	}
}

// LIGHTS

textures/metro/sign_rouge
{
	qer_editorimage textures/metro/sign_rouge

	q3map_lightimage textures/metro/sign_rouge
	q3map_surfacelight 200

	surfaceparm nomarks
	surfaceparm nolightmap

	{
		map textures/metro/sign_rouge
	}
}

textures/metro/sign_vert
{
	qer_editorimage textures/metro/sign_vert

	q3map_lightimage textures/metro/sign_vert
	q3map_surfacelight 200

	surfaceparm nomarks
	surfaceparm nolightmap

	{
		map textures/metro/sign_vert
	}
}

textures/metro/sign_25
{
	qer_editorimage textures/metro/sign_25

	surfaceparm nomarks
	surfaceparm nolightmap

	{
		map textures/metro/sign_25
	}
}

textures/metro/kosad_neonwhite
{
	qer_editorimage textures/metro/kosad_neon.blend

	surfaceparm nomarks

	{
		map textures/metro/kosad_neon.blend
	}
	{
		map $lightmap
		blendfunc add
	}
	{
		map textures/metro/kosad_neon
		blendfunc filter
	}
}

textures/metro/kosad_neonbroken
{
	qer_editorimage textures/metro/kosad_neon

	surfaceparm nomarks

	{
		map textures/metro/ss191
		tcmod scale 1 2
		tcmod scroll 0 1
		tcmod turb .5 .3 0 4
	}
	{
		map $lightmap
		blendfunc add
	}
	{
		map textures/metro/kosad_neon
		blendfunc filter
	}
	{
		//style 2
		map textures/metro/kosad_neon.blend
		rgbgen wave triangle 0 .5 0 .8
		blendfunc add
	}
	{
		//style 3
		map textures/metro/kosad_neon.blend
		rgbgen wave triangle 0 .6 .3 .8
		blendfunc add
	}
	{
		//style 4
		map textures/metro/kosad_neon.blend
		rgbgen wave square 0 .5 .4 .6
		blendfunc add
	}
}


textures/metro/kosad_neonorange
{
	qer_editorimage textures/metro/kosad_neonorange.blend

	surfaceparm nomarks

	{
		map textures/metro/kosad_neonorange.blend
	}
	{
		map $lightmap
		blendfunc add
	}
	{
		map textures/metro/kosad_neon
		blendfunc filter
	}
}


textures/metro/kosad_blanc_entree
{
	qer_editorimage textures/metro/kosad_blanc

	q3map_lightimage textures/metro/kosad_blanc
	q3map_backsplash 30 128
	q3map_surfacelight 3000

	surfaceparm nomarks
	surfaceparm nolightmap

	{
		map textures/metro/kosad_blanc
	}
}

textures/metro/kosad_blanc_escalatort
{
	qer_editorimage textures/metro/kosad_blanc

	q3map_lightimage textures/metro/kosad_blanc
	q3map_backsplash 30 64
	q3map_surfacelight 1500

	surfaceparm nomarks
	surfaceparm nolightmap

	{
		map textures/metro/kosad_blanc
	}
}

textures/metro/kosad_blanc_0
{
	qer_editorimage textures/metro/kosad_blanc

	surfaceparm nomarks
	surfaceparm nolightmap

	{
		map textures/metro/kosad_blanc
	}
}

textures/metro/kosad_ocre_5
{
	qer_editorimage textures/metro/kosad_blanc

	q3map_lightimage textures/metro/kosad_blanc
	q3map_lightrgb .9 .8 .6
	q3map_surfacelight 500

	surfaceparm nomarks
	surfaceparm nolightmap

	{
		map textures/metro/kosad_blanc
	}
}

// GFX

textures/metro/kosad_fog
{
	qer_editorimage textures/metro/kosad_fog
	qer_trans .5

	surfaceparm nonsolid
	surfaceparm nolightmap
	surfaceparm trans

	surfaceparm fog
	fogparms ( 0 0 0 ) 1024
}

textures/metro/kosad_lightfog
{
	qer_editorimage textures/metro/kosad_lightfog
	qer_alphafunc greater 0.5

	surfaceparm nonsolid
	surfaceparm nolightmap
	surfaceparm trans

	cull disable

	{
		map textures/metro/kosad_lightfog
		blendfunc blend
	}
}

textures/metro/pasbien
{
	qer_editorimage textures/metro/pasbien
	qer_alphafunc greater 0.5

	{
		map textures/metro/pasbien
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
		map textures/metro/sparkstreak
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	alphaGen vertex
	}
}

textures/metro/zinc_ed
{
	qer_editorimage textures/metro/zinc_ed

	{
		map $lightmap
	}
	{
		map textures/metro/zinc_ed
		blendfunc gl_dst_color gl_src_alpha
		rgbgen identity
		alphagen lightingspecular
	}
}

textures/metro/kosad_cable3
{
	qer_editorimage textures/metro/kosad_cable3

	surfaceparm nonsolid
	surfaceparm trans

	{
		map $lightmap
	}
	{
		map textures/metro/kosad_cable3
		blendfunc filter
	}
}


textures/metro/kosad_mirroir
{
	qer_editorimage textures/metro/kosad_mirroir

	portal

	{
		map textures/metro/kosad_mirroir.blend
		alphafunc lt128
		blendfunc gl_one gl_one_minus_src_alpha
		alphagen portal 512
		depthwrite
	}
	{
		map textures/metro/kosad_mirroir
		blendfunc filter
	}
	{
		map textures/metro/glass03
		tcgen environment
		tcmod scale 8 8
		blendfunc filter
	}

	{
		map textures/metro/kosad_mirroir.blend
		alphafunc ge128
		rgbgen vertex
		depthwrite
	}
}


textures/metro/kosad_flammebougie
{
	qer_editorimage textures/metro/kosad_flammebougie1

	surfaceparm nolightmap
	surfaceparm nomarks
	surfaceparm trans

	cull disable
	deformvertexes autosprite2

	{
		animmap 50 textures/metro/kosad_flammebougie1 textures/metro/kosad_flammebougie2 textures/metro/kosad_flammebougie3 textures/metro/kosad_flammebougie4 textures/metro/kosad_flammebougie5 textures/metro/kosad_flammebougie6 textures/metro/kosad_flammebougie7 textures/metro/kosad_flammebougie8
		blendfunc add
	}
}


textures/metro/kosad_chaine
{
	qer_editorimage textures/metro/kosad_chaine

	cull disable
	deformvertexes autosprite2

	{
		map textures/metro/kosad_chaine
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
	qer_editor textures/metro/red_particle

	{
		map textures/metro/red_particle
		blendfunc blend
	}
}


textures/metro/flare_02
{
	qer_editorimage textures/metro/flare_02

	surfaceparm nolightmap
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm trans

	{
		map textures/metro/flare_02
		blendfunc add
	}
}


textures/metro/kosad_noir
{
	qer_editorimage textures/metro/kosad_noir

	surfaceparm nomarks
	surfaceparm nolightmap

	{
		map textures/metro/kosad_noir
	}
}


textures/metro/navily-tv
{
	qer_editorimage textures/metro/navily-tv

	{
		map textures/metro/navily-tv
	}
	{
		animmap 10 textures/metro/kosad_bruit1 textures/metro/kosad_bruit2 textures/metro/kosad_bruit3 textures/metro/kosad_bruit4 textures/metro/kosad_bruit5
		blendfunc filter
	}

	{
		map textures/metro/navily-tv.alpha
		alphafunc ge128
	}
	{
		map textures/metro/navily-tv
		blendfunc add
	}
	{
		map $lightmap
		blendfunc filter
	}
}


textures/metro/kosad_barre
{
	qer_editorimage textures/metro/kosad_barre
	qer_alphafunc greater .5

	surfaceparm alphashadow
	surfaceparm nomarks
	surfaceparm trans

	cull disable

	{
		map textures/metro/kosad_barre
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}


textures/metro/kosad_cable3_mix
{
	qer_editorimage textures/metro/kosad_cable3
	qer_trans .5

	{
		map textures/metro/kosad_cable3
		blendfunc add
	}
	{
		map $lightmap
		blendfunc filter
	}
}


textures/metro/alumb_t_s
{
	qer_editorimage textures/metro/alumb_t

	{
		map textures/metro/alumb_t
	}
	{
		map textures/metro/blualum_g
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
	qer_editorimage textures/metro/door007
	qer_alphafunc greater .5

	surfaceparm alphashadow
	surfaceparm trans

	{
		map textures/metro/door007
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}




// CARS

textures/metro/cars/austin
{
	qer_editorimage textures/metro/cars/austin
	qer_alphafunc greater .5

	{
		map textures/metro/cars/austin
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
	qer_editorimage textures/metro/cars/2cv
	qer_alphafunc greater .5

	{
		map textures/metro/cars/2cv
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
	qer_editorimage textures/metro/cars/clio
	qer_alphafunc greater .5

	{
		map textures/metro/cars/clio
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
	qer_editorimage textures/metro/cars/espace
	qer_alphafunc greater .5

	{
		map textures/metro/cars/espace
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
	qer_editorimage textures/metro/cars/jumper
	qer_alphafunc greater .5

	{
		map textures/metro/cars/jumper
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
	qer_editorimage textures/metro/cars/kangoo
	qer_alphafunc greater .5

	{
		map textures/metro/cars/kangoo
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
	qer_editorimage textures/metro/cars/twingo
	qer_alphafunc greater .5

	{
		map textures/metro/cars/twingo
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
	qer_editorimage textures/metro/cars/xsara-picasso
	qer_alphafunc greater .5

	{
		map textures/metro/cars/xsara-picasso
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}

// PLANTS
textures/metro/40c_e
{
	qer_editorimage textures/metro/40c_e
	qer_alphafunc greater .5
	surfaceparm alphashadow

	cull disable
	deformvertexes autosprite2

	{
		map textures/metro/40c_e
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
	qer_editorimage textures/metro/hedge_small
	qer_alphafunc greater .5

	{
		map textures/metro/hedge_small
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}

textures/metro/smallleaftree01_256
{
	qer_editorimage textures/metro/smallleaftree01_256
	qer_alphafunc greater .5
	surfaceparm alphashadow

	cull disable
	deformvertexes autosprite2

	{
		map textures/metro/smallleaftree01_256
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}




// MF77

textures/metro/m77-roue
{
	qer_editorimage textures/metro/m77-roue
	qer_alphafunc greater .5

	cull disable

	{
		map textures/metro/m77-roue
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}


textures/metro/m77-ft-in_err
{
	qer_editorimage textures/metro/m77-ft.alpha
	qer_alphafunc greater .5

	{
		map textures/metro/m77-ft.alpha
		alphafunc lt128
		blendfunc filter
		depthwrite
	}
	{
		map textures/metro/metal030
		rgbgen const ( .4 .4 .5 )
		tcgen environment
		blendfunc add
	}

	{
		map textures/metro/m77-ft.alpha
		alphafunc ge128
	}
}


textures/metro/m77-cote-vide
{
	qer_editorimage textures/metro/m77-cote-vide

	{
		map textures/metro/m77-cote-vide
	}
	{
		map $lightmap
		blendfunc filter
	}
	{
		map textures/metro/kosad_noir
		blendfunc add
	}
}


textures/metro/m77-ft
{
	qer_editorimage textures/metro/m77-ft

	{
		map textures/metro/metal030
		tcgen environment
		rgbgen const ( .4 .4 .5 )
		//blendfunc add
	}

	{
		map textures/metro/m77-ft.alpha
		alphafunc ge128
		depthwrite
	}
	{
		map textures/metro/m77-ft
		blendfunc add
	}
	{
		map $lightmap
		blendfunc filter
	}
	{
		map textures/metro/m77-ft.blend
		blendfunc add
	}
}

textures/metro/m77-cote-in_err
{
	qer_editorimage textures/metro/m77-cote.alpha
	qer_alphafunc greater 0.5

	{
		map textures/metro/m77-cote.alpha
		alphafunc lt128
		blendfunc filter
		depthwrite
	}
	{
		map textures/metro/metal030
		rgbgen const ( .4 .4 .5 )
		tcgen environment
		blendfunc add
	}

	{
		map textures/metro/m77-cote.alpha
		alphafunc ge128
	}
}


textures/metro/m77-cote
{
	qer_editorimage textures/metro/m77-cote

	{
		map textures/metro/metal030
		tcgen environment
		rgbgen const ( .4 .4 .5 )
		//blendfunc add
	}

	{
		map textures/metro/m77-cote.alpha
		alphafunc ge128
		depthwrite
	}
	{
		map textures/metro/m77-cote
		blendfunc add
	}
	{
		map $lightmap
		blendfunc filter
	}
}


textures/metro/m77-cote3-in_err
{
	qer_editorimage textures/metro/m77-cote3.alpha
	qer_alphafunc greater 0.5

	{
		map textures/metro/m77-cote3.alpha
		alphafunc lt128
		blendfunc filter
		depthwrite
	}
	{
		map textures/metro/metal030
		rgbgen const ( .4 .4 .5 )
		tcgen environment
		blendfunc add
	}

	{
		map textures/metro/m77-cote3.alpha
		alphafunc ge128
	}
}


textures/metro/m77-cote3
{
	qer_editorimage textures/metro/m77-cote3

	{
		map textures/metro/metal030
		tcgen environment
		rgbgen const ( .4 .4 .5 )
		//blendfunc add
	}

	{
		map textures/metro/m77-cote3.alpha
		alphafunc ge128
		depthwrite
	}
	{
		map textures/metro/m77-cote3
		blendfunc add
	}
	{
		map $lightmap
		blendfunc filter
	}
}



// MATERIAL

textures/metro/glassblock1
{
	qer_editorimage textures/metro/glassblock1
	qer_trans 0.6

	surfaceparm lightfilter
	surfaceparm nomarks
	surfaceparm trans

	{
		map textures/metro/glassblock1
		blendfunc gl_dst_color gl_src_color
	}
	//{
	//	map textures/metro/glass03
	//	blendfunc filter
	//	tcmod scale 4 4
	//	tcgen environment
	//}
}


textures/metro/kosad_window
{
	qer_editorimage textures/metro/kosad_window
	qer_trans 0.6

	surfaceparm nomarks
	surfaceparm trans

	{
		map textures/metro/kosad_window
		blendfunc filter
	}
	//{
	//	map textures/metro/glass03
	//	blendfunc filter
	//	tcmod scale 4 4
	//	tcgen environment
	//}
}




// AD & SIGNAUX

textures/metro/kosad_sortiepicto
{
	qer_editorimage textures/metro/kosad_sortiepicto

	q3map_surfacelight 5000
	q3map_lightrgb .8 .9 .3
	q3map_backsplash 10 8

	surfaceparm nomarks
	surfaceparm nolightmap

	{
		map textures/metro/kosad_sortiepicto
		rgbgen const ( .8 .9 .3 )
	}
}

textures/metro/siel_ratp_met_2
{
	qer_editorimage textures/metro/siel_ratp_met_2

	{
		map textures/metro/siel_ratp_met_2
	}
	{
		map $lightmap
		blendfunc filter
	}

	{
		animmap 1 textures/metro/siel_ratp_met_2a.blend textures/metro/siel_ratp_met_2b.blend
		blendfunc add
	}
}

textures/metro/siel_ratp_met_1la
{
	qer_editorimage textures/metro/siel_ratp_met_1la

	{
		map textures/metro/siel_ratp_met_1la
	}
	{
		map $lightmap
		blendfunc filter
	}

	{
		map textures/metro/siel_ratp_met_1.blend
		blendfunc add
	}
}

textures/metro/siel_ratp_met_1ld
{
	qer_editorimage textures/metro/siel_ratp_met_1ld

	{
		map textures/metro/siel_ratp_met_1ld
	}
	{
		map $lightmap
		blendfunc filter
	}

	{
		map textures/metro/siel_ratp_met_1.blend
		blendfunc add
	}
}


textures/metro/pub/5530784
{
	qer_editorimage textures/metro/pub/5530784

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/5530784
		blendfunc filter
	}
}

textures/metro/pub/5942902
{
	qer_editorimage textures/metro/pub/5942902

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/5942902
		blendfunc filter
	}
}

textures/metro/pub/6083541
{
	qer_editorimage textures/metro/pub/6083541

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/6083541
		blendfunc filter
	}
}

textures/metro/pub/6155183
{
	qer_editorimage textures/metro/pub/6155183

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/6155183
		blendfunc filter
	}
}

textures/metro/pub/6295332
{
	qer_editorimage textures/metro/pub/6295332

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/6295332
		blendfunc filter
	}
}

textures/metro/pub/7950657
{
	qer_editorimage textures/metro/pub/7950657

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/7950657
		blendfunc filter
	}
}

textures/metro/pub/8366227
{
	qer_editorimage textures/metro/pub/8366227

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/8366227
		blendfunc filter
	}
}

textures/metro/pub/9737445
{
	qer_editorimage textures/metro/pub/9737445

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/9737445
		blendfunc filter
	}
}

textures/metro/pub/alwcoke
{
	qer_editorimage textures/metro/pub/alwcoke

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/alwcoke
		blendfunc filter
	}
}

textures/metro/pub/bush_le_tout_puissant
{
	qer_editorimage textures/metro/pub/bush_le_tout_puissant

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/bush_le_tout_puissant
		blendfunc filter
	}
}

textures/metro/pub/dop
{
	qer_editorimage textures/metro/pub/dop

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/dop
		blendfunc filter
	}
}

textures/metro/pub/electionmisstrans
{
	qer_editorimage textures/metro/pub/electionmisstrans

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/electionmisstrans
		blendfunc filter
	}
}

textures/metro/pub/gaymobil1
{
	qer_editorimage textures/metro/pub/gaymobil1

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/gaymobil1
		blendfunc filter
	}
}

textures/metro/pub/imacii
{
	qer_editorimage textures/metro/pub/imacii

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/imacii
		blendfunc filter
	}
}

textures/metro/pub/inspecteurlabavure
{
	qer_editorimage textures/metro/pub/inspecteurlabavure

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/inspecteurlabavure
		blendfunc filter
	}
}

textures/metro/pub/johnnie_walked
{
	qer_editorimage textures/metro/pub/johnnie_walked

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/johnnie_walked
		blendfunc filter
	}
}

textures/metro/pub/la_doublure_bis
{
	qer_editorimage textures/metro/pub/la_doublure_bis

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/la_doublure_bis
		blendfunc filter
	}
}

textures/metro/pub/le_pignon_est_fran_ois
{
	qer_editorimage textures/metro/pub/le_pignon_est_fran_ois

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/le_pignon_est_fran_ois
		blendfunc filter
	}
}

textures/metro/pub/leboulet
{
	qer_editorimage textures/metro/pub/leboulet

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/leboulet
		blendfunc filter
	}
}

textures/metro/pub/lionel_le_people
{
	qer_editorimage textures/metro/pub/lionel_le_people

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/lionel_le_people
		blendfunc filter
	}
}

textures/metro/pub/loreal
{
	qer_editorimage textures/metro/pub/loreal

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/loreal
		blendfunc filter
	}
}

textures/metro/pub/m-royal_canin
{
	qer_editorimage textures/metro/pub/m-royal_canin

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/m-royal_canin
		blendfunc filter
	}
}

textures/metro/pub/m-sorciere_bien_aimee
{
	qer_editorimage textures/metro/pub/m-sorciere_bien_aimee

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/m-sorciere_bien_aimee
		blendfunc filter
	}
}

textures/metro/pub/macdo_cr
{
	qer_editorimage textures/metro/pub/macdo_cr

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/macdo_cr
		blendfunc filter
	}
}

textures/metro/pub/marxix_revolution
{
	qer_editorimage textures/metro/pub/marxix_revolution

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/marxix_revolution
		blendfunc filter
	}
}

textures/metro/pub/menteur_menteur
{
	qer_editorimage textures/metro/pub/menteur_menteur

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/menteur_menteur
		blendfunc filter
	}
}

textures/metro/pub/militaire
{
	qer_editorimage textures/metro/pub/militaire

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/militaire
		blendfunc filter
	}
}

textures/metro/pub/murdersinbagdad
{
	qer_editorimage textures/metro/pub/murdersinbagdad

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/murdersinbagdad
		blendfunc filter
	}
}

textures/metro/pub/nescafe
{
	qer_editorimage textures/metro/pub/nescafe

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/nescafe
		blendfunc filter
	}
}

textures/metro/pub/pas_les_royal
{
	qer_editorimage textures/metro/pub/pas_les_royal

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/pas_les_royal
		blendfunc filter
	}
}

textures/metro/pub/publicite-030
{
	qer_editorimage textures/metro/pub/publicite-030

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/publicite-030
		blendfunc filter
	}
}

textures/metro/pub/rato-plage
{
	qer_editorimage textures/metro/pub/rato-plage

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/rato-plage
		blendfunc filter
	}
}

textures/metro/pub/sarkocop2
{
	qer_editorimage textures/metro/pub/sarkocop2

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/sarkocop2
		blendfunc filter
	}
}

textures/metro/pub/sarkophages
{
	qer_editorimage textures/metro/pub/sarkophages

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/sarkophages
		blendfunc filter
	}
}

textures/metro/pub/truelies
{
	qer_editorimage textures/metro/pub/truelies

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/truelies
		blendfunc filter
	}
}

textures/metro/pub/vivre_ensemble1
{
	qer_editorimage textures/metro/pub/vivre_ensemble1

	{
		map textures/metro/pub/light3.blend
	}
	{
		map textures/metro/pub/vivre_ensemble1
		blendfunc filter
	}
}

textures/metro/kosad_sortiel
{
	qer_editorimage textures/metro/kosad_sortie

	{
		map textures/metro/kosad_sortie.blend
	}
	{
		map $lightmap
		blendfunc add
	}
	{
		map textures/metro/kosad_sortie
		blendfunc filter
	}

}

textures/metro/rfsp-alarme1l
{
	qer_editorimage textures/metro/rfsp-alarme1

	{
		map textures/metro/rfsp-alarme1.blend
	}
	{
		map $lightmap
		blendfunc add
	}
	{
		map textures/metro/rfsp-alarme1
		blendfunc filter
	}
}

textures/metro/rfsp-alarme2l
{
	qer_editorimage textures/metro/rfsp-alarme2

	{
		map textures/metro/rfsp-alarme2.blend
	}
	{
		map $lightmap
		blendfunc add
	}
	{
		map textures/metro/rfsp-alarme2
		blendfunc filter
	}
}

// PARIS *

textures/metro/kosad_eiffeltop
{
	qer_editorimage textures/metro/kosad_eiffeltop
	qer_alphafunc greater .5

	{
		map textures/metro/kosad_eiffeltop
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}


textures/metro/rfsp-paris02a
{
	qer_editorimage textures/metro/rfsp-paris02a
	qer_alphafunc greater .5

	{
		map textures/metro/rfsp-paris02a
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}

textures/metro/rfsp-paris02b
{
	qer_editorimage textures/metro/rfsp-paris02b
	qer_alphafunc greater .5

	{
		map textures/metro/rfsp-paris02b
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}

textures/metro/rfsp-paris03a
{
	qer_editorimage textures/metro/rfsp-paris03a
	qer_alphafunc greater .5

	{
		map textures/metro/rfsp-paris03a
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}

textures/metro/rfsp-paris03b
{
	qer_editorimage textures/metro/rfsp-paris03b
	qer_alphafunc greater .5

	{
		map textures/metro/rfsp-paris03b
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}

// OBJECTS

// Plant_life

models/mapobjects/plant_life/fern_leaf
{
	cull disable
	nopicmip
	surfaceparm alphashadow
	{
		map models/mapobjects/plant_life/fern_leaf
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
		map models/mapobjects/plant_life/palm_leaf
		alphaFunc GE128
		depthWrite
		rgbGen lightingDiffuse
	}
}

// Voute

models/mapobjects/kosad/voute/e7brickfloor01
{
	qer_editorimage models/mapobjects/kosad/voute/e7brickfloor01

	{
		map models/mapobjects/kosad/voute/e7brickfloor01
		rgbgen wave noise .8 .1 .5 10
	}
	{
		map $lightmap
		blendfunc filter
	}
}

// Boite 3

models/mapobjects/kosad/conteneur/object023_3_p
{
	qer_editorimage models/mapobjects/kosad/conteneur/object023_3_p

	{
		map models/mapobjects/kosad/conteneur/object023_3_p
		rgbgen wave noise .8 .1 .5 10
	}
	{
		map $lightmap
		blendfunc filter
	}
}

// Bouteille

models/mapobjects/kosad/bouteille/tour-du-roc
{
	qer_editorimage models/mapobjects/kosad/bouteille/tour-du-roc

	q3map_backshader textures/metro/kosad_grey1

	{
		map models/mapobjects/kosad/bouteille/tour-du-roc
		rgbgen vertex
	}
}

models/mapobjects/kosad/bouteille/gris
{
	qer_editorimage models/mapobjects/kosad/bouteille/gris

	cull disable

	{
		map models/mapobjects/kosad/bouteille/gris
		rgbgen vertex
	}
}

models/mapobjects/kosad/bouteille/verre
{
	qer_editorimage models/mapobjects/kosad/bouteille/verre
	qer_trans .5

	cull disable

	{
		map models/mapobjects/kosad/bouteille/verre
		blendfunc filter
	}
}

// Luminaire

models/mapobjects/kosad/lumiere/glass03
{
	qer_editorimage models/mapobjects/kosad/lumiere/glass03

	{
		map models/mapobjects/kosad/lumiere/glass03
	}
}

models/mapobjects/kosad/lumiere/ocre2
{
	qer_editorimage models/mapobjects/kosad/lumiere/ocre2

	{
		map models/mapobjects/kosad/lumiere/ocre2
		rgbgen const ( .1 .1 .1 )
	}
}

models/mapobjects/kosad/lumiere/dore
{
	qer_editorimage models/mapobjects/kosad/lumiere/dore

	{
		map models/mapobjects/kosad/lumiere/dore
		rgbgen const ( .1 .1 .1 )
	}
}

// Lanterne

models/mapobjects/kosad/lanterne/kosad_bougie2
{
	qer_editorimage models/mapobjects/kosad/lanterne/kosad_bougie2

	{
		map $lightmap
	}
	{
		map models/mapobjects/kosad/lanterne/kosad_bougie2
		blendfunc filter
	}
}

models/mapobjects/kosad/lanterne/kosad_cuivre
{
	qer_editorimage models/mapobjects/kosad/lanterne/kosad_cuivre

	{
		map models/mapobjects/kosad/lanterne/kosad_cuivre
		rgbgen vertex
	}
}

models/mapobjects/kosad/lanterne/glass03
{
	qer_editorimage models/mapobjects/kosad/lanterne/glass03
	qer_trans .5

	{
		map $whiteimage
		rgbgen const ( .1 .06 0 )
		blendfunc add
	}
	{
		map models/mapobjects/kosad/lanterne/glass03
		blendfunc filter
	}
}

models/mapobjects/kosad/lanterne/kosad_flammebougie
{
	q3map_cloneshader textures/metro/kosad_flammebougie

	{
		map $lightmap
		blendfunc filter
	}
}

//lanterne2.md3
models/mapobjects/kosad/lanterne/lumierediffuse8
{
	qer_editorimage models/mapobjects/kosad/lanterne/lumierediffuse8
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
models/mapobjects/kosad/lanterne/lumieresoft
{
	qer_editorimage models/mapobjects/kosad/lanterne/lumieresoft
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
models/mapobjects/kosad/lanterne/lumierediffuse32
{
	qer_editorimage models/mapobjects/kosad/lanterne/lumierediffuse32

	q3map_surfacelight 15000
	q3map_lightrgb 1 .8 .4
	q3map_backsplash 60 32

	{
		map $lightmap
		blendfunc filter
	}
}

// Bougie

//Backlight a effacer !!
models/mapobjects/kosad/bougie/lumiere
{
	qer_editorimage models/mapobjects/kosad/bougie/lumiere
	qer_trans .2

	//q3map_surfacelight 10000
	//q3map_lightrgb .9 .85 .6
	//q3map_backsplash 80 2

	{
		map $lightmap
		blendfunc filter
	}
}

models/mapobjects/kosad/bougie/kosad_flammebougie
{
	q3map_cloneshader textures/metro/kosad_flammebougie

	q3map_surfacelight 50000
	q3map_lightrgb .9 .85 .6
	q3map_backsplash 75 32

	{
		map $lightmap
		blendfunc filter
	}
}

// Lustre

models/mapobjects/kosad/lustre/flame1
{
	q3map_cloneshader textures/metro/torchflame

	{
		map $whiteimage
		blendfunc filter
	}
}

models/mapobjects/kosad/lustre/wood1toplit
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

// Dasprid.shader
// Wall Torch Stuff - Thanks to Sockter
// Edited by KOsAD
textures/metro/torchflame
{
	qer_editorimage textures/metro/flame1
	qer_trans .6

	surfaceparm nolightmap
	surfaceparm nomarks
	surfaceparm trans

	cull disable
	deformvertexes autosprite2

	{
		animMap 10 textures/metro/flame1 textures/metro/flame2 textures/metro/flame3 textures/metro/flame4 textures/metro/flame5 textures/metro/flame6 textures/metro/flame7 textures/metro/flame8
		blendFunc add
		rgbGen wave inverseSawtooth 0 1 0 10
	}
	{
		animMap 10 textures/metro/flame2 textures/metro/flame3 textures/metro/flame4 textures/metro/flame5 textures/metro/flame6 textures/metro/flame7 textures/metro/flame8 textures/metro/flame1
		blendFunc add
		rgbGen wave sawtooth 0 1 0 10
	}
	{
		map textures/metro/flameball
		blendFunc add
		rgbGen wave sin .6 .2 0 .6
	}
}

textures/metro/wood1toplit
{
	qer_editorimage textures/metro/wood1toplit

	{
		map textures/metro/wood1toplit
		rgbGen vertex
	}
	{
		map textures/metro/wood1glow
		blendFunc add
		tcMod rotate -6
		rgbGen wave sin .8 .1 0 .6
	}
	{
		map textures/metro/wood1glow
		blendFunc add
		tcMod rotate 8
	}
}

// NATURE

//vers l'ouest
textures/metro/kosad_eauegoutsl
{
	qer_editorimage textures/metro/water024
	qer_trans .8

	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm water

	cull disable

	{
		map textures/metro/water024
		//tcmod turb .5 .1 .1 .01
		tcmod scroll .1 0
		blendfunc add
	}
	{
		map textures/metro/water024
		//tcmod turb .5 .1 .1 .01
		tcmod scroll .1 0
		blendfunc filter
	}
	{
		map textures/metro/water014
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
textures/metro/kosad_eauegoutsd
{
	qer_editorimage textures/metro/water024
	qer_trans .8

	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm water

	cull disable

	{
		map textures/metro/water024
		tcmod turb .5 .1 .1 .01
		tcmod scroll 0 -.1
		blendfunc add
	}
	{
		map textures/metro/water024
		tcmod turb .5 .1 .1 .01
		tcmod scroll 0 -.1
		blendfunc filter
	}
	{
		map textures/metro/water014
		tcmod turb .5 .05 .05 .05
		tcmod scroll 0 -.05
		blendfunc add
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/metro/kosad_eauegouts
{
	qer_editorimage textures/metro/water024
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
		map textures/metro/water024
		tcmod turb .5 .1 .1 .05
		blendfunc add
	}
	{
		map textures/metro/water024
		tcmod turb .5 .1 .1 .05
		blendfunc filter
	}
	{
		map textures/metro/water014
		tcmod turb .5 .05 .05 .05
		blendfunc add
	}
	{
		map $lightmap
		blendfunc filter
	}
}

// EVILAIR

textures/metro/e6bsegrtflr128
{
	qer_editorimage textures/metro/e6bsegrtflr128
	qer_alphafunc greater 0.5

	surfaceparm trans
	//surfaceparm playerclip
	//surfaceparm nonsolid
	surfaceparm nomarks

	{
		map textures/metro/e6bsegrtflr128
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		depthfunc equal
		blendfunc filter
	}
}

// karith.shader
// by Evillair
textures/metro/e6metalfan_s2
{
	qer_editorimage textures/metro/e6metalfan

	{
		map textures/metro/e6metalfan_blade
		tcmod rotate -5000
	}
	{
		map textures/metro/e6metalfan
		blendfunc blend
	}
	{
		map $lightmap
		blendfunc filter
	}
}

// transparent
textures/metro/e6metalfan_s2_t
{
	qer_editorimage textures/metro/e6metalfan
	qer_alphafunc greater 0.5

	{
		map $whiteimage
		blendfunc gl_dst_color gl_one
	}
	{
		map textures/metro/e6metalfan_blade
		blendfunc blend
		tcmod rotate -5000
	}
	{
		map textures/metro/e6metalfan
		blendfunc blend
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/metro/e6grtflr2bl
{
	qer_editorimage textures/metro/e6grtflr2bl
	qer_alphafunc greater 0.5

	surfaceparm metalsteps
	surfaceparm nomarks
	//surfaceparm playerclip
	surfaceparm trans

	{
		map textures/metro/e6grtflr2bl
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		depthfunc equal
		blendfunc filter
	}
}

textures/metro/ex_floor_grate03_d
{
	qer_editorimage textures/metro/ex_floor_grate03_d
	qer_alphafunc greater 0.5

	surfaceparm metalsteps
	surfaceparm nomarks
	//surfaceparm playerclip
	surfaceparm trans

	cull disable

	{
		map textures/metro/ex_floor_grate03_d
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
	qer_editorimage textures/metro/e7slight

	q3map_lightimage textures/metro/e7slight.blend
	q3map_surfacelight 8000
	q3map_backsplash 30 32

	surfaceparm nomarks

	{
		map $lightmap
	}
	{
		map textures/metro/e7slight
		blendfunc filter
	}
	{
		map textures/metro/e7slight.blend
		blendfunc add
	}
}

textures/metro/e7slight_vents
{
	qer_editorimage textures/metro/e7slight

	q3map_lightimage textures/metro/e7slight.blend
	q3map_surfacelight 3000
	q3map_backsplash 30 32
	q3map_lightrgb .96 .96 .78

	surfaceparm nomarks

	{
		map $lightmap
	}
	{
		map textures/metro/e7slight
		rgbgen const ( .96 .96 .78 )
		blendfunc filter
	}
	{
		map textures/metro/e7slight.blend
		blendfunc add
	}
}

textures/metro/e6horzlight
{
	qer_editorimage textures/metro/e6horzlight

	q3map_lightimage textures/metro/e6horzlight.blend
	q3map_surfacelight 5000
	//q3map_backsplash 30 8

	surfaceparm nomarks

	{
		map $lightmap
	}
	{
		map textures/metro/e6horzlight
		blendfunc filter
	}
	{
		map textures/metro/e6horzlight.blend
		blendfunc add
	}
}

textures/metro/e7mlight
{
	qer_editorimage textures/metro/e7mlight

	q3map_surfacelight 4000
	q3map_lightrgb .9 .8 .6

	surfaceparm nomarks

	{
		map $lightmap
	}
	{
		map textures/metro/e7mlight
		blendfunc filter
	}
	{
		map textures/metro/e7mlight.blend
		rgbgen const ( .9 .8 .6 )
		blendfunc add
	}
}

textures/metro/e6v_light_sm
{
	qer_editorimage textures/metro/e6v_light_sm

	q3map_lightimage textures/metro/e6v_light_sm.blend
	q3map_surfacelight 1000

	surfaceparm nomarks

	{
		map $lightmap
	}
	{
		map textures/metro/e6v_light_sm
		blendfunc filter
	}
	{
		map textures/metro/e6v_light_sm.blend
		blendfunc add
	}
}

textures/metro/e6v_light_sm_10
{
	qer_editorimage textures/metro/e6v_light_sm

	q3map_lightimage textures/metro/e6v_light_sm.blend
	q3map_lightrgb 1 1 1
	q3map_surfacelight 5000
	q3map_backsplash 60 64

	surfaceparm nomarks

	{
		map $lightmap
	}
	{
		map textures/metro/e6v_light_sm
		blendfunc filter
	}
	{
		map textures/metro/e6v_light_sm.blend
		blendfunc add
	}
}

// COMMON

textures/metro/kosad_filtre
{
	qer_editorimage textures/metro/kosad_grey3
	qer_trans 0.5

	surfaceparm lightfilter
	surfaceparm nolightmap
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm trans

	cull disable

	{
		map textures/metro/kosad_grey3
		blendfunc gl_zero gl_one
	}
}


textures/metro/invisible
{
	qer_editorimage textures/metro/invisible
	qer_trans 0.5

	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm trans

	{
		map textures/metro/mirror
		alphafunc ge128
		depthwrite
	}
}

textures/metro/skip
{
	qer_editorimage textures/metro/kosad_skip
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

// FIRE LIGHT NOISE

// Crypte

textures/metro/e7brickfloor01
{
	qer_editorimage textures/metro/e7brickfloor01

	cull disable

	{
		map $lightmap
	}
	{
		map textures/metro/e7brickfloor01
		rgbgen wave noise .8 .1 .5 10
		blendfunc filter
	}
}

textures/metro/misc018
{
	qer_editorimage textures/metro/misc018

	cull disable

	{
		map $lightmap
	}
	{
		map textures/metro/misc018
		rgbgen wave noise .8 .1 .5 10
		blendfunc filter
	}
}

textures/metro/kosad_banniere
{
	qer_editorimage textures/metro/kosad_banniere
	qer_alphafunc greater 0.5

	{
		map textures/metro/kosad_banniere
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

textures/metro/tempgryl
{
	qer_editorimage textures/metro/tempgryl

	{
		map $lightmap
	}
	{
		map textures/metro/tempgryl
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/ornam11b
{
	qer_editorimage textures/metro/ornam11b

	{
		map $lightmap
	}
	{
		map textures/metro/ornam11b
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/ornam11b2
{
	qer_editorimage textures/metro/ornam11b2

	{
		map $lightmap
	}
	{
		map textures/metro/ornam11b2
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/coffre_cote
{
	qer_editorimage textures/metro/coffre_cote

	{
		map $lightmap
	}
	{
		map textures/metro/coffre_cote
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/coffre_face
{
	qer_editorimage textures/metro/coffre_face

	{
		map $lightmap
	}
	{
		map textures/metro/coffre_face
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/imageafter-b19wall031
{
	qer_editorimage textures/metro/imageafter-b19wall031

	{
		map $lightmap
	}
	{
		map textures/metro/imageafter-b19wall031
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/drock074
{
	qer_editorimage textures/metro/drock074

	{
		map $lightmap
	}
	{
		map textures/metro/drock074
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/e7bmtrim
{
	qer_editorimage textures/metro/e7bmtrim

	q3map_nonplanar
	q3map_shadeangle 70

	{
		map $lightmap
	}
	{
		map textures/metro/e7bmtrim
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/e7bricks01
{
	qer_editorimage textures/metro/e7bricks01

	q3map_nonplanar
	q3map_shadeangle 70

	{
		map $lightmap
	}
	{
		map textures/metro/e7bricks01
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/e7sbrickfloor
{
	qer_editorimage textures/metro/e7sbrickfloor

	{
		map $lightmap
	}
	{
		map textures/metro/e7sbrickfloor
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/e7sbrickfloorbig
{
	qer_editorimage textures/metro/e7sbrickfloorbig

	{
		map $lightmap
	}
	{
		map textures/metro/e7sbrickfloorbig
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/kosad_brique1c
{
	qer_editorimage textures/metro/kosad_brique1c

	q3map_nonplanar
	q3map_shadeangle 70

	{
		map $lightmap
	}
	{
		map textures/metro/kosad_brique1c
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/kosad_brique2b
{
	qer_editorimage textures/metro/kosad_brique2b

	{
		map $lightmap
	}
	{
		map textures/metro/kosad_brique2b
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

// Aqueduc

textures/metro/rock29t
{
	qer_editorimage textures/metro/rock29t

	{
		map $lightmap
	}
	{
		map textures/metro/rock29t
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/kosad_brique1b
{
	qer_editorimage textures/metro/kosad_brique1b

	{
		map $lightmap
	}
	{
		map textures/metro/kosad_brique1b
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/kosad_brique2
{
	qer_editorimage textures/metro/kosad_brique2

	{
		map $lightmap
	}
	{
		map textures/metro/kosad_brique2
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/kosad_brique2_nonoise
{
	qer_editorimage textures/metro/kosad_brique2

	{
		map $lightmap
	}
	{
		map textures/metro/kosad_brique2
		blendfunc filter
	}
}

textures/metro/plaster20
{
	qer_editorimage textures/metro/plaster20

	{
		map $lightmap
	}
	{
		map textures/metro/plaster20
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/rock10c
{
	qer_editorimage textures/metro/rock10c

	q3map_nonplanar
	q3map_shadeangle 70

	{
		map $lightmap
	}
	{
		map textures/metro/rock10c
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

// Catacombe & grotte

textures/metro/rock_005
{
	qer_editorimage textures/metro/rock_005

	q3map_nonplanar
	q3map_shadeangle 70

	{
		map $lightmap
	}
	{
		map textures/metro/rock_005
		rgbgen wave noise .8 .1 .5 10
		blendfunc filter
	}
}

textures/metro/ground_008
{
	qer_editorimage textures/metro/ground_008

	q3map_nonplanar
	q3map_shadeangle 70

	{
		map $lightmap
	}
	{
		map textures/metro/ground_008
		rgbgen wave noise .8 .1 .5 10
		blendfunc filter
	}
}

textures/metro/ground_008_unp
{
	qer_editorimage textures/metro/ground_008

	{
		map $lightmap
	}
	{
		map textures/metro/ground_008
		blendfunc filter
	}
}

textures/metro/rockwall1
{
	qer_editorimage textures/metro/rockwall1

	q3map_nonplanar
	q3map_shadeangle 70

	{
		map $lightmap
	}
	{
		map textures/metro/rockwall1
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/kosad_ossements3
{
	qer_editorimage textures/metro/kosad_ossements3

	q3map_nonplanar
	q3map_shadeangle 70

	{
		map $lightmap
	}
	{
		map textures/metro/kosad_ossements3
		rgbgen wave noise .8 .1 .5 10
		blendfunc gl_dst_color gl_src_color
	}
}

textures/metro/rock_008
{
	qer_editorimage textures/metro/rock_008

	q3map_nonplanar
	q3map_shadeangle 70

	{
		map $lightmap
	}
	{
		map textures/metro/rock_008
		rgbgen wave noise .8 .1 .5 10
		blendfunc filter
	}
}

textures/metro/rock_003
{
	qer_editorimage textures/metro/rock_003

	q3map_nonplanar
	q3map_shadeangle 70

	{
		map $lightmap
	}
	{
		map textures/metro/rock_003
		rgbgen wave noise .8 .1 .5 10
		blendfunc filter
	}
}

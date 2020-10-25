project "stb"
	kind "StaticLib"
	language "C"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"stb.c",
		"stb_vorbis.c",

		"stb.h",
		"stb_c_lexer.h",
		"stb_connected_components.h",
		"stb_divide.h",
		"stb_ds.h",
		"stb_dxt.h",
		"stb_easy_font.h",
		"stb_herringbone_wang_tile.h",
		"stb_image.h",
		"stb_image_resize.h",
		"stb_image_write.h",
		"stb_include.h",
		"stb_leakcheck.h",
		"stb_perlin.h",
		"stb_rect_pack.h",
		"stb_sprintf.h",
		"stb_textedit.h",
		"stb_tilemap_editor.h",
		"stb_truetype.h",
		"stb_voxel_render.h",
		"stretchy_buffer.h",
	}

	filter "configurations:Debug"
		optimize "Off"
		symbols "On"
		runtime "Debug"

	filter "configurations:Release"
		optimize "On"
		symbols "Off"
		runtime "Release"
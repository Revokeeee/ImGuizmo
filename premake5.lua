project "ImGuizmo"
    kind "StaticLib"
    language "C++"

    
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
        "ImGuizmo.h",
        "ImGuizmo.cpp",
  }

	filter "system:windows"
        systemversion "latest"
        cppdialect "C++20"
        staticruntime "On"

    filter "system:linux"
        pic "On"
        systemversion "latest"
        cppdialect "C++20"
        staticruntime "On"

    filter "configurations:Debug"
        runtime "Debug"
        optimize "On"

    filter "configurations:Release"
        runtime "Release"
        optimize "On"            

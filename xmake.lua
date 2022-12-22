set_xmakever("2.7.3")

set_project("ProjectName")
set_version("0.0.0")

set_allowedplats("windows", "linux", "macosx")
set_allowedarchs("windows|x64", "linux|x64", "macosx|x86_64")

add_rules("mode.debug", "mode.release")
set_languages("cxx20")
set_optimize("fastest")

local outputdir = "$(mode)-$(os)-$(arch)"

target("ProjectName")
    set_kind("binary")

    set_targetdir("build/" .. outputdir .. "/ProjectName/bin")
    set_objectdir("build/" .. outputdir .. "/ProjectName/obj")

    add_files("ProjectName/src/**.cpp")
    add_headerfiles("ProjectName/include/**.hpp", "ProjectName/include/**.h")
    add_includedirs("ProjectName/include/", {public = true})
set_xmakever("2.9.3")

set_project("ProjectName")
set_version("1.0.0")

set_allowedplats("windows", "linux", "macosx")
set_allowedarchs("windows|x64", "linux|x64", "linux|x86_64", "macosx|x86_64")

add_rules("mode.debug", "mode.release")
set_languages("cxx20")

if is_mode("release") then
  set_optimize("fastest")
else
  add_defines("PN_DEBUG")
end

target("ProjectName")
    set_kind("binary")

    add_files("Source/**.cpp")
    add_headerfiles("Include/**.hpp", "Include/**.h")
    add_includedirs("Include/", {public = true})

load("@rules_cc//cc:defs.bzl", "cc_library")
load("//:sdl_config.bzl", "SDL_LINKOPTS")
load("//:sdl_config.bzl", "SDL_LOCALDEFINES")

cc_library(
	name = "SDL2_hdrs",
	hdrs = glob(["include/**/*.h"]),
	strip_include_prefix = "include",

	local_defines = SDL_LOCALDEFINES,
	visibility = ["//visibility:public"],
)

cc_library(
	name = "SDL2_internal_hdrs",
	hdrs = glob(["src/**/*.h"]),
	deps = [
		"//src/core:hdrs",
		"//src/locale:hdrs",
		"//src/haptic:hdrs",
		"//src/hidapi:hdrs",
		"//src/video:hdrs",
		"//src/thread:hdrs",
		"//src/main:hdrs",
	],

	local_defines = SDL_LOCALDEFINES,
	visibility = ["//visibility:public"],
)

# read this shit: https://github.com/bazelbuild/rules_apple/blob/master/doc/rules-apple.md
#apple_binary(
#	name = "SDL2_mac",
#	binary_type = "dylib",
#	deps = [
#		":SDL2_lib",
#	],
#	platform_type = "macos",
#	visibility = ["//:__subpackages__"],
#)
#
#genrule(
#	name = "SDL2_dylib",
#	srcs = ["SDL2_mac"],
#	outs = ["SDL2.dylib"],
#	cmd = "cp $(location SDL2_mac) $(location SDL2.dylib)",
#)

cc_binary(
	name = "libSDL2.so",
	linkshared = True,
	deps = [
		":SDL2_lib",
	],
	visibility = ["//visibility:public"],
)

cc_binary(
	name = "SDL2.dll",
	linkshared = True,
	deps = [
		":SDL2_lib",
	],
	visibility = ["//visibility:public"],
)

cc_library(
	name = "SDL2_lib",
	srcs = glob(["src/**/*.c"]),

	deps = [
		":SDL2_hdrs",
		":SDL2_internal_hdrs",
		"//src/core:srcs",
		"//src/locale:srcs",
		"//src/haptic:srcs",
		"//src/hidapi:srcs",
		"//src/video:srcs",
		"//src/thread:srcs",
		"//src/main:srcs",
	],

	alwayslink = True,
	linkopts = SDL_LINKOPTS,

	local_defines = SDL_LOCALDEFINES,
	visibility = ["//visibility:public"],
)

cc_library(
	name = "SDL2test",
	hdrs = glob(["include/SDL_test*.h"]),
	srcs = glob(["src/test/**/*.c"]),
	deps = ["//:SDL2_lib"],
	
	local_defines = SDL_LOCALDEFINES,
	visibility = ["//test:__subpackages__"],
)

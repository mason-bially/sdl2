load("//:sdl_config.bzl", "SDL_LOCALDEFINES")

SDL_PLATFORM_HDRS = select({
	"@bazel_tools//src/conditions:windows": glob(["windows/*.h"]),
	"//conditions:default": glob(["linux/*.h"]),
})
SDL_PLATFORM_SRCS = select({
	"@bazel_tools//src/conditions:windows": glob(["windows/*.c"]),
	"//conditions:default": glob(["*.c"], ["linux/*.c"]),
})

cc_library(
    name = "hidapi_hdr",
	hdrs = ["hidapi/hidapi.h"],
	strip_include_prefix = "hidapi",

	local_defines = SDL_LOCALDEFINES,
	visibility = ["//visibility:public"],
)

cc_library(
	name = "srcs",
	srcs = SDL_PLATFORM_SRCS,

	deps = [
		"//:SDL2_hdrs",
		"//:SDL2_internal_hdrs",
		":hidapi_hdr"
	],

	alwayslink = True,
	local_defines = SDL_LOCALDEFINES,
	copts = select({
		"@bazel_tools//src/conditions:windows": ["/std:c++latest"],
		"//conditions:default": [],
	}),
	visibility = ["//visibility:public"],
)

cc_library(
    name = "hdrs",
	hdrs = glob(["*.h", "hidapi/*.h"]) + SDL_PLATFORM_HDRS,

	deps = [
		":hidapi_hdr"
	],

	local_defines = SDL_LOCALDEFINES,
	visibility = ["//visibility:public"],
)

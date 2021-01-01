load("//:sdl_config.bzl", "SDL_LOCALDEFINES")

SDL_PLATFORM_HDRS = select({
	"@bazel_tools//src/conditions:windows": glob(["windows/*.h"]),
	"//conditions:default": glob(["dummy/*.h"]),
})
SDL_PLATFORM_SRCS = select({
	"@bazel_tools//src/conditions:windows": glob(["windows/*.c"]),
	"//conditions:default": glob(["dummy/*.c"]),
})

cc_library(
	name = "srcs",
	srcs = SDL_PLATFORM_SRCS,

	deps = [
		"//:SDL2_hdrs",
		"//:SDL2_internal_hdrs",
	],

	local_defines = SDL_LOCALDEFINES,
	visibility = ["//visibility:public"],
)

cc_library(
    name = "hdrs",
	hdrs = SDL_PLATFORM_HDRS,

	local_defines = SDL_LOCALDEFINES,
	visibility = ["//visibility:public"],
)
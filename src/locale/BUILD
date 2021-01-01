load("//:sdl_config.bzl", "SDL_LOCALDEFINES")

SDL_PLATFORM_HDRS = select({
	"@bazel_tools//src/conditions:windows": glob(["windows/*.h"]),
	"//conditions:default": glob(["unix/*.h"]),
})
SDL_PLATFORM_SRCS = select({
	"@bazel_tools//src/conditions:windows": glob(["windows/*.c"]),
	"//conditions:default": glob(["unix/*.c"]),
})

cc_library(
	name = "srcs",
	srcs = glob(["*.c"]) + SDL_PLATFORM_SRCS,

	deps = [
		"//:SDL2_hdrs",
		"//:SDL2_internal_hdrs",
	],

	alwayslink = True,
	local_defines = SDL_LOCALDEFINES,
	visibility = ["//visibility:public"],
)

cc_library(
    name = "hdrs",
	hdrs = glob(["*.h"]) + SDL_PLATFORM_HDRS,

	local_defines = SDL_LOCALDEFINES,
	visibility = ["//visibility:public"],
)
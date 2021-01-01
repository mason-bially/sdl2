load("//:sdl_config.bzl", "SDL_LOCALDEFINES")

SDL_PLATFORM_HDRS = select({
	"@bazel_tools//src/conditions:windows": glob(["windows/*.h", "generic/*.h"]),
	"//conditions:default": glob(["stdcpp/*.h", "pthread/*.h", "generic/*.h"]),
})
SDL_PLATFORM_SRCS = select({
	"@bazel_tools//src/conditions:windows": glob(["windows/*.c"]) + ["generic/SDL_syscond.c"],
	"//conditions:default": glob(["stdcpp/*.c", "pthread/*.c", "generic/*.c"]),
})

cc_library(
	name = "srcs",
	srcs = glob(["*.c"]) + SDL_PLATFORM_SRCS,

	deps = [
		"//:SDL2_hdrs",
		"//:SDL2_internal_hdrs",
	],

	local_defines = SDL_LOCALDEFINES,
	visibility = ["//visibility:public"],
)

cc_library(
    name = "hdrs",
	hdrs = glob(["*.h"]) + SDL_PLATFORM_HDRS,

	local_defines = SDL_LOCALDEFINES,
	visibility = ["//visibility:public"],
)
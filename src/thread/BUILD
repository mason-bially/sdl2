load("//:sdl_config.bzl", "SDL_LOCALDEFINES")

SDL_PLATFORM_HDRS = select({
	"@bazel_tools//src/conditions:windows": glob(["windows/*.h"]),
	"@bazel_tools//src/conditions:linux_x86_64": glob(["pthread/*.h"]),
	"//conditions:default": glob(["stdcpp/*.h"]),
})
SDL_PLATFORM_SRCS = select({
	"@bazel_tools//src/conditions:windows": glob(["windows/*.c"]),
	"@bazel_tools//src/conditions:linux_x86_64": glob(["pthread/*.c"]),
	"//conditions:default": glob(["stdcpp/*.c"]),
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
	hdrs = glob(["*.h", "generic/*.h"]) + SDL_PLATFORM_HDRS,

	local_defines = SDL_LOCALDEFINES,
	visibility = ["//visibility:public"],
)
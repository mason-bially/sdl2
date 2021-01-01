load("//:sdl_config.bzl", "SDL_LOCALDEFINES")

SDL_PLATFORM_HDRS = select({
	"@bazel_tools//src/conditions:windows": glob(["windows/*.h"]),
	"@bazel_tools//src/conditions:linux_x86_64": glob(["x11/*.h", "wayland/*.h"]),
	"//conditions:default": glob(["x11/*.h"]),
})
SDL_PLATFORM_SRCS = select({
	"@bazel_tools//src/conditions:windows": glob(["windows/*.c"]),
	"@bazel_tools//src/conditions:linux_x86_64": glob(["x11/*.c", "wayland/*.c"]),
	"//conditions:default": glob(["x11/*.c"]),
})

cc_library(
	name = "srcs",
	srcs = glob(["*.c", "dummy/*.c", "yuv2rgb/*.c"]) + SDL_PLATFORM_SRCS,

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
	hdrs = glob(["*.h", "dummy/*.h", "yuv2rgb/*.h", "khronos/**/*.h*"]) + SDL_PLATFORM_HDRS,

	local_defines = SDL_LOCALDEFINES,
	visibility = ["//visibility:public"],
)

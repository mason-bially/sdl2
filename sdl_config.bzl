
SDL_LINKOPTS = select({
	"@bazel_tools//src/conditions:windows": [
		"-DEFAULTLIB:user32",
		"-DEFAULTLIB:gdi32",
		"-DEFAULTLIB:winmm",
		"-DEFAULTLIB:imm32",
		"-DEFAULTLIB:ole32",
		"-DEFAULTLIB:oleaut32",
		"-DEFAULTLIB:version",
		"-DEFAULTLIB:uuid",
		"-DEFAULTLIB:shell32",
		"-DEFAULTLIB:advapi32",
		"-DEFAULTLIB:hid",
		"-DEFAULTLIB:setupapi",
		"-DEFAULTLIB:opengl32",
		"-DEFAULTLIB:kernel32",
	],
    "@bazel_tools//src/conditions:linux_x86_64": [
        "-lpthread",
        "-ldl",
		"-lm",
		"-lrt",
    ],
	"//conditions:default": [

	],
})

SDL_COPTS = select({
	"@bazel_tools//src/conditions:linux_x86_64": [
	],
	"//conditions:default": [],
})

SDL_LOCALDEFINES = [
	#"SDL_VIDEO_RENDER_OGL",
	#"SDL_VIDEO_RENDER_OGL_ES",
	#"SDL_VIDEO_RENDER_OGL_ES2",
] + select({
	"@bazel_tools//src/conditions:windows": [
		#"SDL_THREAD_WINDOWS"
	],
	"@bazel_tools//src/conditions:linux_x86_64": [
		"HAVE_LINUX_VERSION_H",
		"_REENTRANT",
	],
	"//conditions:default": [
		#"SDL_THREAD_STDCPP"
	],
})

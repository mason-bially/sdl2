TEST_DEPS = ["//:SDL2test", "//:SDL2_lib"]

###### SDL tests that auto close
cc_test(
	name = "testatomic",
	srcs = ["testatomic.c"],
	deps = TEST_DEPS,
)

cc_test(
	name = "testdisplayinfo",
	srcs = ["testdisplayinfo.c"],
	deps = TEST_DEPS,
)

cc_test(
	name = "testerror",
	srcs = ["testerror.c"],
	deps = TEST_DEPS,
)

cc_test(
	name = "testthread",
	srcs = ["testthread.c"],
	deps = TEST_DEPS,
)

cc_test(
	name = "testtimer",
	srcs = ["testtimer.c"],
	deps = TEST_DEPS,
)

###### SDL tests that don't auto close
cc_binary(
	name = "automation",
	srcs = glob(["testautomation*.c", "testautomation*.h"]),
	deps = TEST_DEPS
)

cc_binary(
	name = "testaudiocapture",
	srcs = ["testaudiocapture.c"],
	deps = TEST_DEPS,
)

cc_binary(
	name = "testaudiohotplug",
	srcs = ["testaudiohotplug.c"],
	deps = TEST_DEPS,
)

cc_binary(
	name = "testaudioinfo",
	srcs = ["testaudioinfo.c"],
	deps = TEST_DEPS,
)

cc_binary(
	name = "testbounds",
	srcs = ["testbounds.c"],
	deps = TEST_DEPS,
)

cc_binary(
	name = "testcustomcursor",
	srcs = ["testcustomcursor.c"],
	deps = TEST_DEPS,
)

cc_binary(
	name = "testdraw2",
	srcs = ["testdraw2.c"],
	deps = TEST_DEPS,
)

cc_binary(
	name = "testdrawchessboard",
	srcs = ["testdrawchessboard.c"],
	deps = TEST_DEPS,
)

cc_binary(
	name = "testdropfile",
	srcs = ["testdropfile.c"],
	deps = TEST_DEPS,
)

cc_binary(
	name = "testfile",
	srcs = ["testfile.c"],
	deps = TEST_DEPS,
)

cc_binary(
	name = "testfilesystem",
	srcs = ["testfilesystem.c"],
	deps = TEST_DEPS,
)

cc_binary(
	name = "testgamecontroller",
	srcs = ["testgamecontroller.c"],
	deps = TEST_DEPS,
)

cc_binary(
	name = "testgesture",
	srcs = ["testgesture.c"],
	deps = TEST_DEPS,
)

cc_binary(
	name = "testgl2",
	srcs = ["testgl2.c"],
	deps = TEST_DEPS,
	defines = ["HAVE_OPENGL"],
)

cc_binary(
	name = "testgles",
	srcs = ["testgles.c"],
	deps = TEST_DEPS,
)

cc_binary(
	name = "testgles2",
	srcs = ["testgles2.c"],
	deps = TEST_DEPS,
)

cc_binary(
	name = "testhaptic",
	srcs = ["testhaptic.c"],
	deps = TEST_DEPS,
)

cc_binary(
	name = "testhittesting",
	srcs = ["testhittesting.c"],
	deps = TEST_DEPS,
)

cc_binary(
	name = "testhotplug",
	srcs = ["testhotplug.c"],
	deps = TEST_DEPS,
)

cc_binary(
	name = "testiconv",
	srcs = ["testiconv.c"],
	deps = TEST_DEPS,
)

cc_binary(
	name = "testime",
	srcs = ["testime.c"],
	deps = TEST_DEPS,
)

cc_binary(
	name = "testintersections",
	srcs = ["testintersections.c"],
	deps = TEST_DEPS,
)

cc_binary(
	name = "testjoystick",
	srcs = ["testjoystick.c"],
	deps = TEST_DEPS,
)

cc_binary(
	name = "testkeys",
	srcs = ["testkeys.c"],
	deps = TEST_DEPS,
)

cc_binary(
	name = "testloadso",
	srcs = ["testloadso.c"],
	deps = TEST_DEPS,
)

cc_binary(
	name = "testlock",
	srcs = ["testlock.c"],
	deps = TEST_DEPS,
)

cc_binary(
	name = "testmultiaudio",
	srcs = ["testmultiaudio.c"],
	deps = TEST_DEPS,
)

cc_binary(
	name = "testscale",
	srcs = ["testscale.c"],
	deps = TEST_DEPS,
)

cc_binary(
	name = "testviewport",
	srcs = ["testviewport.c"],
	deps = TEST_DEPS,
)

cc_binary(
	name = "testshader",
	srcs = ["testshader.c"],
	deps = TEST_DEPS,
	defines = ["HAVE_OPENGL"],
	data = ["icon.bmp"],
)

cc_binary(
	name = "testvulkan",
	srcs = ["testvulkan.c"],
	deps = TEST_DEPS,
)

cc_binary(
	name = "testver",
	srcs = ["testver.c"],
	deps = TEST_DEPS,
)

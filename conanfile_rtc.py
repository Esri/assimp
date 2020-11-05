from conans import ConanFile


class AssimpConan(ConanFile):
    name = "assimp"
    version = "5.0.1"
    url = "https://github.com/Esri/assimp/tree/runtimecore"
    license = "https://github.com/Esri/assimp/blob/runtimecore/LICENSE"
    description = "Open Asset Import Library (short name: Assimp) is a portable Open Source library to import various well-known 3D model formats in a uniform manner."

    # RTC specific triple
    settings = "platform_architecture_target"

    def package(self):
        base = self.source_folder + "/"
        relative = "3rdparty/assimp/"

        # headers
        self.copy("*.h*", src=base + "include", dst=relative + "include", excludes="*.in")
        self.copy("*.inl", src=base + "include", dst=relative + "include")

        # libraries
        output = "output/" + str(self.settings.platform_architecture_target) + "/staticlib"
        self.copy("*" + self.name + "*", src=base + "../../" + output, dst=output)

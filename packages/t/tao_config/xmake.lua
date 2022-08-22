package("tao_config")
    set_homepage("https://github.com/FakeCore/config")
    set_description("C++ header-only config reader library based on JSON")

    set_urls("https://github.com/FakeCore/config/releases/download/v1.0/tao_config.$(version).tar.gz",{alias="github"})


    add_versions("github:v1.0","69ecff2a98da1040f38dfe785813b6e6a4a1e1cbc205c4524dc15527eee362b1")

    add_deps("cmake")
    on_install("windows", "macosx", "linux", function (package)
        import("package.tools.cmake").install(package,{})
    end)

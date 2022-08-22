package("tao_config")
    set_homepage("https://github.com/FakeCore/config")
    set_description("C++ header-only config reader library based on JSON")

    set_urls("https://github.com/FakeCore/config/releases/download/$(version)/tao_config.$(version).tar.gz",{alias="github"})


    add_versions("github:v1.1","fb1e1b7bb415a852a35939c72c8f8e2bbdd82d0b93c9b3ad44a38042a6178442")


    add_deps("cmake")
    on_install("windows", "macosx", "linux", function (package)
        import("package.tools.cmake").install(package,{})
    end)

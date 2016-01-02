React = require('react')
GenericContent = require('../modules/generic-content')

module.exports = React.createClass
    render: ->
        return (
            <div className="aboutme">
                <GenericContent title="About x32">
                    In <a href="https://sites.google.com/site/x32abi/">short</a>: A 32-bit psABI for x86-64 with 32-bit pointer size.
                    <br /><br />
                    Under x32, there will be new binary libraries for everything, from glibc to your compiled application.
                    By design, x32 applications are supposed to run as fast - if not faster - as native x86-64 applications,
                    but consumes less memory. Therefore virtual machines in the cloud with very expensive memory are ideal for x32.
                </GenericContent>

                <GenericContent title="ArchLinux x32">
                    I am maintaining some common ArchLinux x32 libraries. Thanks to the community of Debian, Gentoo and more, my packages
                    so far compile well. They are available on <a href="https://aur.archlinux.org/packages/?SeB=m&K=fantix">AUR</a>,
                    and <a href="https://wiki.archlinux.org/index.php/Unofficial_user_repositories#archlinuxcn">ArchLinux CN</a> as
                    pre-compiled packages. Other than AUR, the sources can also be found at <a href="https://github.com/archlinux-x32">
                    GitHub</a>.
                    <br /><br />
                    To get your hands dirty, you'll need 64-bit ArchLinux and a kernel that enables <code>CONFIG_X86_X32</code>,
                    for example <a href="https://aur.archlinux.org/packages/linux-pf/">linux-pf</a>. Then the easier way is to
                    install the <code>libx32-*</code> packages from ArchLinux CN repository mentioned above, or you'll need to compile
                    the world from seeds - I'll explain that part in separate page.
                </GenericContent>

                <GenericContent title="Contribute">
                    This project is open for maintainers - please feel free to <a href="mailto:i@fantix.pro">leave me a message</a> if
                    you want to help.
                </GenericContent>
            </div>
        )   

Introduction
-----------


This was originally a git clone of https://github.com/gshakhn/ideauidesigner-maven-plugin that was itself a clone of https://svn.codehaus.org/mojo/trunk/mojo/ideauidesigner-maven-plugin.

I modified it to support IntelliJ 17.x

All credit goes to original authors of the maven plugin and the install-intellij-libs.sh.

Usage
-----

Clone this repository

This plugin is dependent on IntelliJ's javac2.jar, asm-all.jar, and forms_rt.jar. You'll need to install them into your local maven repo by running:

    ./install-intellij-libs.sh <path to IntelliJ 17.x>

You can then install the plugin locally by doing:

    mvn install
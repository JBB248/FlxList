# to.do (Name subject to change)

## Building
<ol>
    <li>Download <a href="https://haxe.org/download/version/4.3.6/">Haxe 4.3.6</a></li>
    <li>Download <a href="git-scm.com">Git</a> and clone this repository using <code>https://github.com/jbb248/to.do.git</code></li>
    <li>In the project root:
        <ul>
            <li>Run <code>haxelib --global install hmm</code> and <code>haxelib --global run hmm setup</code></li>
            <li>Run <code>hmm install</code> to install the haxelib dependencies</li>
            <li>Run <code>haxelib run lime setup flixel</code> and <code>haxelib run lime setup</code> and <code>haxelib run flixel-tools setup</code></li>
        </ul>
    </li>
    <li>
        Configure Lime for Android
        <br/>Paraphrased (<a href="https://lime.openfl.org/docs/advanced-setup/android/">full guide</a>):
        <ul>
            <li>Download JDK-11 (Preferably 11.024.8 from <a href="https://adoptium.net/temurin/releases/?version=11">Eclipse Adoptium</a>. Make sure you download the proper version. Do not download the x86 if you use a x64 device)</li>
            <li>Download <a href="https://developer.android.com/studio">Android Studio</a>. This will include an SDK Manager to install SDK and NDK components.</li>
            <li>In the SDK Platforms tab in Android Studio’s SDK Manager, you should generally be able to install the newest API Level.</li>
            <li>
                In the SDK Tools tab in Android Studio’s SDK Manager, you will need to install a few items:
                <ul>
                    <li>You should generally be able to install the newest Android SDK Build-Tools</li>
                    <li>NDK (Side by side) version r21e (21.4.7075529) is currently recommended for Lime.</li>
                </ul>
            </li>
            <li>
                Run <code>lime setup android</code>. Deny any requests to download extra components. When prompted, enter the path to each the Android SDK, NDK and JDK.
                <br/> SDK common paths:
                <ul>
                    <li>Windows: C:\Users\username\AppData\Local\Android\Sdk</li>
                    <li>macOS: ~/Library/Android/sdk</li>
                    <li>Linux: ~/Android/Sdk</li>
                </ul>
                NDK common paths:
                <ul>
                    <li>Windows: C:\Users\username\AppData\Local\Android\Sdk\ndk\version</li>
                    <li>macOS: ~/Library/Android/sdk/ndk/version</li>
                    <li>Linux: ~/Android/Sdk/ndk/version</li>
                </ul>
                JDK common paths:
                <ul>
                    <li>Windows: Typically, Java is installed somewhere in C:\Program Files. The submodule depends on who it came from. (Oracle places it in C:\Program Files\Java, Adoptium places it in C:\Program Files\Eclipse Adoptium)</li>
                    <li>macOS: Run the /usr/libexec/java_home command in the Terminal app to find the JDK location.</li>
                    <li>Linux: The location depends on your distribution and package manager</li>
                </ul>
            </li>
            <li>If you intend to test with the Android emulator, create an AVD in Android Studio in the Virtual Device Manager.</li>
        </ul>
        <li>Finally: run <code>lime build android</code> to build the project. It will take some time for the inital build to compile.</li>
    </li>
</ol>

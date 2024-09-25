# to.do (Name subject to change)

## Building
<ol>
    <li>Download <a href="https://haxe.org/download/version/4.2.5/">Haxe 4.2.5</a></li>
    <li>Download <a href="git-scm.com">Git</a> and clone this repository using <code>https://github.com/jbb248/FlxList.git</code></li>
    <li>Use <code>haxelib install [library]</code> to download the following:</li>
        <ul>
            <li>lime 8.1.3</li>
            <li>openfl 9.3.4</li>
            <li>flixel 5.8.0</li>
        </ul>
    <li>Run <code>haxelib run lime setup flixel</code> and <code>haxelib run lime setup</code> and <code>haxelib run flixel-tools setup</code></li>
    <li>
        Configure Lime for Android
        <br/>Paraphrased (<a href="https://lime.openfl.org/docs/advanced-setup/android/">full guide</a>):
        <ul>
            <li>Download a JDK (Preferably 11.024.8 from <a href="https://adoptium.net/temurin/releases/?version=11">Eclipse Adoptium</a>. Make sure you download the proper version. Do not download the x86 if you use a x64 device)</li>
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
                Run <code>lime setup android</code>. Deny any requests to download extra components. When prompted, enter the path to where the Android SDK, NDK and JDK.
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
                    <li>Windows: Typically, Java is installed somewhere in C:\Program Files, such as C:\Program Files\Java or C:\Program Files\Temurin or C:\Program Files\Eclipse Adoptium.</li>
                    <li>macOS: Run the /usr/libexec/java_home command in the Terminal app to find the JDK location.</li>
                    <li>Linux: The location depends on your distribution and package manager</li>
                </ul>
            </li>
            <li>If you intend to test with the Android emulator, create an AVD in Android Studio in the Virtual Device Manager.</li>
        </ul>
        <li>Finally: run <code>lime build android</code> to build the project. It will take some time for the inital build to compile.</li>
    </li>
</ol>
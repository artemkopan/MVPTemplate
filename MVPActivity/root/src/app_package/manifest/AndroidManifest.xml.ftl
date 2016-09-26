<manifest xmlns:android="http://schemas.android.com/apk/res/android" >

    <application>
        <activity
            android:name="${packageName}.ui.activity.${activityClass}"
            <#if isPortrait>
            android:screenOrientation="portrait"
            </#if>>
            <#if isLauncher && !(isLibraryProject!false)>
                <intent-filter>
                    <action android:name="android.intent.action.MAIN" />
                    <category android:name="android.intent.category.LAUNCHER" />
                </intent-filter>
            </#if>
        </activity>
    </application>
</manifest>

using Uno;
using Uno.Collections;
using Fuse;
using Android.android.os;
using Android.android.app;
using Android.android.content;
using Android.android.net;
using Android.Base;
using Fuse.Triggers.Actions;

/*
-*- mode: C#;-*-
*/

public class HomeScreen : TriggerAction
{
	protected override void Perform(Node target)
	{
		if defined(Android)
		{
			Intent callIntent = new Intent(Intent.ACTION_MAIN);
			callIntent.addCategory(Intent.CATEGORY_HOME);
			callIntent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);

			var a = Activity.GetAppActivity();
			a.startActivity(callIntent);
		}
		else {
			debug_log "HomeScreen only defined for Android";
		}
	}

}

using Uno;
using Uno.Collections;
using Fuse;
using Fuse.Triggers.Actions;

using Uno.Compiler.ExportTargetInterop;

public enum HomeScreenType
{
	Finish,
	CallIntent,
}

public class HomeScreen : TriggerAction
{

	HomeScreenType _type = HomeScreenType.Finish;
	public HomeScreenType Type
	{
		get { return _type; }
		set
		{
			_type = value;
		}
	}

	protected override void Perform(Node target)
	{
		if defined(Android)
		{
			if (Type == HomeScreenType.Finish) {
				ExitAppFinish();
			}
			else if (Type == HomeScreenType.CallIntent) {
				ExitAppIntent();
			}
		}
		else {
			debug_log "HomeScreen only defined for Android";
		}
	}

	[Foreign(Language.Java)]
	public static extern(Android) void ExitAppFinish()
	@{
		android.app.Activity a = @(Activity.Package).@(Activity.Name).GetRootActivity();
		a.finish();
	@}

	[Foreign(Language.Java)]
	public static extern(Android) void ExitAppIntent()
	@{
		android.content.Intent callIntent = new android.content.Intent(android.content.Intent.ACTION_MAIN);
		callIntent.addCategory(android.content.Intent.CATEGORY_HOME);
		callIntent.setFlags(android.content.Intent.FLAG_ACTIVITY_NEW_TASK);

		android.app.Activity a = @(Activity.Package).@(Activity.Name).GetRootActivity();
		a.startActivity(callIntent);
	@}
}

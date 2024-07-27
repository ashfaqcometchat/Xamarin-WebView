package crc6428c9bb3673845170;


public class JSInterface
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_GetBase64FromBlobData:(Ljava/lang/String;)V:__export__\n" +
			"";
		mono.android.Runtime.register ("XamarinWebView.JSInterface, XamarinWebView", JSInterface.class, __md_methods);
	}


	public JSInterface ()
	{
		super ();
		if (getClass () == JSInterface.class) {
			mono.android.TypeManager.Activate ("XamarinWebView.JSInterface, XamarinWebView", "", this, new java.lang.Object[] {  });
		}
	}

	public JSInterface (android.content.Context p0)
	{
		super ();
		if (getClass () == JSInterface.class) {
			mono.android.TypeManager.Activate ("XamarinWebView.JSInterface, XamarinWebView", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
		}
	}

	@android.webkit.JavascriptInterface

	public void getBase64FromBlobData (java.lang.String p0)
	{
		n_GetBase64FromBlobData (p0);
	}

	private native void n_GetBase64FromBlobData (java.lang.String p0);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}

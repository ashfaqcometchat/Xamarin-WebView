package XamarinWebView;


public class MainActivity_CustomDownloadListener
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		android.webkit.DownloadListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onDownloadStart:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V:GetOnDownloadStart_Ljava_lang_String_Ljava_lang_String_Ljava_lang_String_Ljava_lang_String_JHandler:Android.Webkit.IDownloadListenerInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\n" +
			"";
		mono.android.Runtime.register ("XamarinWebView.MainActivity+CustomDownloadListener, XamarinWebView", MainActivity_CustomDownloadListener.class, __md_methods);
	}


	public MainActivity_CustomDownloadListener ()
	{
		super ();
		if (getClass () == MainActivity_CustomDownloadListener.class) {
			mono.android.TypeManager.Activate ("XamarinWebView.MainActivity+CustomDownloadListener, XamarinWebView", "", this, new java.lang.Object[] {  });
		}
	}

	public MainActivity_CustomDownloadListener (android.content.Context p0, android.webkit.WebView p1)
	{
		super ();
		if (getClass () == MainActivity_CustomDownloadListener.class) {
			mono.android.TypeManager.Activate ("XamarinWebView.MainActivity+CustomDownloadListener, XamarinWebView", "Android.Content.Context, Mono.Android:Android.Webkit.WebView, Mono.Android", this, new java.lang.Object[] { p0, p1 });
		}
	}


	public void onDownloadStart (java.lang.String p0, java.lang.String p1, java.lang.String p2, java.lang.String p3, long p4)
	{
		n_onDownloadStart (p0, p1, p2, p3, p4);
	}

	private native void n_onDownloadStart (java.lang.String p0, java.lang.String p1, java.lang.String p2, java.lang.String p3, long p4);

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

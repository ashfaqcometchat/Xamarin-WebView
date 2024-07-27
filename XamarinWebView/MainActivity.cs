using Android.App;
using Android.Content;
using Android.OS;
using Android.Webkit;
using Android.Widget;
using System;
using System.Text.RegularExpressions;

namespace XamarinWebView
{
    [Activity(Name = "XamarinWebView.MainActivity", Label = "XamarinWebView", MainLauncher = true)]
    public class MainActivity : Activity
    {
        WebView webView;
        JSInterface jsInterface;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.Main);

            webView = FindViewById<WebView>(Resource.Id.webView);
            jsInterface = new JSInterface(this);

            if (webView != null)
            {
                webView.Settings.JavaScriptEnabled = true;
                webView.SetDownloadListener(new CustomDownloadListener(this, webView));
                webView.AddJavascriptInterface(jsInterface, "Android");
                webView.SetWebViewClient(new WebViewClient());
                webView.LoadUrl("https://66a0cbf3d54a9cede2938219--funny-sable-737e96.netlify.app/login");
            }
            else
            {
                Toast.MakeText(this, "WebView not found!", ToastLength.Short).Show();
            }
        }

        public class CustomDownloadListener : Java.Lang.Object, IDownloadListener
        {
            readonly Context context;
            readonly WebView webView;

            public CustomDownloadListener(Context context, WebView webView)
            {
                this.context = context;
                this.webView = webView;
            }

            public void OnDownloadStart(string url, string userAgent, string contentDisposition, string mimetype, long contentLength)
            {
                if (url != null)
                {
                    if (url.StartsWith("blob:"))
                    {
                        webView.EvaluateJavascript(JSInterface.GetBase64StringFromBlobUrl(url, mimetype ?? "application/octet-stream"), null);
                    }
                    else
                    {
                        try
                        {
                            var uri = Android.Net.Uri.Parse(url);
                            var request = new DownloadManager.Request(uri)
                                .SetTitle("Downloading file...")
                                .SetDescription("Downloading file from web")
                                .SetMimeType(mimetype ?? "application/octet-stream")
                                .SetNotificationVisibility(DownloadVisibility.VisibleNotifyCompleted)
                                .SetDestinationInExternalPublicDir(Android.OS.Environment.DirectoryDownloads, GetFileName(contentDisposition));

                            var downloadManager = (DownloadManager)context.GetSystemService(Context.DownloadService);
                            downloadManager.Enqueue(request);

                            Toast.MakeText(context, "Download started", ToastLength.Short).Show();
                        }
                        catch (Exception)
                        {
                            Toast.MakeText(context, "Failed to handle download", ToastLength.Short).Show();
                        }
                    }
                }
                else
                {
                    Toast.MakeText(context, "Download URL is null", ToastLength.Short).Show();
                }
            }

            string GetFileName(string contentDisposition)
            {
                if (string.IsNullOrEmpty(contentDisposition)) return "downloadedfile";
                var match = Regex.Match(contentDisposition, "filename=\"([^\"]*)\"");
                return match.Success ? match.Groups[1].Value : "downloadedfile";
            }
        }
    }
}
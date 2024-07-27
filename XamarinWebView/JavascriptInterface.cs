using Android.Content;
using Android.Webkit;
using Android.OS;
using System.Text.RegularExpressions;
using Java.Interop;
using Android.App;
using Android.Widget;
using System;
using System.IO;
using Java.IO;
using AndroidX.Core.Content;
using AndroidX.Core.App;
using Android.Util;

namespace XamarinWebView
{
    public class JSInterface : Java.Lang.Object
    {
        Context context;

        public JSInterface(Context context)
        {
            this.context = context;
        }

        [JavascriptInterface]
        [Export("getBase64FromBlobData")]
        public void GetBase64FromBlobData(string base64Data)
        {
            ConvertBase64StringToFileAndStoreIt(base64Data);
        }

        public static string GetBase64StringFromBlobUrl(string blobUrl, string mimeType)
        {
            if (blobUrl.StartsWith("blob:"))
            {
                return $"javascript: var xhr = new XMLHttpRequest();" +
                       $"xhr.open('GET', '{blobUrl}', true);" +
                       $"xhr.setRequestHeader('Content-type','{mimeType};charset=UTF-8');" +
                       $"xhr.responseType = 'blob';" +
                       $"xhr.onload = function() {{" +
                       $"    if (this.status == 200) {{" +
                       $"        var blobFile = this.response;" +
                       $"        var reader = new FileReader();" +
                       $"        reader.readAsDataURL(blobFile);" +
                       $"        reader.onloadend = function() {{" +
                       $"            var base64data = reader.result;" +
                       $"            Android.getBase64FromBlobData(base64data);" +
                       $"        }};" +
                       $"    }}" +
                       $"}};" +
                       $"xhr.send();";
            }
            return "javascript: console.log('It is not a Blob URL');";
        }

        void ConvertBase64StringToFileAndStoreIt(string base64Data)
        {
            try
            {
                string currentDateTime = DateTime.Now.ToString("yyyyMMdd_HHmmss");
                string fileMimeType = GetMimeType(base64Data);
                string extension = MimeTypeMap.Singleton.GetExtensionFromMimeType(fileMimeType);
                string fileName = $"{currentDateTime}.{extension}";
                string downloadsPath = Android.OS.Environment.GetExternalStoragePublicDirectory(Android.OS.Environment.DirectoryDownloads).AbsolutePath;
                string filePath = Path.Combine(downloadsPath, fileName);

                byte[] data = Convert.FromBase64String(base64Data.Substring(base64Data.IndexOf(",") + 1));

                System.IO.File.WriteAllBytes(filePath, data);

                if (System.IO.File.Exists(filePath))
                {
                    ShowDownloadNotification(fileName, filePath, fileMimeType);
                    Toast.MakeText(context, "File downloaded!", ToastLength.Short).Show();
                }
                else
                {
                    Toast.MakeText(context, "Failed to download the file.", ToastLength.Short).Show();
                }
            }
            catch (Exception ex)
            {
                Toast.MakeText(context, $"Failed to download the file: {ex.Message}", ToastLength.Short).Show();
                Log.Debug("JavaScriptInterface", $"{ex.Message}");
            }
        }

        string GetMimeType(string base64Data)
        {
            var match = Regex.Match(base64Data, @"^data:(?<type>.+?);base64,");
            return match.Success ? match.Groups["type"].Value : "application/octet-stream";
        }

        void ShowDownloadNotification(string fileName, string filePath, string mimeType)
        {
            var intent = new Intent(Intent.ActionView);
            var uri = FileProvider.GetUriForFile(context, $"{context.PackageName}.provider", new Java.IO.File(filePath));
            intent.SetDataAndType(uri, mimeType);
            intent.AddFlags(ActivityFlags.GrantReadUriPermission);

            var pendingIntent = PendingIntent.GetActivity(context, 0, intent, PendingIntentFlags.UpdateCurrent | PendingIntentFlags.Immutable);

            var notificationBuilder = new NotificationCompat.Builder(context, "MYCHANNEL")
                .SetSmallIcon(Android.Resource.Drawable.StatSysDownloadDone)
                .SetContentTitle("File Downloaded")
                .SetContentText(fileName)
                .SetContentIntent(pendingIntent)
                .SetAutoCancel(true);

            var notificationManager = NotificationManagerCompat.From(context);
            if (Build.VERSION.SdkInt >= BuildVersionCodes.O)
            {
                var channel = new NotificationChannel("MYCHANNEL", "Downloads", NotificationImportance.Low);
                notificationManager.CreateNotificationChannel(channel);
            }
            notificationManager.Notify(1, notificationBuilder.Build());
        }
    }
}
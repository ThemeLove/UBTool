.class public Lcom/mchsdk/paysdk/webview/MCPayWebView$b;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/webview/MCPayWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/webview/MCPayWebView;


# direct methods
.method public constructor <init>(Lcom/mchsdk/paysdk/webview/MCPayWebView;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/webview/MCPayWebView$b;->a:Lcom/mchsdk/paysdk/webview/MCPayWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

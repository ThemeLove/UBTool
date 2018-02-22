.class public Lcom/mchsdk/paysdk/webview/MCPayWebView$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/webview/MCPayWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/mchsdk/paysdk/webview/MCPayWebView;


# direct methods
.method public constructor <init>(Lcom/mchsdk/paysdk/webview/MCPayWebView;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/mchsdk/paysdk/webview/MCPayWebView$a;->b:Lcom/mchsdk/paysdk/webview/MCPayWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/mchsdk/paysdk/webview/MCPayWebView$a;->a:Landroid/content/Context;

    return-void
.end method

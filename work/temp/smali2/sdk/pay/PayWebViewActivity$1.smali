.class Lsdk/pay/PayWebViewActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsdk/pay/PayWebViewActivity;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lsdk/pay/PayWebViewActivity;


# direct methods
.method constructor <init>(Lsdk/pay/PayWebViewActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lsdk/pay/PayWebViewActivity$1;->b:Lsdk/pay/PayWebViewActivity;

    iput-object p2, p0, Lsdk/pay/PayWebViewActivity$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    new-instance v0, Lsdk/pay/e;

    iget-object v1, p0, Lsdk/pay/PayWebViewActivity$1;->b:Lsdk/pay/PayWebViewActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsdk/pay/e;-><init>(Landroid/content/Context;Lsdk/pay/d/e;)V

    iget-object v1, p0, Lsdk/pay/PayWebViewActivity$1;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsdk/pay/e;->a(Ljava/lang/String;Z)V

    return-void
.end method

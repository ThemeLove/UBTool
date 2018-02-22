.class Lsdk/pay/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lsdk/pay/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsdk/pay/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lsdk/pay/e;


# direct methods
.method constructor <init>(Lsdk/pay/e;)V
    .registers 2

    iput-object p1, p0, Lsdk/pay/e$1;->a:Lsdk/pay/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lsdk/pay/e$1;->a:Lsdk/pay/e;

    invoke-virtual {v0}, Lsdk/pay/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lsdk/pay/e$1;->a:Lsdk/pay/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsdk/pay/e;->clearCache(Z)V

    return-void
.end method

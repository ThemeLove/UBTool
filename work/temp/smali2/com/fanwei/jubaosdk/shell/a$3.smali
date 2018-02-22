.class Lcom/fanwei/jubaosdk/shell/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fanwei/jubaosdk/shell/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/fanwei/jubaosdk/shell/a;


# direct methods
.method constructor <init>(Lcom/fanwei/jubaosdk/shell/a;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/a$3;->b:Lcom/fanwei/jubaosdk/shell/a;

    iput-object p2, p0, Lcom/fanwei/jubaosdk/shell/a$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$3;->b:Lcom/fanwei/jubaosdk/shell/a;

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/a$3;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/fanwei/jubaosdk/shell/a;->a(Lcom/fanwei/jubaosdk/shell/a;Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$3;->b:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->g(Lcom/fanwei/jubaosdk/shell/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "assets\u76ee\u5f55\u4e0b\u6ca1\u6709plugin_cashier_v4.7.apk"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/fanwei/jubaosdk/common/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_d
.end method

.method public onFailed(Ljava/lang/Throwable;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "copy file from assets failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$3;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/fanwei/bluearty/pluginmgr/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/fanwei/jubaosdk/shell/a$3;->a(Ljava/lang/Boolean;)V

    return-void
.end method

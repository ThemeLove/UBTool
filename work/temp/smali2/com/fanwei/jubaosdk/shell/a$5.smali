.class Lcom/fanwei/jubaosdk/shell/a$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fanwei/jubaosdk/common/http/JSONCall$JSONCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fanwei/jubaosdk/shell/a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fanwei/jubaosdk/common/http/JSONCall$JSONCallback",
        "<",
        "Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fanwei/jubaosdk/shell/a;


# direct methods
.method constructor <init>(Lcom/fanwei/jubaosdk/shell/a;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/a$5;->a:Lcom/fanwei/jubaosdk/shell/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;)V
    .registers 6

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->getNeedUpdate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->getUpdateUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_16
    const-string v0, "check for update success response params wrong"

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    sget-boolean v0, Lcom/fanwei/jubaosdk/shell/internal/a;->d:Z

    if-eqz v0, :cond_43

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check for update sCheckForUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/fanwei/jubaosdk/shell/internal/a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$5;->a:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->f(Lcom/fanwei/jubaosdk/shell/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    sget-wide v2, Lcom/fanwei/jubaosdk/shell/internal/a;->e:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_43
    :goto_43
    return-void

    :cond_44
    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$5;->a:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0, p1}, Lcom/fanwei/jubaosdk/shell/a;->a(Lcom/fanwei/jubaosdk/shell/a;Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;)Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;

    invoke-virtual {p1}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->getResumeFromBreak()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_59

    invoke-virtual {p1}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->getResumeFromBreak()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/fanwei/jubaosdk/shell/internal/a;->c:Z

    :cond_59
    invoke-virtual {p1}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->getCheckForUpdate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_69

    invoke-virtual {p1}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->getCheckForUpdate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/fanwei/jubaosdk/shell/internal/a;->d:Z

    :cond_69
    invoke-virtual {p1}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->getCheckForUpdateInterval()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_79

    invoke-virtual {p1}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->getCheckForUpdateInterval()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/fanwei/jubaosdk/shell/internal/a;->e:J

    :cond_79
    invoke-virtual {p1}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->getCheckForUpdateIntervalShort()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_89

    invoke-virtual {p1}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->getCheckForUpdateIntervalShort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/fanwei/jubaosdk/shell/internal/a;->f:J

    :cond_89
    invoke-virtual {p1}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->getCheckNetworkInterval()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_99

    invoke-virtual {p1}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->getCheckNetworkInterval()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/fanwei/jubaosdk/shell/internal/a;->g:J

    :cond_99
    invoke-virtual {p1}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->getDownloadMaxCount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a9

    invoke-virtual {p1}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->getDownloadMaxCount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/fanwei/jubaosdk/shell/internal/a;->h:I

    :cond_a9
    invoke-virtual {p1}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->getDownloadTimeOut()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b9

    invoke-virtual {p1}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->getDownloadTimeOut()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/fanwei/jubaosdk/shell/internal/a;->i:I

    :cond_b9
    invoke-virtual {p1}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->getRequestTimeOut()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c9

    invoke-virtual {p1}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->getRequestTimeOut()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/fanwei/jubaosdk/shell/internal/a;->j:I

    :cond_c9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check for update success sCheckForUpdate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/fanwei/jubaosdk/shell/internal/a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$5;->a:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->f(Lcom/fanwei/jubaosdk/shell/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_43
.end method

.method public onFailed(Ljava/lang/Throwable;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check for update failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$5;->a:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->i(Lcom/fanwei/jubaosdk/shell/a;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CheckForUpdate throws a exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$5;->a:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->f(Lcom/fanwei/jubaosdk/shell/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;

    invoke-virtual {p0, p1}, Lcom/fanwei/jubaosdk/shell/a$5;->a(Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;)V

    return-void
.end method

.method public responseClassType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;

    return-object v0
.end method

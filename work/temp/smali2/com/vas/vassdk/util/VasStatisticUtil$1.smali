.class Lcom/vas/vassdk/util/VasStatisticUtil$1;
.super Ljava/lang/Object;
.source "VasStatisticUtil.java"

# interfaces
.implements Lcom/yolanda/nohttp/rest/OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vas/vassdk/util/VasStatisticUtil;->sendStatistic(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yolanda/nohttp/rest/OnResponseListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;IJ)V
    .registers 8

    .prologue
    .line 179
    return-void
.end method

.method public onFinish(I)V
    .registers 2

    .prologue
    .line 185
    return-void
.end method

.method public onStart(I)V
    .registers 2

    .prologue
    .line 191
    return-void
.end method

.method public onSucceed(ILcom/yolanda/nohttp/rest/Response;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yolanda/nohttp/rest/Response",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    invoke-interface {p2}, Lcom/yolanda/nohttp/rest/Response;->getHeaders()Lcom/yolanda/nohttp/Headers;

    move-result-object v0

    invoke-interface {v0}, Lcom/yolanda/nohttp/Headers;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_17

    .line 198
    invoke-interface {p2}, Lcom/yolanda/nohttp/rest/Response;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    const-string v1, "VasStatusticUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_17
    return-void
.end method

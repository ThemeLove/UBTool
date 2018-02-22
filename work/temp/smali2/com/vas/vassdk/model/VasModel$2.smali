.class Lcom/vas/vassdk/model/VasModel$2;
.super Ljava/lang/Object;
.source "VasModel.java"

# interfaces
.implements Lcom/yolanda/nohttp/rest/OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vas/vassdk/model/VasModel;->vasLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vas/vassdk/apiadapter/VasLoginListener;)V
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


# instance fields
.field final synthetic a:Lcom/vas/vassdk/model/VasModel;

.field private final synthetic b:Lcom/vas/vassdk/apiadapter/VasLoginListener;


# direct methods
.method constructor <init>(Lcom/vas/vassdk/model/VasModel;Lcom/vas/vassdk/apiadapter/VasLoginListener;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vas/vassdk/model/VasModel$2;->a:Lcom/vas/vassdk/model/VasModel;

    iput-object p2, p0, Lcom/vas/vassdk/model/VasModel$2;->b:Lcom/vas/vassdk/apiadapter/VasLoginListener;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;IJ)V
    .registers 11

    .prologue
    .line 203
    const-string v0, "vassdk-login"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fail---exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/vas/vassdk/model/VasModel$2;->b:Lcom/vas/vassdk/apiadapter/VasLoginListener;

    if-eqz v0, :cond_23

    .line 205
    iget-object v0, p0, Lcom/vas/vassdk/model/VasModel$2;->b:Lcom/vas/vassdk/apiadapter/VasLoginListener;

    const-string v1, "\u7f51\u7edc\u95ee\u9898\uff01"

    invoke-interface {v0, v1}, Lcom/vas/vassdk/apiadapter/VasLoginListener;->loginFail(Ljava/lang/String;)V

    .line 207
    :cond_23
    return-void
.end method

.method public onFinish(I)V
    .registers 2

    .prologue
    .line 213
    return-void
.end method

.method public onStart(I)V
    .registers 2

    .prologue
    .line 218
    return-void
.end method

.method public onSucceed(ILcom/yolanda/nohttp/rest/Response;)V
    .registers 6
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
    .line 223
    invoke-interface {p2}, Lcom/yolanda/nohttp/rest/Response;->getHeaders()Lcom/yolanda/nohttp/Headers;

    move-result-object v0

    invoke-interface {v0}, Lcom/yolanda/nohttp/Headers;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_34

    .line 225
    const-string v1, "vassdk-login"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "response(code==200):"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/yolanda/nohttp/rest/Response;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-interface {p2}, Lcom/yolanda/nohttp/rest/Response;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 227
    iget-object v1, p0, Lcom/vas/vassdk/model/VasModel$2;->a:Lcom/vas/vassdk/model/VasModel;

    iget-object v2, p0, Lcom/vas/vassdk/model/VasModel$2;->b:Lcom/vas/vassdk/apiadapter/VasLoginListener;

    invoke-static {v1, v0, v2}, Lcom/vas/vassdk/model/VasModel;->a(Lcom/vas/vassdk/model/VasModel;Ljava/lang/String;Lcom/vas/vassdk/apiadapter/VasLoginListener;)V

    .line 237
    :cond_33
    :goto_33
    return-void

    .line 231
    :cond_34
    const-string v0, "vassdk-login"

    const-string v1, "fail---response(code!=200)"

    invoke-static {v0, v1}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v0, "vassdk-login"

    const-string v1, "fail---response(code!=200)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/vas/vassdk/model/VasModel$2;->b:Lcom/vas/vassdk/apiadapter/VasLoginListener;

    if-eqz v0, :cond_33

    .line 234
    iget-object v0, p0, Lcom/vas/vassdk/model/VasModel$2;->b:Lcom/vas/vassdk/apiadapter/VasLoginListener;

    const-string v1, "vassdk\u767b\u5f55\u5931\u8d25!---response(code!=200)"

    invoke-interface {v0, v1}, Lcom/vas/vassdk/apiadapter/VasLoginListener;->loginFail(Ljava/lang/String;)V

    goto :goto_33
.end method

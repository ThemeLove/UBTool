.class Lcom/vas/vassdk/model/VasModel$3;
.super Ljava/lang/Object;
.source "VasModel.java"

# interfaces
.implements Lcom/yolanda/nohttp/rest/OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vas/vassdk/model/VasModel;->vasPay(Ljava/lang/String;Ljava/lang/String;Lcom/vas/vassdk/bean/VasOrderInfo;Lcom/vas/vassdk/bean/VasRoleInfo;Lcom/vas/vassdk/apiadapter/VasPayListener;)V
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

.field private final synthetic b:Lcom/vas/vassdk/apiadapter/VasPayListener;

.field private final synthetic c:Lcom/vas/vassdk/bean/VasOrderInfo;

.field private final synthetic d:Lcom/vas/vassdk/bean/VasRoleInfo;


# direct methods
.method constructor <init>(Lcom/vas/vassdk/model/VasModel;Lcom/vas/vassdk/apiadapter/VasPayListener;Lcom/vas/vassdk/bean/VasOrderInfo;Lcom/vas/vassdk/bean/VasRoleInfo;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vas/vassdk/model/VasModel$3;->a:Lcom/vas/vassdk/model/VasModel;

    iput-object p2, p0, Lcom/vas/vassdk/model/VasModel$3;->b:Lcom/vas/vassdk/apiadapter/VasPayListener;

    iput-object p3, p0, Lcom/vas/vassdk/model/VasModel$3;->c:Lcom/vas/vassdk/bean/VasOrderInfo;

    iput-object p4, p0, Lcom/vas/vassdk/model/VasModel$3;->d:Lcom/vas/vassdk/bean/VasRoleInfo;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;IJ)V
    .registers 11

    .prologue
    .line 324
    const-string v0, "vassdk-pay"

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

    .line 325
    iget-object v0, p0, Lcom/vas/vassdk/model/VasModel$3;->b:Lcom/vas/vassdk/apiadapter/VasPayListener;

    if-eqz v0, :cond_23

    .line 326
    iget-object v0, p0, Lcom/vas/vassdk/model/VasModel$3;->b:Lcom/vas/vassdk/apiadapter/VasPayListener;

    const-string v1, "\u7f51\u7edc\u95ee\u9898\uff01"

    invoke-interface {v0, v1}, Lcom/vas/vassdk/apiadapter/VasPayListener;->onFail(Ljava/lang/String;)V

    .line 328
    :cond_23
    return-void
.end method

.method public onFinish(I)V
    .registers 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/vas/vassdk/model/VasModel$3;->a:Lcom/vas/vassdk/model/VasModel;

    invoke-static {v0}, Lcom/vas/vassdk/model/VasModel;->a(Lcom/vas/vassdk/model/VasModel;)Lcom/vas/vassdk/VasLoadingDialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 335
    iget-object v0, p0, Lcom/vas/vassdk/model/VasModel$3;->a:Lcom/vas/vassdk/model/VasModel;

    invoke-static {v0}, Lcom/vas/vassdk/model/VasModel;->a(Lcom/vas/vassdk/model/VasModel;)Lcom/vas/vassdk/VasLoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vas/vassdk/VasLoadingDialog;->dismiss()V

    .line 337
    :cond_11
    return-void
.end method

.method public onStart(I)V
    .registers 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/vas/vassdk/model/VasModel$3;->a:Lcom/vas/vassdk/model/VasModel;

    invoke-static {v0}, Lcom/vas/vassdk/model/VasModel;->a(Lcom/vas/vassdk/model/VasModel;)Lcom/vas/vassdk/VasLoadingDialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 344
    iget-object v0, p0, Lcom/vas/vassdk/model/VasModel$3;->a:Lcom/vas/vassdk/model/VasModel;

    invoke-static {v0}, Lcom/vas/vassdk/model/VasModel;->a(Lcom/vas/vassdk/model/VasModel;)Lcom/vas/vassdk/VasLoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vas/vassdk/VasLoadingDialog;->show()V

    .line 346
    :cond_11
    return-void
.end method

.method public onSucceed(ILcom/yolanda/nohttp/rest/Response;)V
    .registers 8
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
    .line 351
    invoke-interface {p2}, Lcom/yolanda/nohttp/rest/Response;->getHeaders()Lcom/yolanda/nohttp/Headers;

    move-result-object v0

    invoke-interface {v0}, Lcom/yolanda/nohttp/Headers;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_32

    .line 353
    invoke-interface {p2}, Lcom/yolanda/nohttp/rest/Response;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 354
    const-string v1, "vassdk-pay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "response(code==200):"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v1, p0, Lcom/vas/vassdk/model/VasModel$3;->a:Lcom/vas/vassdk/model/VasModel;

    iget-object v2, p0, Lcom/vas/vassdk/model/VasModel$3;->c:Lcom/vas/vassdk/bean/VasOrderInfo;

    iget-object v3, p0, Lcom/vas/vassdk/model/VasModel$3;->d:Lcom/vas/vassdk/bean/VasRoleInfo;

    iget-object v4, p0, Lcom/vas/vassdk/model/VasModel$3;->b:Lcom/vas/vassdk/apiadapter/VasPayListener;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/vas/vassdk/model/VasModel;->a(Lcom/vas/vassdk/model/VasModel;Ljava/lang/String;Lcom/vas/vassdk/bean/VasOrderInfo;Lcom/vas/vassdk/bean/VasRoleInfo;Lcom/vas/vassdk/apiadapter/VasPayListener;)V

    .line 364
    :cond_31
    :goto_31
    return-void

    .line 359
    :cond_32
    const-string v0, "vassdk-pay"

    const-string v1, "fail---response(code!=200)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/vas/vassdk/model/VasModel$3;->b:Lcom/vas/vassdk/apiadapter/VasPayListener;

    if-eqz v0, :cond_31

    .line 361
    iget-object v0, p0, Lcom/vas/vassdk/model/VasModel$3;->b:Lcom/vas/vassdk/apiadapter/VasPayListener;

    const-string v1, "vassdk\u521d\u59cb\u5316\u5931\u8d25\uff01\uff1aresponse(code!=200)"

    invoke-interface {v0, v1}, Lcom/vas/vassdk/apiadapter/VasPayListener;->onFail(Ljava/lang/String;)V

    goto :goto_31
.end method

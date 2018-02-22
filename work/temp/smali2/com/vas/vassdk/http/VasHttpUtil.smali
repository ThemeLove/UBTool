.class public Lcom/vas/vassdk/http/VasHttpUtil;
.super Ljava/lang/Object;
.source "VasHttpUtil.java"


# static fields
.field private static volatile a:Lcom/vas/vassdk/http/VasHttpUtil;


# instance fields
.field private b:Lcom/yolanda/nohttp/rest/RequestQueue;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/yolanda/nohttp/NoHttp;->newRequestQueue()Lcom/yolanda/nohttp/rest/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/vas/vassdk/http/VasHttpUtil;->b:Lcom/yolanda/nohttp/rest/RequestQueue;

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/vas/vassdk/http/VasHttpUtil;
    .registers 2

    .prologue
    .line 30
    sget-object v0, Lcom/vas/vassdk/http/VasHttpUtil;->a:Lcom/vas/vassdk/http/VasHttpUtil;

    if-nez v0, :cond_13

    .line 32
    const-class v1, Lcom/vas/vassdk/http/VasHttpUtil;

    monitor-enter v1

    .line 34
    :try_start_7
    sget-object v0, Lcom/vas/vassdk/http/VasHttpUtil;->a:Lcom/vas/vassdk/http/VasHttpUtil;

    if-nez v0, :cond_12

    .line 36
    new-instance v0, Lcom/vas/vassdk/http/VasHttpUtil;

    invoke-direct {v0}, Lcom/vas/vassdk/http/VasHttpUtil;-><init>()V

    sput-object v0, Lcom/vas/vassdk/http/VasHttpUtil;->a:Lcom/vas/vassdk/http/VasHttpUtil;

    .line 32
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 40
    :cond_13
    sget-object v0, Lcom/vas/vassdk/http/VasHttpUtil;->a:Lcom/vas/vassdk/http/VasHttpUtil;

    return-object v0

    .line 32
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public add(ILcom/yolanda/nohttp/rest/Request;Lcom/yolanda/nohttp/rest/OnResponseListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/yolanda/nohttp/rest/Request",
            "<TT;>;",
            "Lcom/yolanda/nohttp/rest/OnResponseListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    const-string v0, "PLATFORM"

    const-string v1, "android"

    invoke-interface {p2, v0, v1}, Lcom/yolanda/nohttp/rest/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "SDKVERSION"

    const-string v1, "1.0.0"

    invoke-interface {p2, v0, v1}, Lcom/yolanda/nohttp/rest/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "CID"

    sget-object v1, Lcom/vas/vassdk/VasSDKConfig;->VAS_CHANNELID:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lcom/yolanda/nohttp/rest/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "CCID"

    sget-object v1, Lcom/vas/vassdk/VasSDKConfig;->VAS_SUBCHANNEL_ID:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lcom/yolanda/nohttp/rest/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "GID"

    sget-object v1, Lcom/vas/vassdk/VasSDKConfig;->VAS_GAMEID:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lcom/yolanda/nohttp/rest/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "DEVICEINFO"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lcom/yolanda/nohttp/rest/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "UUID"

    invoke-static {}, Lcom/vas/vassdk/VasSDK;->getInstance()Lcom/vas/vassdk/VasSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vas/vassdk/VasSDK;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/vas/vassdk/util/DeviceUtil;->getDeviceUuid(Landroid/content/Context;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/yolanda/nohttp/rest/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "BRAND"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lcom/yolanda/nohttp/rest/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "NETTYPE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/vas/vassdk/VasSDK;->getInstance()Lcom/vas/vassdk/VasSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vas/vassdk/VasSDK;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vas/vassdk/util/DeviceUtil;->getNetType(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/yolanda/nohttp/rest/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/yolanda/nohttp/rest/Request;->setCancelSign(Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/vas/vassdk/http/VasHttpUtil;->b:Lcom/yolanda/nohttp/rest/RequestQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yolanda/nohttp/rest/RequestQueue;->add(ILcom/yolanda/nohttp/rest/Request;Lcom/yolanda/nohttp/rest/OnResponseListener;)V

    .line 71
    return-void
.end method

.method public addHeader(Lcom/yolanda/nohttp/rest/Request;Ljava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yolanda/nohttp/rest/Request",
            "<TT;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    if-nez p2, :cond_3

    .line 105
    :cond_2
    return-void

    .line 97
    :cond_3
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 100
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    invoke-interface {p1, v1, v0}, Lcom/yolanda/nohttp/rest/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "header : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public cancelAll()V
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vas/vassdk/http/VasHttpUtil;->b:Lcom/yolanda/nohttp/rest/RequestQueue;

    invoke-virtual {v0}, Lcom/yolanda/nohttp/rest/RequestQueue;->cancelAll()V

    .line 89
    return-void
.end method

.method public cancelBySign(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vas/vassdk/http/VasHttpUtil;->b:Lcom/yolanda/nohttp/rest/RequestQueue;

    invoke-virtual {v0, p1}, Lcom/yolanda/nohttp/rest/RequestQueue;->cancelBySign(Ljava/lang/Object;)V

    .line 81
    return-void
.end method

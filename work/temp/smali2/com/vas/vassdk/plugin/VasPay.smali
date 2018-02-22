.class public Lcom/vas/vassdk/plugin/VasPay;
.super Ljava/lang/Object;
.source "VasPay.java"


# static fields
.field private static a:Lcom/vas/vassdk/plugin/VasPay;


# instance fields
.field private b:Lcom/vas/vassdk/plugin/IPayPlugin;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/vas/vassdk/plugin/VasPay;)Lcom/vas/vassdk/plugin/IPayPlugin;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasPay;->b:Lcom/vas/vassdk/plugin/IPayPlugin;

    return-object v0
.end method

.method public static getInstance()Lcom/vas/vassdk/plugin/VasPay;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/vas/vassdk/plugin/VasPay;->a:Lcom/vas/vassdk/plugin/VasPay;

    if-nez v0, :cond_b

    .line 22
    new-instance v0, Lcom/vas/vassdk/plugin/VasPay;

    invoke-direct {v0}, Lcom/vas/vassdk/plugin/VasPay;-><init>()V

    sput-object v0, Lcom/vas/vassdk/plugin/VasPay;->a:Lcom/vas/vassdk/plugin/VasPay;

    .line 24
    :cond_b
    sget-object v0, Lcom/vas/vassdk/plugin/VasPay;->a:Lcom/vas/vassdk/plugin/VasPay;

    return-object v0
.end method


# virtual methods
.method public getPayParams()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasPay;->b:Lcom/vas/vassdk/plugin/IPayPlugin;

    if-nez v0, :cond_c

    .line 42
    const-string v0, "no instance for payPlugin"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;)V

    .line 43
    const-string v0, ""

    .line 45
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasPay;->b:Lcom/vas/vassdk/plugin/IPayPlugin;

    invoke-interface {v0}, Lcom/vas/vassdk/plugin/IPayPlugin;->getPayParams()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public init()V
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/vas/vassdk/factory/VasFacktory;->newPlugin(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vas/vassdk/plugin/IPayPlugin;

    iput-object v0, p0, Lcom/vas/vassdk/plugin/VasPay;->b:Lcom/vas/vassdk/plugin/IPayPlugin;

    .line 35
    const-string v0, "VasPay init"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public pay(Lcom/vas/vassdk/bean/VasOrderInfo;Lcom/vas/vassdk/bean/VasRoleInfo;)V
    .registers 5

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasPay;->b:Lcom/vas/vassdk/plugin/IPayPlugin;

    if-eqz v0, :cond_11

    .line 52
    invoke-static {}, Lcom/vas/vassdk/VasSDK;->getInstance()Lcom/vas/vassdk/VasSDK;

    move-result-object v0

    new-instance v1, Lcom/vas/vassdk/plugin/VasPay$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/vas/vassdk/plugin/VasPay$1;-><init>(Lcom/vas/vassdk/plugin/VasPay;Lcom/vas/vassdk/bean/VasOrderInfo;Lcom/vas/vassdk/bean/VasRoleInfo;)V

    invoke-virtual {v0, v1}, Lcom/vas/vassdk/VasSDK;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 67
    :goto_10
    return-void

    .line 64
    :cond_11
    const-string v0, "no instance for payPlugin"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;)V

    .line 65
    const-string v0, "VasSDK"

    const-string v1, "no instance for payPlugin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

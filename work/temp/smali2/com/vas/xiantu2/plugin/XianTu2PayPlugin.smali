.class public Lcom/vas/xiantu2/plugin/XianTu2PayPlugin;
.super Ljava/lang/Object;
.source "XianTu2PayPlugin.java"

# interfaces
.implements Lcom/vas/vassdk/plugin/IPayPlugin;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/vas/xiantu2/plugin/XianTu2PayPlugin;->mActivity:Landroid/app/Activity;

    .line 19
    return-void
.end method


# virtual methods
.method public getPayParams()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public pay(Lcom/vas/vassdk/bean/VasOrderInfo;Lcom/vas/vassdk/bean/VasRoleInfo;)V
    .registers 4
    .param p1, "orderInfo"    # Lcom/vas/vassdk/bean/VasOrderInfo;
    .param p2, "roleInfo"    # Lcom/vas/vassdk/bean/VasRoleInfo;

    .prologue
    .line 28
    invoke-static {}, Lcom/vas/xiantu2/XianTu2SDK;->getInstance()Lcom/vas/xiantu2/XianTu2SDK;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vas/xiantu2/XianTu2SDK;->pay(Lcom/vas/vassdk/bean/VasOrderInfo;Lcom/vas/vassdk/bean/VasRoleInfo;)V

    .line 29
    return-void
.end method

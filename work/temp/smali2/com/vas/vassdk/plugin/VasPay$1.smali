.class Lcom/vas/vassdk/plugin/VasPay$1;
.super Ljava/lang/Object;
.source "VasPay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vas/vassdk/plugin/VasPay;->pay(Lcom/vas/vassdk/bean/VasOrderInfo;Lcom/vas/vassdk/bean/VasRoleInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vas/vassdk/plugin/VasPay;

.field private final synthetic b:Lcom/vas/vassdk/bean/VasOrderInfo;

.field private final synthetic c:Lcom/vas/vassdk/bean/VasRoleInfo;


# direct methods
.method constructor <init>(Lcom/vas/vassdk/plugin/VasPay;Lcom/vas/vassdk/bean/VasOrderInfo;Lcom/vas/vassdk/bean/VasRoleInfo;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vas/vassdk/plugin/VasPay$1;->a:Lcom/vas/vassdk/plugin/VasPay;

    iput-object p2, p0, Lcom/vas/vassdk/plugin/VasPay$1;->b:Lcom/vas/vassdk/bean/VasOrderInfo;

    iput-object p3, p0, Lcom/vas/vassdk/plugin/VasPay$1;->c:Lcom/vas/vassdk/bean/VasRoleInfo;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasPay$1;->a:Lcom/vas/vassdk/plugin/VasPay;

    invoke-static {v0}, Lcom/vas/vassdk/plugin/VasPay;->a(Lcom/vas/vassdk/plugin/VasPay;)Lcom/vas/vassdk/plugin/IPayPlugin;

    move-result-object v0

    iget-object v1, p0, Lcom/vas/vassdk/plugin/VasPay$1;->b:Lcom/vas/vassdk/bean/VasOrderInfo;

    iget-object v2, p0, Lcom/vas/vassdk/plugin/VasPay$1;->c:Lcom/vas/vassdk/bean/VasRoleInfo;

    invoke-interface {v0, v1, v2}, Lcom/vas/vassdk/plugin/IPayPlugin;->pay(Lcom/vas/vassdk/bean/VasOrderInfo;Lcom/vas/vassdk/bean/VasRoleInfo;)V

    .line 59
    return-void
.end method

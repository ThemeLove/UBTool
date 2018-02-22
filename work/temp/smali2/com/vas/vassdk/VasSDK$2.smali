.class Lcom/vas/vassdk/VasSDK$2;
.super Ljava/lang/Object;
.source "VasSDK.java"

# interfaces
.implements Lcom/vas/vassdk/callback/VasInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vas/vassdk/VasSDK;->getVasInitCallback()Lcom/vas/vassdk/callback/VasInitCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vas/vassdk/VasSDK;


# direct methods
.method constructor <init>(Lcom/vas/vassdk/VasSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vas/vassdk/VasSDK$2;->a:Lcom/vas/vassdk/VasSDK;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 185
    const-string v0, "VasSDK"

    const-string v1, "mVasInitCallback == null new onFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method public onSuccess()V
    .registers 3

    .prologue
    .line 179
    const-string v0, "VasSDK"

    const-string v1, "mVasInitCallback == null new success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

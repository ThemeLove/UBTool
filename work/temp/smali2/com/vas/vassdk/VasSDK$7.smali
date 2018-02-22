.class Lcom/vas/vassdk/VasSDK$7;
.super Ljava/lang/Object;
.source "VasSDK.java"

# interfaces
.implements Lcom/vas/vassdk/callback/VasSwitchAccountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vas/vassdk/VasSDK;->getVasSwitchAccountCallback()Lcom/vas/vassdk/callback/VasSwitchAccountCallback;
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
    iput-object p1, p0, Lcom/vas/vassdk/VasSDK$7;->a:Lcom/vas/vassdk/VasSDK;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    .prologue
    .line 309
    return-void
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 304
    return-void
.end method

.method public onSuccess(Lcom/vas/vassdk/bean/VasUserInfo;)V
    .registers 2

    .prologue
    .line 299
    return-void
.end method

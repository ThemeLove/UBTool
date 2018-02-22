.class Lcom/vas/vassdk/VasSDK$3;
.super Ljava/lang/Object;
.source "VasSDK.java"

# interfaces
.implements Lcom/vas/vassdk/callback/VasLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vas/vassdk/VasSDK;->getVasLoginCallback()Lcom/vas/vassdk/callback/VasLoginCallback;
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
    iput-object p1, p0, Lcom/vas/vassdk/VasSDK$3;->a:Lcom/vas/vassdk/VasSDK;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    .prologue
    .line 214
    return-void
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 209
    return-void
.end method

.method public onSuccess(Lcom/vas/vassdk/bean/VasUserInfo;)V
    .registers 2

    .prologue
    .line 203
    return-void
.end method

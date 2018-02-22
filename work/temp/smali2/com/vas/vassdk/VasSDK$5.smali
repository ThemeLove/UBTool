.class Lcom/vas/vassdk/VasSDK$5;
.super Ljava/lang/Object;
.source "VasSDK.java"

# interfaces
.implements Lcom/vas/vassdk/callback/VasPayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vas/vassdk/VasSDK;->getVasPayCallback()Lcom/vas/vassdk/callback/VasPayCallback;
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
    iput-object p1, p0, Lcom/vas/vassdk/VasSDK$5;->a:Lcom/vas/vassdk/VasSDK;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 262
    return-void
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 257
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 252
    return-void
.end method

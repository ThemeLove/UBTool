.class Lcom/vas/vassdk/VasSDK$4;
.super Ljava/lang/Object;
.source "VasSDK.java"

# interfaces
.implements Lcom/vas/vassdk/callback/VasLogoutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vas/vassdk/VasSDK;->getVasLogoutCallback()Lcom/vas/vassdk/callback/VasLogoutCallback;
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
    iput-object p1, p0, Lcom/vas/vassdk/VasSDK$4;->a:Lcom/vas/vassdk/VasSDK;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 236
    return-void
.end method

.method public onSuccess()V
    .registers 1

    .prologue
    .line 231
    return-void
.end method

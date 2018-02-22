.class Lcom/vas/vassdk/VasSDK$6;
.super Ljava/lang/Object;
.source "VasSDK.java"

# interfaces
.implements Lcom/vas/vassdk/callback/VasExitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vas/vassdk/VasSDK;->getVasExitCallback()Lcom/vas/vassdk/callback/VasExitCallback;
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
    iput-object p1, p0, Lcom/vas/vassdk/VasSDK$6;->a:Lcom/vas/vassdk/VasSDK;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 283
    return-void
.end method

.method public onSuccess()V
    .registers 1

    .prologue
    .line 278
    return-void
.end method

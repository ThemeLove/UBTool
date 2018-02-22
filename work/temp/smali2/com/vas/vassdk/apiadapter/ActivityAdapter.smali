.class public Lcom/vas/vassdk/apiadapter/ActivityAdapter;
.super Ljava/lang/Object;
.source "ActivityAdapter.java"

# interfaces
.implements Lcom/vas/vassdk/apiadapter/IActivityAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .prologue
    .line 21
    return-void
.end method

.method public onApplicationInit(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 15
    return-void
.end method

.method public onBackPressed()Z
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .prologue
    .line 81
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 27
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 63
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 51
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 39
    return-void
.end method

.method public onRestart()V
    .registers 1

    .prologue
    .line 69
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 45
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 33
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 57
    return-void
.end method

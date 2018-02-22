.class public Lcom/vas/xiantu2/plugin/XianTu2Application;
.super Ljava/lang/Object;
.source "XianTu2Application.java"

# interfaces
.implements Lcom/vas/vassdk/apiadapter/IApplicationListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProxyAttachBaseContext(Landroid/app/Application;Landroid/content/Context;)V
    .registers 3
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "base"    # Landroid/content/Context;

    .prologue
    .line 24
    return-void
.end method

.method public onProxyConfigurationChanged(Landroid/app/Application;Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 29
    return-void
.end method

.method public onProxyCreate(Landroid/app/Application;)V
    .registers 2
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 19
    return-void
.end method

.class Lcom/vas/vassdk/VasSdkSplashActivity$1;
.super Ljava/lang/Object;
.source "VasSdkSplashActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vas/vassdk/VasSdkSplashActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vas/vassdk/VasSdkSplashActivity;


# direct methods
.method constructor <init>(Lcom/vas/vassdk/VasSdkSplashActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vas/vassdk/VasSdkSplashActivity$1;->a:Lcom/vas/vassdk/VasSdkSplashActivity;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vas/vassdk/VasSdkSplashActivity$1;->a:Lcom/vas/vassdk/VasSdkSplashActivity;

    invoke-static {v0}, Lcom/vas/vassdk/VasSdkSplashActivity;->a(Lcom/vas/vassdk/VasSdkSplashActivity;)V

    .line 71
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 65
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 58
    return-void
.end method

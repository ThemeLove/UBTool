.class public Lcom/vas/vassdk/VasSdkSplashActivity;
.super Landroid/app/Activity;
.source "VasSdkSplashActivity.java"


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    .line 45
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 46
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 47
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 48
    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 49
    iget-object v1, p0, Lcom/vas/vassdk/VasSdkSplashActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 50
    new-instance v1, Lcom/vas/vassdk/VasSdkSplashActivity$1;

    invoke-direct {v1, p0}, Lcom/vas/vassdk/VasSdkSplashActivity$1;-><init>(Lcom/vas/vassdk/VasSdkSplashActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/vas/vassdk/VasSdkSplashActivity;)V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/vas/vassdk/VasSdkSplashActivity;->b()V

    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 80
    :try_start_0
    const-string v0, "VasSdkSplashActivity"

    sget-object v1, Lcom/vas/vassdk/VasSDKConfig;->MAIN_ACTIVITY_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/vas/vassdk/VasSDKConfig;->MAIN_ACTIVITY_NAME:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 83
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    invoke-virtual {p0, v1}, Lcom/vas/vassdk/VasSdkSplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 85
    invoke-virtual {p0}, Lcom/vas/vassdk/VasSdkSplashActivity;->finish()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    .line 92
    :goto_18
    return-void

    .line 88
    :catch_19
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    const/4 v2, -0x1

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vas/vassdk/VasSdkSplashActivity;->requestWindowFeature(I)Z

    .line 30
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 31
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vas/vassdk/VasSdkSplashActivity;->a:Landroid/widget/RelativeLayout;

    .line 32
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 35
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vas/vassdk/VasSdkSplashActivity;->b:Landroid/widget/ImageView;

    .line 36
    iget-object v2, p0, Lcom/vas/vassdk/VasSdkSplashActivity;->b:Landroid/widget/ImageView;

    const-string v3, "vas_sdk_splash"

    invoke-static {p0, v3}, Lcom/vas/vassdk/util/VasSDKUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    iget-object v2, p0, Lcom/vas/vassdk/VasSdkSplashActivity;->b:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 38
    iget-object v2, p0, Lcom/vas/vassdk/VasSdkSplashActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/vas/vassdk/VasSdkSplashActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    iget-object v1, p0, Lcom/vas/vassdk/VasSdkSplashActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/vas/vassdk/VasSdkSplashActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    invoke-direct {p0}, Lcom/vas/vassdk/VasSdkSplashActivity;->a()V

    .line 41
    return-void
.end method

.class Lcom/vas/vassdk/VasSDK$1;
.super Ljava/lang/Object;
.source "VasSDK.java"

# interfaces
.implements Lcom/vas/vassdk/apiadapter/VasInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vas/vassdk/VasSDK;->init(Landroid/app/Activity;)V
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
    iput-object p1, p0, Lcom/vas/vassdk/VasSDK$1;->a:Lcom/vas/vassdk/VasSDK;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 122
    return-void
.end method

.method public onSuccess(ZZ)V
    .registers 3

    .prologue
    .line 115
    sput-boolean p1, Lcom/vas/vassdk/util/VasConstant;->isAsscessLogin:Z

    .line 116
    sput-boolean p2, Lcom/vas/vassdk/util/VasConstant;->isAsscessPay:Z

    .line 117
    return-void
.end method

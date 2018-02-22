.class public abstract Lsdk/pay/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lsdk/pay/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsdk/pay/a/b$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lsdk/pay/a/b$a;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsdk/pay/a/b;->c:Ljava/lang/String;

    iput-object p2, p0, Lsdk/pay/a/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsdk/pay/a/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lsdk/pay/a/b;->c:Ljava/lang/String;

    return-void
.end method

.method protected b()V
    .registers 2

    iget-object v0, p0, Lsdk/pay/a/b;->b:Lsdk/pay/a/b$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lsdk/pay/a/b;->b:Lsdk/pay/a/b$a;

    invoke-interface {v0}, Lsdk/pay/a/b$a;->a()V

    :cond_9
    return-void
.end method

.class public Lsdk/pay/a;
.super Ljava/lang/Object;

# interfaces
.implements Lsdk/pay/c/a;


# instance fields
.field a:Lsdk/pay/c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsdk/pay/c/d;Z)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsdk/pay/d;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lsdk/pay/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsdk/pay/c/d;Z)V

    iput-object v0, p0, Lsdk/pay/a;->a:Lsdk/pay/c;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lsdk/pay/a;->a:Lsdk/pay/c;

    invoke-virtual {v0}, Lsdk/pay/c;->c()V

    return-void
.end method

.method public a(Lsdk/pay/c/b;)V
    .registers 3

    iget-object v0, p0, Lsdk/pay/a;->a:Lsdk/pay/c;

    invoke-virtual {v0, p1}, Lsdk/pay/c;->a(Lsdk/pay/c/b;)V

    return-void
.end method

.method public a(Lsdk/pay/d/b;I)V
    .registers 5

    iget-object v0, p0, Lsdk/pay/a;->a:Lsdk/pay/c;

    invoke-virtual {v0}, Lsdk/pay/c;->h()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lsdk/pay/a;->a:Lsdk/pay/c;

    invoke-virtual {v0, p1, p2}, Lsdk/pay/c;->a(Lsdk/pay/d/b;I)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lsdk/pay/a;->a:Lsdk/pay/c;

    sget-object v1, Lsdk/pay/b/a;->q:Lsdk/pay/b/a;

    invoke-virtual {v1}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsdk/pay/c;->c(Ljava/lang/String;)V

    goto :goto_d
.end method

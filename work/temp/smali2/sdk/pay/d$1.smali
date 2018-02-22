.class Lsdk/pay/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsdk/pay/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lsdk/pay/d;


# direct methods
.method constructor <init>(Lsdk/pay/d;)V
    .registers 2

    iput-object p1, p0, Lsdk/pay/d$1;->a:Lsdk/pay/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v5, 0x0

    sget-object v0, Lsdk/pay/c;->b:Lsdk/pay/d/e;

    invoke-virtual {v0}, Lsdk/pay/d/e;->l()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lsdk/pay/c;->b:Lsdk/pay/d/e;

    invoke-virtual {v1}, Lsdk/pay/d/e;->k()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lsdk/pay/c;->b:Lsdk/pay/d/e;

    invoke-virtual {v2}, Lsdk/pay/d/e;->i()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pay url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " openUrl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tokenId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsdk/pay/e/h;->a(Ljava/lang/String;)V

    sget-object v2, Lsdk/pay/c;->b:Lsdk/pay/d/e;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lsdk/pay/d/e;->a(Z)V

    sget-object v2, Lsdk/pay/c;->b:Lsdk/pay/d/e;

    invoke-virtual {v2}, Lsdk/pay/d/e;->p()I

    move-result v2

    sparse-switch v2, :sswitch_data_13c

    :cond_4c
    :goto_4c
    sget-object v0, Lsdk/pay/c;->b:Lsdk/pay/d/e;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lsdk/pay/d/e;->a(I)V

    :goto_52
    return-void

    :sswitch_53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6f

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lsdk/pay/d$1;->a:Lsdk/pay/d;

    iget-object v1, v1, Lsdk/pay/d;->e:Landroid/app/Activity;

    invoke-static {v1, v0}, Lsdk/pay/PayWebViewActivity;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_4c

    :cond_6f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_81

    iget-object v0, p0, Lsdk/pay/d$1;->a:Lsdk/pay/d;

    sget-object v1, Lsdk/pay/b/a;->p:Lsdk/pay/b/a;

    invoke-virtual {v1}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsdk/pay/d;->c(Ljava/lang/String;)V

    goto :goto_52

    :cond_81
    iget-object v1, p0, Lsdk/pay/d$1;->a:Lsdk/pay/d;

    iget-object v1, v1, Lsdk/pay/d;->h:Lsdk/pay/e;

    invoke-virtual {v1, v0, v5}, Lsdk/pay/e;->a(Ljava/lang/String;Z)V

    goto :goto_4c

    :sswitch_89
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9f

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    iget-object v1, p0, Lsdk/pay/d$1;->a:Lsdk/pay/d;

    iget-object v1, v1, Lsdk/pay/d;->e:Landroid/app/Activity;

    invoke-static {v1, v0}, Lsdk/pay/PayWebViewActivity;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_4c

    :cond_9f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b1

    iget-object v0, p0, Lsdk/pay/d$1;->a:Lsdk/pay/d;

    sget-object v1, Lsdk/pay/b/a;->p:Lsdk/pay/b/a;

    invoke-virtual {v1}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsdk/pay/d;->c(Ljava/lang/String;)V

    goto :goto_52

    :cond_b1
    sget-object v1, Lsdk/pay/c;->b:Lsdk/pay/d/e;

    invoke-virtual {v1}, Lsdk/pay/d/e;->b()Z

    move-result v1

    sget-object v2, Lsdk/pay/c;->b:Lsdk/pay/d/e;

    invoke-virtual {v2, v5}, Lsdk/pay/d/e;->b(Z)V

    iget-object v2, p0, Lsdk/pay/d$1;->a:Lsdk/pay/d;

    iget-object v2, v2, Lsdk/pay/d;->h:Lsdk/pay/e;

    invoke-virtual {v2, v0, v1}, Lsdk/pay/e;->a(Ljava/lang/String;Z)V

    goto :goto_4c

    :sswitch_c4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    iget-object v1, p0, Lsdk/pay/d$1;->a:Lsdk/pay/d;

    iget-object v1, v1, Lsdk/pay/d;->e:Landroid/app/Activity;

    invoke-static {v1, v0}, Lsdk/pay/PayWebViewActivity;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_4c

    :cond_e1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f4

    iget-object v0, p0, Lsdk/pay/d$1;->a:Lsdk/pay/d;

    sget-object v1, Lsdk/pay/b/a;->p:Lsdk/pay/b/a;

    invoke-virtual {v1}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsdk/pay/d;->c(Ljava/lang/String;)V

    goto/16 :goto_52

    :cond_f4
    iget-object v1, p0, Lsdk/pay/d$1;->a:Lsdk/pay/d;

    iget-object v1, v1, Lsdk/pay/d;->h:Lsdk/pay/e;

    invoke-virtual {v1, v0, v5}, Lsdk/pay/e;->a(Ljava/lang/String;Z)V

    goto/16 :goto_4c

    :sswitch_fd
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11a

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11a

    iget-object v1, p0, Lsdk/pay/d$1;->a:Lsdk/pay/d;

    iget-object v1, v1, Lsdk/pay/d;->e:Landroid/app/Activity;

    invoke-static {v1, v0}, Lsdk/pay/PayWebViewActivity;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_4c

    :cond_11a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12d

    iget-object v0, p0, Lsdk/pay/d$1;->a:Lsdk/pay/d;

    sget-object v1, Lsdk/pay/b/a;->p:Lsdk/pay/b/a;

    invoke-virtual {v1}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsdk/pay/d;->c(Ljava/lang/String;)V

    goto/16 :goto_52

    :cond_12d
    new-instance v1, Lsdk/pay/b;

    iget-object v2, p0, Lsdk/pay/d$1;->a:Lsdk/pay/d;

    iget-object v2, v2, Lsdk/pay/d;->e:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lsdk/pay/b;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Lsdk/pay/b;->a(Ljava/lang/String;)V

    goto/16 :goto_4c

    nop

    :sswitch_data_13c
    .sparse-switch
        0x3 -> :sswitch_53
        0x4 -> :sswitch_89
        0xb -> :sswitch_c4
        0xc -> :sswitch_fd
    .end sparse-switch
.end method

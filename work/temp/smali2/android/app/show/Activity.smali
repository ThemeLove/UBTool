.class public Landroid/app/show/Activity;
.super Landroid/app/log/Activity;


# static fields
.field private static oldMsg:Ljava/lang/String;

.field private static oneTime:J

.field protected static toast:Landroid/widget/Toast;

.field private static twoTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Landroid/app/show/Activity;->toast:Landroid/widget/Toast;

    sput-wide v1, Landroid/app/show/Activity;->oneTime:J

    sput-wide v1, Landroid/app/show/Activity;->twoTime:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/log/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public Toast(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Toast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/show/Activity;->i(Ljava/lang/String;)V

    return-void
.end method

.method public show(I)V
    .registers 4

    invoke-virtual {p0, p1}, Landroid/app/show/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/show/Activity;->showToast(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Toast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/app/show/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/show/Activity;->e(Ljava/lang/String;)V

    return-void
.end method

.method public show(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1}, Landroid/app/show/Activity;->showToast(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Toast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/show/Activity;->e(Ljava/lang/String;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .registers 6

    sget-object v0, Landroid/app/show/Activity;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Landroid/app/show/Activity;->toast:Landroid/widget/Toast;

    sget-object v0, Landroid/app/show/Activity;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/app/show/Activity;->oneTime:J

    :cond_16
    :goto_16
    sget-wide v0, Landroid/app/show/Activity;->twoTime:J

    sput-wide v0, Landroid/app/show/Activity;->oneTime:J

    return-void

    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/app/show/Activity;->twoTime:J

    sget-object v0, Landroid/app/show/Activity;->oldMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    sget-wide v0, Landroid/app/show/Activity;->twoTime:J

    sget-wide v2, Landroid/app/show/Activity;->oneTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    sget-object v0, Landroid/app/show/Activity;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_16

    :cond_3a
    sput-object p1, Landroid/app/show/Activity;->oldMsg:Ljava/lang/String;

    sget-object v0, Landroid/app/show/Activity;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Landroid/app/show/Activity;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_16
.end method

.method public showToastInThread(Landroid/app/show/Activity;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/app/show/Activity$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/show/Activity$1;-><init>(Landroid/app/show/Activity;Landroid/app/show/Activity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/show/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

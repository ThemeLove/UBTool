.class public Landroid/app/log/Activity;
.super Landroid/app/tag/Activity;


# instance fields
.field public isDebug:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/tag/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/log/Activity;->isDebug:Z

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Landroid/app/log/Activity;->isDebug:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/app/log/Activity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Landroid/app/log/Activity;->isDebug:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/app/log/Activity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Landroid/app/log/Activity;->isDebug:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/app/log/Activity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Landroid/app/log/Activity;->isDebug:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/app/log/Activity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Landroid/app/log/Activity;->isDebug:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/app/log/Activity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

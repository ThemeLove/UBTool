.class Lcom/mchsdk/paysdk/utils/j$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/utils/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/utils/j;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/utils/j;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    const-wide/16 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-wide/16 v4, 0x3e8

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_204

    :cond_c
    :goto_c
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :sswitch_10
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/j;->a(Lcom/mchsdk/paysdk/utils/j;)I

    move-result v0

    if-nez v0, :cond_5b

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/j;->b(Lcom/mchsdk/paysdk/utils/j;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/j;->c(Lcom/mchsdk/paysdk/utils/j;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v1}, Lcom/mchsdk/paysdk/utils/j;->b(Lcom/mchsdk/paysdk/utils/j;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_37
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/j;->d(Lcom/mchsdk/paysdk/utils/j;)Lcom/mchsdk/paysdk/utils/j$b;

    move-result-object v0

    if-nez v0, :cond_52

    iget-object v6, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    new-instance v0, Lcom/mchsdk/paysdk/utils/j$b;

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    iget-object v2, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v2}, Lcom/mchsdk/paysdk/utils/j;->e(Lcom/mchsdk/paysdk/utils/j;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-direct/range {v0 .. v5}, Lcom/mchsdk/paysdk/utils/j$b;-><init>(Lcom/mchsdk/paysdk/utils/j;JJ)V

    invoke-static {v6, v0}, Lcom/mchsdk/paysdk/utils/j;->a(Lcom/mchsdk/paysdk/utils/j;Lcom/mchsdk/paysdk/utils/j$b;)Lcom/mchsdk/paysdk/utils/j$b;

    :cond_52
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/j;->d(Lcom/mchsdk/paysdk/utils/j;)Lcom/mchsdk/paysdk/utils/j$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/utils/j$b;->start()Landroid/os/CountDownTimer;

    :cond_5b
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/j;->a(Lcom/mchsdk/paysdk/utils/j;)I

    move-result v0

    if-ne v0, v9, :cond_c

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/j;->a(Lcom/mchsdk/paysdk/utils/j;I)I

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/j;->f(Lcom/mchsdk/paysdk/utils/j;)I

    move-result v0

    if-ne v0, v8, :cond_fe

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/j;->g(Lcom/mchsdk/paysdk/utils/j;)J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-nez v0, :cond_8d

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v1}, Lcom/mchsdk/paysdk/utils/j;->h(Lcom/mchsdk/paysdk/utils/j;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/utils/j;->a(Lcom/mchsdk/paysdk/utils/j;J)J

    :cond_8d
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/utils/j;->a()Lcom/mchsdk/open/AnnounceTimeCallBack;

    move-result-object v0

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/utils/j;->a()Lcom/mchsdk/open/AnnounceTimeCallBack;

    move-result-object v0

    const-string v1, "1"

    invoke-interface {v0, v1}, Lcom/mchsdk/open/AnnounceTimeCallBack;->callback(Ljava/lang/String;)V

    :cond_a0
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/j;->i(Lcom/mchsdk/paysdk/utils/j;)Lcom/mchsdk/paysdk/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_da

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/j;->c(Lcom/mchsdk/paysdk/utils/j;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v2}, Lcom/mchsdk/paysdk/utils/j;->i(Lcom/mchsdk/paysdk/utils/j;)Lcom/mchsdk/paysdk/e/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/e/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_da
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/j;->a(Lcom/mchsdk/paysdk/utils/j;I)I

    iget-object v6, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    new-instance v0, Lcom/mchsdk/paysdk/utils/j$b;

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    iget-object v2, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v2}, Lcom/mchsdk/paysdk/utils/j;->j(Lcom/mchsdk/paysdk/utils/j;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-direct/range {v0 .. v5}, Lcom/mchsdk/paysdk/utils/j$b;-><init>(Lcom/mchsdk/paysdk/utils/j;JJ)V

    invoke-static {v6, v0}, Lcom/mchsdk/paysdk/utils/j;->b(Lcom/mchsdk/paysdk/utils/j;Lcom/mchsdk/paysdk/utils/j$b;)Lcom/mchsdk/paysdk/utils/j$b;

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/j;->k(Lcom/mchsdk/paysdk/utils/j;)Lcom/mchsdk/paysdk/utils/j$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/utils/j$b;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_c

    :cond_fe
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/j;->f(Lcom/mchsdk/paysdk/utils/j;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_179

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/utils/j;->a()Lcom/mchsdk/open/AnnounceTimeCallBack;

    move-result-object v0

    if-eqz v0, :cond_11a

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/utils/j;->a()Lcom/mchsdk/open/AnnounceTimeCallBack;

    move-result-object v0

    const-string v1, "2"

    invoke-interface {v0, v1}, Lcom/mchsdk/open/AnnounceTimeCallBack;->callback(Ljava/lang/String;)V

    :cond_11a
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/j;->i(Lcom/mchsdk/paysdk/utils/j;)Lcom/mchsdk/paysdk/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_154

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/j;->c(Lcom/mchsdk/paysdk/utils/j;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v2}, Lcom/mchsdk/paysdk/utils/j;->i(Lcom/mchsdk/paysdk/utils/j;)Lcom/mchsdk/paysdk/e/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/e/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_154
    sput-boolean v7, Lcom/mchsdk/paysdk/a/h;->c:Z

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v0, v9}, Lcom/mchsdk/paysdk/utils/j;->a(Lcom/mchsdk/paysdk/utils/j;I)I

    iget-object v6, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    new-instance v0, Lcom/mchsdk/paysdk/utils/j$b;

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    iget-object v2, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v2}, Lcom/mchsdk/paysdk/utils/j;->l(Lcom/mchsdk/paysdk/utils/j;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-direct/range {v0 .. v5}, Lcom/mchsdk/paysdk/utils/j$b;-><init>(Lcom/mchsdk/paysdk/utils/j;JJ)V

    invoke-static {v6, v0}, Lcom/mchsdk/paysdk/utils/j;->b(Lcom/mchsdk/paysdk/utils/j;Lcom/mchsdk/paysdk/utils/j$b;)Lcom/mchsdk/paysdk/utils/j$b;

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/j;->k(Lcom/mchsdk/paysdk/utils/j;)Lcom/mchsdk/paysdk/utils/j$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/utils/j$b;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_c

    :cond_179
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/j;->f(Lcom/mchsdk/paysdk/utils/j;)I

    move-result v0

    if-ne v0, v9, :cond_c

    const-string v0, "MyTimeUtil"

    const-string v1, "\u4e24\u6b21\u65f6\u95f4\u5230\u8fd8\u5728\u7ee7\u7eed\u73a9\u6e38\u620f\uff0c\u7b97\u4f5c\u4f11\u606f\u65f6\u95f4\uff0c\u4f11\u606f\u65f6\u95f4\u5df2\u5230\uff0c\u53ef\u89c6\u4e3a\u521a\u8fdb\u5165\u6e38\u620f"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v0, v10, v11}, Lcom/mchsdk/paysdk/utils/j;->a(Lcom/mchsdk/paysdk/utils/j;J)J

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v0, v10, v11}, Lcom/mchsdk/paysdk/utils/j;->b(Lcom/mchsdk/paysdk/utils/j;J)J

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v0, v8}, Lcom/mchsdk/paysdk/utils/j;->a(Lcom/mchsdk/paysdk/utils/j;I)I

    iget-object v6, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    new-instance v0, Lcom/mchsdk/paysdk/utils/j$b;

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    iget-object v2, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v2}, Lcom/mchsdk/paysdk/utils/j;->h(Lcom/mchsdk/paysdk/utils/j;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-direct/range {v0 .. v5}, Lcom/mchsdk/paysdk/utils/j$b;-><init>(Lcom/mchsdk/paysdk/utils/j;JJ)V

    invoke-static {v6, v0}, Lcom/mchsdk/paysdk/utils/j;->b(Lcom/mchsdk/paysdk/utils/j;Lcom/mchsdk/paysdk/utils/j$b;)Lcom/mchsdk/paysdk/utils/j$b;

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/j;->k(Lcom/mchsdk/paysdk/utils/j;)Lcom/mchsdk/paysdk/utils/j$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/utils/j$b;->start()Landroid/os/CountDownTimer;

    sput-boolean v8, Lcom/mchsdk/paysdk/a/h;->c:Z

    goto/16 :goto_c

    :sswitch_1b7
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/j;->k(Lcom/mchsdk/paysdk/utils/j;)Lcom/mchsdk/paysdk/utils/j$b;

    move-result-object v0

    if-eqz v0, :cond_1ce

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/j;->k(Lcom/mchsdk/paysdk/utils/j;)Lcom/mchsdk/paysdk/utils/j$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/utils/j$b;->cancel()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/j;->b(Lcom/mchsdk/paysdk/utils/j;Lcom/mchsdk/paysdk/utils/j$b;)Lcom/mchsdk/paysdk/utils/j$b;

    :cond_1ce
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/j;->d(Lcom/mchsdk/paysdk/utils/j;)Lcom/mchsdk/paysdk/utils/j$b;

    move-result-object v0

    if-eqz v0, :cond_1ec

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/j;->d(Lcom/mchsdk/paysdk/utils/j;)Lcom/mchsdk/paysdk/utils/j$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/utils/j$b;->cancel()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/j;->a(Lcom/mchsdk/paysdk/utils/j;Lcom/mchsdk/paysdk/utils/j$b;)Lcom/mchsdk/paysdk/utils/j$b;

    const-string v0, "MyTimeUtil"

    const-string v1, "\u505c\u6b62\u8ba1\u65f6: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ec
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/utils/j;->a()Lcom/mchsdk/open/AnnounceTimeCallBack;

    move-result-object v0

    if-eqz v0, :cond_1ff

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j$1;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/utils/j;->a()Lcom/mchsdk/open/AnnounceTimeCallBack;

    move-result-object v0

    const-string v1, "3"

    invoke-interface {v0, v1}, Lcom/mchsdk/open/AnnounceTimeCallBack;->callback(Ljava/lang/String;)V

    :cond_1ff
    sput-boolean v7, Lcom/mchsdk/paysdk/a/h;->c:Z

    goto/16 :goto_c

    nop

    :sswitch_data_204
    .sparse-switch
        0x123 -> :sswitch_10
        0x1234 -> :sswitch_1b7
    .end sparse-switch
.end method

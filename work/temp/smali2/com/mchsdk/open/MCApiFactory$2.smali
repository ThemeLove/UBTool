.class Lcom/mchsdk/open/MCApiFactory$2;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/open/MCApiFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/open/MCApiFactory;


# direct methods
.method constructor <init>(Lcom/mchsdk/open/MCApiFactory;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/open/MCApiFactory$2;->a:Lcom/mchsdk/open/MCApiFactory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    const-string v1, "MCApiFactory"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6bd4\u5bf9\u4fe1\u606f\u4e0a\u4f20\u7ed3\u679c:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/mchsdk/open/MCApiFactory$2;->a:Lcom/mchsdk/open/MCApiFactory;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/mchsdk/open/MCApiFactory;->return_msg:Ljava/lang/String;

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory$2;->a:Lcom/mchsdk/open/MCApiFactory;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mchsdk/open/MCApiFactory;->status:Ljava/lang/String;

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory$2;->a:Lcom/mchsdk/open/MCApiFactory;

    iget-object v0, v0, Lcom/mchsdk/open/MCApiFactory;->status:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mchsdk/open/MCApiFactory$2;->a:Lcom/mchsdk/open/MCApiFactory;

    # getter for: Lcom/mchsdk/open/MCApiFactory;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mchsdk/open/MCApiFactory;->access$000(Lcom/mchsdk/open/MCApiFactory;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u7cfb\u7edf\u516c\u544a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u6e38\u620f\u5b58\u5728\u66f4\u65b0\u662f\u5426\u8981\u8fdb\u884c\u66f4\u65b0,\u8bf7\u70b9\u51fb\u4e0b\u8f7d\u94fe\u63a5"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/mchsdk/open/MCApiFactory$2$2;

    invoke-direct {v2, p0}, Lcom/mchsdk/open/MCApiFactory$2$2;-><init>(Lcom/mchsdk/open/MCApiFactory$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/mchsdk/open/MCApiFactory$2$1;

    invoke-direct {v2, p0}, Lcom/mchsdk/open/MCApiFactory$2$1;-><init>(Lcom/mchsdk/open/MCApiFactory$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_6e
    :goto_6e
    return-void

    :cond_6f
    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory$2;->a:Lcom/mchsdk/open/MCApiFactory;

    iget-object v0, v0, Lcom/mchsdk/open/MCApiFactory;->status:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory$2;->a:Lcom/mchsdk/open/MCApiFactory;

    # getter for: Lcom/mchsdk/open/MCApiFactory;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mchsdk/open/MCApiFactory;->access$000(Lcom/mchsdk/open/MCApiFactory;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u66f4\u606f\u5931\u8d25\uff0c\u8bf7\u518d\u6b21\u767b\u5f55\u91cd\u65b0\u83b7\u53d6"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_6e

    :cond_8b
    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory$2;->a:Lcom/mchsdk/open/MCApiFactory;

    iget-object v0, v0, Lcom/mchsdk/open/MCApiFactory;->status:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory$2;->a:Lcom/mchsdk/open/MCApiFactory;

    # getter for: Lcom/mchsdk/open/MCApiFactory;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mchsdk/open/MCApiFactory;->access$000(Lcom/mchsdk/open/MCApiFactory;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/open/MCApiFactory$2;->a:Lcom/mchsdk/open/MCApiFactory;

    iget-object v1, v1, Lcom/mchsdk/open/MCApiFactory;->return_msg:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_6e

    :cond_a9
    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory$2;->a:Lcom/mchsdk/open/MCApiFactory;

    iget-object v0, v0, Lcom/mchsdk/open/MCApiFactory;->status:Ljava/lang/String;

    const-string v1, "-2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory$2;->a:Lcom/mchsdk/open/MCApiFactory;

    # getter for: Lcom/mchsdk/open/MCApiFactory;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mchsdk/open/MCApiFactory;->access$000(Lcom/mchsdk/open/MCApiFactory;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/open/MCApiFactory$2;->a:Lcom/mchsdk/open/MCApiFactory;

    iget-object v1, v1, Lcom/mchsdk/open/MCApiFactory;->return_msg:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_6e

    :cond_c7
    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory$2;->a:Lcom/mchsdk/open/MCApiFactory;

    iget-object v0, v0, Lcom/mchsdk/open/MCApiFactory;->status:Ljava/lang/String;

    const-string v1, "-3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e5

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory$2;->a:Lcom/mchsdk/open/MCApiFactory;

    # getter for: Lcom/mchsdk/open/MCApiFactory;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mchsdk/open/MCApiFactory;->access$000(Lcom/mchsdk/open/MCApiFactory;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/open/MCApiFactory$2;->a:Lcom/mchsdk/open/MCApiFactory;

    iget-object v1, v1, Lcom/mchsdk/open/MCApiFactory;->return_msg:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_6e

    :cond_e5
    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory$2;->a:Lcom/mchsdk/open/MCApiFactory;

    iget-object v0, v0, Lcom/mchsdk/open/MCApiFactory;->status:Ljava/lang/String;

    const-string v1, "-4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory$2;->a:Lcom/mchsdk/open/MCApiFactory;

    # getter for: Lcom/mchsdk/open/MCApiFactory;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mchsdk/open/MCApiFactory;->access$000(Lcom/mchsdk/open/MCApiFactory;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/open/MCApiFactory$2;->a:Lcom/mchsdk/open/MCApiFactory;

    iget-object v1, v1, Lcom/mchsdk/open/MCApiFactory;->return_msg:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6e
.end method

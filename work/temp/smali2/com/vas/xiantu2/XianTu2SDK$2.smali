.class Lcom/vas/xiantu2/XianTu2SDK$2;
.super Ljava/lang/Object;
.source "XianTu2SDK.java"

# interfaces
.implements Lcom/mchsdk/open/AnnounceTimeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vas/xiantu2/XianTu2SDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vas/xiantu2/XianTu2SDK;


# direct methods
.method constructor <init>(Lcom/vas/xiantu2/XianTu2SDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vas/xiantu2/XianTu2SDK$2;->this$0:Lcom/vas/xiantu2/XianTu2SDK;

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .registers 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 334
    const-string v0, "xiantu2sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9632\u6c89\u8ff7-result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 352
    :cond_1b
    :goto_1b
    return-void

    .line 338
    :cond_1c
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 340
    const-string v0, "xiantu2sdk"

    const-string v1, "\u9632\u6c89\u8ff7:\u7b2c\u4e00\u6b21\u5230\u65f6\u901a\u77e5"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK$2;->this$0:Lcom/vas/xiantu2/XianTu2SDK;

    # getter for: Lcom/vas/xiantu2/XianTu2SDK;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/vas/xiantu2/XianTu2SDK;->access$0(Lcom/vas/xiantu2/XianTu2SDK;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u7b2c\u4e00\u6b21\u5230\u65f6\u901a\u77e5"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 343
    :cond_3a
    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 345
    const-string v0, "xiantu2sdk"

    const-string v1, "\u9632\u6c89\u8ff7:\u7b2c\u4e8c\u6b21\u5230\u65f6\u901a\u77e5"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK$2;->this$0:Lcom/vas/xiantu2/XianTu2SDK;

    # getter for: Lcom/vas/xiantu2/XianTu2SDK;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/vas/xiantu2/XianTu2SDK;->access$0(Lcom/vas/xiantu2/XianTu2SDK;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u7b2c\u4e8c\u6b21\u5230\u65f6\u901a\u77e5"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 348
    :cond_58
    const-string v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 349
    const-string v0, "xiantu2sdk"

    const-string v1, "\u9632\u6c89\u8ff7:\u65f6\u95f4\u5230\uff0c\u505c\u6b62\u8ba1\u65f6\u3002"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK$2;->this$0:Lcom/vas/xiantu2/XianTu2SDK;

    # getter for: Lcom/vas/xiantu2/XianTu2SDK;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/vas/xiantu2/XianTu2SDK;->access$0(Lcom/vas/xiantu2/XianTu2SDK;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u65f6\u95f4\u5230\uff0c\u505c\u6b62\u8ba1\u65f6\u3002"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1b
.end method

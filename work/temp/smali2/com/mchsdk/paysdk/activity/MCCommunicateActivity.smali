.class public Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;
.super Landroid/app/base/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/widget/ListView;

.field b:Landroid/widget/EditText;

.field c:Landroid/widget/Button;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/base/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/mchsdk/paysdk/f/b/a;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/b/a;-><init>()V

    const-string v1, "0"

    iput-object v1, v0, Lcom/mchsdk/paysdk/f/b/a;->b:Ljava/lang/String;

    const-string v1, "\u6216\u5f97\u6d88\u606f\u8bb0\u5f55"

    iput-object v1, v0, Lcom/mchsdk/paysdk/f/b/a;->a:Ljava/lang/String;

    new-instance v1, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity$1;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity$1;-><init>(Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;)V

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/b/a;->a(Landroid/os/Handler;)V

    const/4 v0, 0x0

    :goto_16
    const/4 v1, 0x3

    if-ge v0, v1, :cond_4c

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "type"

    const-string v3, "oth"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "iv_ico"

    iget-object v3, p0, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->context:Landroid/content/Context;

    const-string v4, "yzx_person"

    invoke-static {v3, v4}, Lcom/mchsdk/paysdk/utils/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tv_name"

    const-string v3, "\u6635\u79f0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tv_message"

    const-string v3, "\u5c0f\u5f3a\u5728\u4e0d\uff1f\u4e2d\u5348\u53bb\u90a3\u5403\u996d!\u4e2d\u5348\u53bb\u54ea\u5403\u996d\uff01"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_4c
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->d:Ljava/util/List;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "tv_qq"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->R_id(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1c

    const-string v0, "mqqwpa://im/chat?chat_type=wpa&uin=501863587"

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "btn_send"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->R_id(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_56

    new-instance v0, Lcom/mchsdk/paysdk/f/b/a;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/b/a;-><init>()V

    const-string v1, "1"

    iput-object v1, v0, Lcom/mchsdk/paysdk/f/b/a;->b:Ljava/lang/String;

    const-string v1, "\u6216\u5f97\u6d88\u606f\u8bb0\u5f55"

    iput-object v1, v0, Lcom/mchsdk/paysdk/f/b/a;->a:Ljava/lang/String;

    new-instance v1, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity$2;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity$2;-><init>(Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;)V

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/b/a;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_57

    const-string v0, "\u6d88\u606f\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->Toast(Ljava/lang/String;)V

    :cond_56
    :goto_56
    return-void

    :cond_57
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "type"

    const-string v3, "me"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "iv_ico"

    iget-object v3, p0, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->context:Landroid/content/Context;

    const-string v4, "yzx_person"

    invoke-static {v3, v4}, Lcom/mchsdk/paysdk/utils/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tv_name"

    const-string v3, "\u6211"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tv_message"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/mchsdk/paysdk/adapter/b;

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->d:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/mchsdk/paysdk/adapter/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->b:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_56
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/base/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "activity_communicate"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->R_layout(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->setContentView(I)V

    const-string v0, "edt_message"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->R_id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->b:Landroid/widget/EditText;

    const-string v0, "btn_send"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->R_id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "list"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->R_id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->a:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;->a:Landroid/widget/ListView;

    new-instance v2, Lcom/mchsdk/paysdk/adapter/b;

    invoke-direct {v2, p0, v0}, Lcom/mchsdk/paysdk/adapter/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.class public Lcom/mchsdk/paysdk/activity/MCListViewActivity;
.super Landroid/app/base/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static c:Lcom/mchsdk/paysdk/d/a/b;


# instance fields
.field a:Landroid/widget/ListView;

.field b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/base/Activity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_23

    move v1, v2

    :goto_c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.tencent.mobileqq"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v2, 0x1

    :cond_23
    return v2

    :cond_24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 7
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

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/mchsdk/paysdk/activity/MCListViewActivity;->c:Lcom/mchsdk/paysdk/d/a/b;

    iget-object v0, v0, Lcom/mchsdk/paysdk/d/a/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mchsdk/paysdk/d/a/b;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "image"

    const v5, 0x1080059

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "title"

    iget-object v5, v0, Lcom/mchsdk/paysdk/d/a/b;->b:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "info"

    iget-object v0, v0, Lcom/mchsdk/paysdk/d/a/b;->c:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_3c
    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "tv_qq"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCListViewActivity;->R_id(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4d

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/activity/MCListViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCListViewActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_58

    :try_start_16
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mqqwpa://im/chat?chat_type=wpa&uin=501863587"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mqqwpa://im/chat?chat_type=crm&uin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&version=1&src_type=web&web_src="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCListViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_4d} :catch_4e

    :cond_4d
    :goto_4d
    return-void

    :catch_4e
    move-exception v0

    const-string v1, "QQ\u542f\u52a8\u5931\u8d25"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCListViewActivity;->Toast(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4d

    :cond_58
    const-string v0, "\u6ca1\u6709\u5b89\u88c5\u624b\u673aQQ"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCListViewActivity;->Toast(Ljava/lang/String;)V

    goto :goto_4d
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/base/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "activity_mylistview"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCListViewActivity;->R_layout(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCListViewActivity;->setContentView(I)V

    new-instance v0, Lcom/mchsdk/paysdk/d/a/a;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/d/a/a;-><init>()V

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/d/a/a;->a()V

    new-instance v1, Lcom/mchsdk/paysdk/d/a/b;

    invoke-direct {v1}, Lcom/mchsdk/paysdk/d/a/b;-><init>()V

    sput-object v1, Lcom/mchsdk/paysdk/activity/MCListViewActivity;->c:Lcom/mchsdk/paysdk/d/a/b;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/d/a/a;->c()Lcom/mchsdk/paysdk/d/a/b;

    move-result-object v1

    sput-object v1, Lcom/mchsdk/paysdk/activity/MCListViewActivity;->c:Lcom/mchsdk/paysdk/d/a/b;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/d/a/a;->b()V

    const-string v0, "list"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCListViewActivity;->R_id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCListViewActivity;->a:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/activity/MCListViewActivity;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCListViewActivity;->a:Landroid/widget/ListView;

    new-instance v2, Lcom/mchsdk/paysdk/adapter/f;

    invoke-direct {v2, p0, v0}, Lcom/mchsdk/paysdk/adapter/f;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string v0, "tv_qq"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCListViewActivity;->R_id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCListViewActivity;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCListViewActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/o;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    const-string v1, "#FFB400"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/o;->a(Landroid/text/SpannableString;I)Landroid/text/SpannableString;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCListViewActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCListViewActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

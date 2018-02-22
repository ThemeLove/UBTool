.class public Lcom/mchsdk/paysdk/adapter/a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mchsdk/paysdk/adapter/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsdk/pay/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsdk/pay/d/a;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/mchsdk/paysdk/adapter/a;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/mchsdk/paysdk/adapter/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    if-nez p2, :cond_a4

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/a;->b:Landroid/content/Context;

    const-string v2, "item_jft"

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/mchsdk/paysdk/adapter/a$a;

    invoke-direct {v1, v3}, Lcom/mchsdk/paysdk/adapter/a$a;-><init>(Lcom/mchsdk/paysdk/adapter/a$1;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/a;->b:Landroid/content/Context;

    const-string v2, "image_junpay_type"

    invoke-static {v0, v2}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/mchsdk/paysdk/adapter/a$a;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/a;->b:Landroid/content/Context;

    const-string v2, "TextView_junpay_type_name"

    invoke-static {v0, v2}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/mchsdk/paysdk/adapter/a$a;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/a;->b:Landroid/content/Context;

    const-string v2, "TextView_junpay_type_tips"

    invoke-static {v0, v2}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/mchsdk/paysdk/adapter/a$a;->c:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_51
    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/pay/d/a;

    invoke-virtual {v0}, Lsdk/pay/d/a;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_e6

    :pswitch_60
    iget-object v0, v1, Lcom/mchsdk/paysdk/adapter/a$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :goto_65
    :pswitch_65
    iget-object v2, v1, Lcom/mchsdk/paysdk/adapter/a$a;->b:Landroid/widget/TextView;

    const-string v3, "%s"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/pay/d/a;

    invoke-virtual {v0}, Lsdk/pay/d/a;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/pay/d/a;

    invoke-virtual {v0}, Lsdk/pay/d/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u6682\u65e0"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e4

    :goto_94
    iget-object v1, v1, Lcom/mchsdk/paysdk/adapter/a$a;->c:Landroid/widget/TextView;

    const-string v2, "%s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_a4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mchsdk/paysdk/adapter/a$a;

    move-object v1, v0

    goto :goto_51

    :pswitch_ac
    iget-object v0, v1, Lcom/mchsdk/paysdk/adapter/a$a;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mchsdk/paysdk/adapter/a;->b:Landroid/content/Context;

    const-string v3, "u43"

    invoke-static {v2, v3}, Lcom/mchsdk/paysdk/utils/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_65

    :pswitch_ba
    iget-object v0, v1, Lcom/mchsdk/paysdk/adapter/a$a;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mchsdk/paysdk/adapter/a;->b:Landroid/content/Context;

    const-string v3, "u29"

    invoke-static {v2, v3}, Lcom/mchsdk/paysdk/utils/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_65

    :pswitch_c8
    iget-object v0, v1, Lcom/mchsdk/paysdk/adapter/a$a;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mchsdk/paysdk/adapter/a;->b:Landroid/content/Context;

    const-string v3, "u11"

    invoke-static {v2, v3}, Lcom/mchsdk/paysdk/utils/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_65

    :pswitch_d6
    iget-object v0, v1, Lcom/mchsdk/paysdk/adapter/a$a;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mchsdk/paysdk/adapter/a;->b:Landroid/content/Context;

    const-string v3, "u12"

    invoke-static {v2, v3}, Lcom/mchsdk/paysdk/utils/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_65

    :cond_e4
    move-object v0, v2

    goto :goto_94

    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_65
        :pswitch_65
        :pswitch_ac
        :pswitch_ba
        :pswitch_65
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_c8
        :pswitch_d6
    .end packed-switch
.end method

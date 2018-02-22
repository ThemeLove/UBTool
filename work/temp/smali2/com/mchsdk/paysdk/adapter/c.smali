.class public Lcom/mchsdk/paysdk/adapter/c;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mchsdk/paysdk/adapter/c$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mchsdk/paysdk/e/h;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/mchsdk/paysdk/e/h;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/adapter/c;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/mchsdk/paysdk/adapter/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/mchsdk/paysdk/adapter/c;->b:Ljava/util/List;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/mchsdk/paysdk/adapter/c;->c:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_18

    :goto_7
    return-object p0

    :pswitch_8
    const-string p0, "\u5e73\u53f0\u5e01"

    goto :goto_7

    :pswitch_b
    const-string p0, "\u652f\u4ed8\u5b9d"

    goto :goto_7

    :pswitch_e
    const-string p0, "\u5fae\u4fe1"

    goto :goto_7

    :pswitch_11
    const-string p0, ""

    goto :goto_7

    :pswitch_14
    const-string p0, "\u805a\u5b9d\u4e91"

    goto :goto_7

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    const-string v0, "yy-MM-dd HH:mm:ss"

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    if-eqz p0, :cond_e

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_e
    const-string v0, ""

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2c
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/c;->b:Ljava/util/List;

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
    .registers 10

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mchsdk/paysdk/e/h;

    const-string v1, "MCGameRecordAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fun#getGameRecodeList  gameRecordEntity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/h;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_ab

    new-instance v2, Lcom/mchsdk/paysdk/adapter/c$a;

    invoke-direct {v2}, Lcom/mchsdk/paysdk/adapter/c$a;-><init>()V

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/c;->c:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/mchsdk/paysdk/adapter/c;->a:Landroid/content/Context;

    const-string v4, "item_mch_game_record"

    invoke-static {v3, v4}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/c;->a:Landroid/content/Context;

    const-string v3, "txt_mch_rocord_time"

    invoke-static {v1, v3}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/mchsdk/paysdk/adapter/c$a;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/c;->a:Landroid/content/Context;

    const-string v3, "txt_mch_rocord_money"

    invoke-static {v1, v3}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/mchsdk/paysdk/adapter/c$a;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/c;->a:Landroid/content/Context;

    const-string v3, "txt_mch_rocord_name"

    invoke-static {v1, v3}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/mchsdk/paysdk/adapter/c$a;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/c;->a:Landroid/content/Context;

    const-string v3, "txt_mch_rocord_type"

    invoke-static {v1, v3}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/mchsdk/paysdk/adapter/c$a;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_7e
    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/h;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/h;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/h;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lcom/mchsdk/paysdk/adapter/c$a;->a:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/mchsdk/paysdk/adapter/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/mchsdk/paysdk/adapter/c$a;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/mchsdk/paysdk/adapter/c$a;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/mchsdk/paysdk/adapter/c$a;->d:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/mchsdk/paysdk/adapter/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_ab
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mchsdk/paysdk/adapter/c$a;

    goto :goto_7e
.end method

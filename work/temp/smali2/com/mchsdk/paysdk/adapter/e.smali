.class public Lcom/mchsdk/paysdk/adapter/e;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mchsdk/paysdk/adapter/e$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/app/Activity;

.field c:Landroid/os/Handler;

.field d:Lcom/lidroid/xutils/BitmapUtils;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mchsdk/paysdk/e/f;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lcom/lidroid/xutils/BitmapUtils;Landroid/os/Handler;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/mchsdk/paysdk/e/f;",
            ">;",
            "Lcom/lidroid/xutils/BitmapUtils;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/adapter/e;->e:Ljava/util/List;

    iput-object p1, p0, Lcom/mchsdk/paysdk/adapter/e;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/mchsdk/paysdk/adapter/e;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/mchsdk/paysdk/adapter/e;->e:Ljava/util/List;

    iput-object p4, p0, Lcom/mchsdk/paysdk/adapter/e;->d:Lcom/lidroid/xutils/BitmapUtils;

    iput-object p5, p0, Lcom/mchsdk/paysdk/adapter/e;->c:Landroid/os/Handler;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/mchsdk/paysdk/adapter/e;->f:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/e;->e:Ljava/util/List;

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

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/e;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mchsdk/paysdk/e/f;

    if-nez p2, :cond_df

    new-instance v2, Lcom/mchsdk/paysdk/adapter/e$a;

    invoke-direct {v2}, Lcom/mchsdk/paysdk/adapter/e$a;-><init>()V

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/e;->f:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/mchsdk/paysdk/adapter/e;->a:Landroid/content/Context;

    const-string v4, "item_mch_packs"

    invoke-static {v3, v4}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/e;->a:Landroid/content/Context;

    const-string v3, "iv_mch_pack_image"

    invoke-static {v1, v3}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/mchsdk/paysdk/adapter/e$a;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/e;->a:Landroid/content/Context;

    const-string v3, "txt_mch_pack_name"

    invoke-static {v1, v3}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/mchsdk/paysdk/adapter/e$a;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/e;->a:Landroid/content/Context;

    const-string v3, "txt_mch_pack_effective"

    invoke-static {v1, v3}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/mchsdk/paysdk/adapter/e$a;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/e;->a:Landroid/content/Context;

    const-string v3, "txt_mch_pack_desc"

    invoke-static {v1, v3}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/mchsdk/paysdk/adapter/e$a;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/e;->a:Landroid/content/Context;

    const-string v3, "btn_mch_receive_pack"

    invoke-static {v1, v3}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v2, Lcom/mchsdk/paysdk/adapter/e$a;->e:Landroid/widget/Button;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_72
    iget-object v2, p0, Lcom/mchsdk/paysdk/adapter/e;->d:Lcom/lidroid/xutils/BitmapUtils;

    iget-object v3, v1, Lcom/mchsdk/paysdk/adapter/e$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/f;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;

    invoke-direct {v5}, Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Lcom/lidroid/xutils/BitmapUtils;->display(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V

    iget-object v2, v1, Lcom/mchsdk/paysdk/adapter/e$a;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mchsdk/paysdk/a/d;->a()Lcom/mchsdk/paysdk/a/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mchsdk/paysdk/a/d;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5269\u4f59\u6709\u6548\u671f\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/f;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u5929"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mchsdk/paysdk/adapter/e$a;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/mchsdk/paysdk/adapter/e$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/f;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/mchsdk/paysdk/adapter/e$a;->e:Landroid/widget/Button;

    new-instance v2, Lcom/mchsdk/paysdk/adapter/e$1;

    invoke-direct {v2, p0, v0}, Lcom/mchsdk/paysdk/adapter/e$1;-><init>(Lcom/mchsdk/paysdk/adapter/e;Lcom/mchsdk/paysdk/e/f;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_df
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mchsdk/paysdk/adapter/e$a;

    goto :goto_72
.end method

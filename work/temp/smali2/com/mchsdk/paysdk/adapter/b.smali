.class public Lcom/mchsdk/paysdk/adapter/b;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mchsdk/paysdk/adapter/b$a;
    }
.end annotation


# instance fields
.field a:Lcom/mchsdk/paysdk/adapter/b$a;

.field private b:Ljava/util/List;
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

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->a:Lcom/mchsdk/paysdk/adapter/b$a;

    iput-object p1, p0, Lcom/mchsdk/paysdk/adapter/b;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/mchsdk/paysdk/adapter/b;->b:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->b:Ljava/util/List;

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
    .registers 9

    const/4 v4, 0x4

    const/4 v3, 0x0

    if-nez p2, :cond_136

    new-instance v0, Lcom/mchsdk/paysdk/adapter/b$a;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/adapter/b$a;-><init>(Lcom/mchsdk/paysdk/adapter/b;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->a:Lcom/mchsdk/paysdk/adapter/b$a;

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->c:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/b;->d:Landroid/content/Context;

    const-string v2, "list_communicate"

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/b;->a:Lcom/mchsdk/paysdk/adapter/b$a;

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->d:Landroid/content/Context;

    const-string v2, "ll_left"

    invoke-static {v0, v2}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/mchsdk/paysdk/adapter/b$a;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/b;->a:Lcom/mchsdk/paysdk/adapter/b$a;

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->d:Landroid/content/Context;

    const-string v2, "iv_ico_left"

    invoke-static {v0, v2}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/mchsdk/paysdk/adapter/b$a;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/b;->a:Lcom/mchsdk/paysdk/adapter/b$a;

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->d:Landroid/content/Context;

    const-string v2, "tv_name_right"

    invoke-static {v0, v2}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/mchsdk/paysdk/adapter/b$a;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/b;->a:Lcom/mchsdk/paysdk/adapter/b$a;

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->d:Landroid/content/Context;

    const-string v2, "ll_message"

    invoke-static {v0, v2}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/mchsdk/paysdk/adapter/b$a;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/b;->a:Lcom/mchsdk/paysdk/adapter/b$a;

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->d:Landroid/content/Context;

    const-string v2, "tv_message"

    invoke-static {v0, v2}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/mchsdk/paysdk/adapter/b$a;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/b;->a:Lcom/mchsdk/paysdk/adapter/b$a;

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->d:Landroid/content/Context;

    const-string v2, "ll_right"

    invoke-static {v0, v2}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/mchsdk/paysdk/adapter/b$a;->f:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/b;->a:Lcom/mchsdk/paysdk/adapter/b$a;

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->d:Landroid/content/Context;

    const-string v2, "iv_ico_right"

    invoke-static {v0, v2}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/mchsdk/paysdk/adapter/b$a;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/b;->a:Lcom/mchsdk/paysdk/adapter/b$a;

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->d:Landroid/content/Context;

    const-string v2, "tv_name_right"

    invoke-static {v0, v2}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/mchsdk/paysdk/adapter/b$a;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->a:Lcom/mchsdk/paysdk/adapter/b$a;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_af
    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "me"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_140

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->a:Lcom/mchsdk/paysdk/adapter/b$a;

    iget-object v0, v0, Lcom/mchsdk/paysdk/adapter/b$a;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->a:Lcom/mchsdk/paysdk/adapter/b$a;

    iget-object v0, v0, Lcom/mchsdk/paysdk/adapter/b$a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->a:Lcom/mchsdk/paysdk/adapter/b$a;

    iget-object v0, v0, Lcom/mchsdk/paysdk/adapter/b$a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->a:Lcom/mchsdk/paysdk/adapter/b$a;

    iget-object v1, v0, Lcom/mchsdk/paysdk/adapter/b$a;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "iv_ico"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->a:Lcom/mchsdk/paysdk/adapter/b$a;

    iget-object v1, v0, Lcom/mchsdk/paysdk/adapter/b$a;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "tv_name"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->a:Lcom/mchsdk/paysdk/adapter/b$a;

    iget-object v0, v0, Lcom/mchsdk/paysdk/adapter/b$a;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/b;->d:Landroid/content/Context;

    const-string v2, "yzx_green_rightbubble"

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_11e
    :goto_11e
    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->a:Lcom/mchsdk/paysdk/adapter/b$a;

    iget-object v1, v0, Lcom/mchsdk/paysdk/adapter/b$a;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "tv_message"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_136
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mchsdk/paysdk/adapter/b$a;

    iput-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->a:Lcom/mchsdk/paysdk/adapter/b$a;

    goto/16 :goto_af

    :cond_140
    const-string v1, "oth"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11e

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->a:Lcom/mchsdk/paysdk/adapter/b$a;

    iget-object v0, v0, Lcom/mchsdk/paysdk/adapter/b$a;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->a:Lcom/mchsdk/paysdk/adapter/b$a;

    iget-object v0, v0, Lcom/mchsdk/paysdk/adapter/b$a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->a:Lcom/mchsdk/paysdk/adapter/b$a;

    iget-object v0, v0, Lcom/mchsdk/paysdk/adapter/b$a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->a:Lcom/mchsdk/paysdk/adapter/b$a;

    iget-object v1, v0, Lcom/mchsdk/paysdk/adapter/b$a;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "iv_ico"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->a:Lcom/mchsdk/paysdk/adapter/b$a;

    iget-object v1, v0, Lcom/mchsdk/paysdk/adapter/b$a;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "tv_name"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/b;->a:Lcom/mchsdk/paysdk/adapter/b$a;

    iget-object v0, v0, Lcom/mchsdk/paysdk/adapter/b$a;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/b;->d:Landroid/content/Context;

    const-string v2, "yzx_green_leftbubble"

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_11e
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

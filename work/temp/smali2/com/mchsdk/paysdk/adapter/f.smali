.class public Lcom/mchsdk/paysdk/adapter/f;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mchsdk/paysdk/adapter/f$a;
    }
.end annotation


# instance fields
.field a:Lcom/mchsdk/paysdk/adapter/f$a;

.field b:Lcom/mchsdk/paysdk/d/a/b;

.field private c:Ljava/util/List;
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

.field private d:Landroid/view/LayoutInflater;

.field private e:Landroid/content/Context;


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

    iput-object v0, p0, Lcom/mchsdk/paysdk/adapter/f;->a:Lcom/mchsdk/paysdk/adapter/f$a;

    iput-object p1, p0, Lcom/mchsdk/paysdk/adapter/f;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/mchsdk/paysdk/adapter/f;->c:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/adapter/f;->d:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/f;->e:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/f;->b:Lcom/mchsdk/paysdk/d/a/b;

    iget-object v0, v0, Lcom/mchsdk/paysdk/d/a/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mchsdk/paysdk/d/a/b;

    iget-object v0, v0, Lcom/mchsdk/paysdk/d/a/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/f;->b:Lcom/mchsdk/paysdk/d/a/b;

    iget-object v0, v0, Lcom/mchsdk/paysdk/d/a/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mchsdk/paysdk/d/a/b;

    iget-object v0, v0, Lcom/mchsdk/paysdk/d/a/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/mchsdk/paysdk/adapter/f$2;

    invoke-direct {v2, p0}, Lcom/mchsdk/paysdk/adapter/f$2;-><init>(Lcom/mchsdk/paysdk/adapter/f;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/f;->c:Ljava/util/List;

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
    .registers 7

    if-nez p2, :cond_c4

    new-instance v0, Lcom/mchsdk/paysdk/adapter/f$a;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/adapter/f$a;-><init>(Lcom/mchsdk/paysdk/adapter/f;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/adapter/f;->a:Lcom/mchsdk/paysdk/adapter/f$a;

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/f;->d:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/f;->e:Landroid/content/Context;

    const-string v2, "list"

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/f;->a:Lcom/mchsdk/paysdk/adapter/f$a;

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/f;->e:Landroid/content/Context;

    const-string v2, "image"

    invoke-static {v0, v2}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/mchsdk/paysdk/adapter/f$a;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/f;->a:Lcom/mchsdk/paysdk/adapter/f$a;

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/f;->e:Landroid/content/Context;

    const-string v2, "title"

    invoke-static {v0, v2}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/mchsdk/paysdk/adapter/f$a;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/f;->a:Lcom/mchsdk/paysdk/adapter/f$a;

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/f;->e:Landroid/content/Context;

    const-string v2, "view"

    invoke-static {v0, v2}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/mchsdk/paysdk/adapter/f$a;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/f;->a:Lcom/mchsdk/paysdk/adapter/f$a;

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/f;->e:Landroid/content/Context;

    const-string v2, "info"

    invoke-static {v0, v2}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/mchsdk/paysdk/adapter/f$a;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/f;->a:Lcom/mchsdk/paysdk/adapter/f$a;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_65
    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/f;->a:Lcom/mchsdk/paysdk/adapter/f$a;

    iget-object v1, v0, Lcom/mchsdk/paysdk/adapter/f$a;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "image"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/f;->a:Lcom/mchsdk/paysdk/adapter/f$a;

    iget-object v1, v0, Lcom/mchsdk/paysdk/adapter/f$a;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "title"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/f;->a:Lcom/mchsdk/paysdk/adapter/f$a;

    iget-object v1, v0, Lcom/mchsdk/paysdk/adapter/f$a;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "info"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/f;->a:Lcom/mchsdk/paysdk/adapter/f$a;

    iget-object v0, v0, Lcom/mchsdk/paysdk/adapter/f$a;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/f;->a:Lcom/mchsdk/paysdk/adapter/f$a;

    iget-object v0, v0, Lcom/mchsdk/paysdk/adapter/f$a;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/mchsdk/paysdk/adapter/f$1;

    invoke-direct {v1, p0, p1}, Lcom/mchsdk/paysdk/adapter/f$1;-><init>(Lcom/mchsdk/paysdk/adapter/f;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_c4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mchsdk/paysdk/adapter/f$a;

    iput-object v0, p0, Lcom/mchsdk/paysdk/adapter/f;->a:Lcom/mchsdk/paysdk/adapter/f$a;

    goto :goto_65
.end method

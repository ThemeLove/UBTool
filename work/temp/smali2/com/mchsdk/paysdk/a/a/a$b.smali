.class Lcom/mchsdk/paysdk/a/a/a$b;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/a/a/a;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/a/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/a/a/a$b;->a:Lcom/mchsdk/paysdk/a/a/a;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/a/a$b;->a:Lcom/mchsdk/paysdk/a/a/a;

    invoke-static {v0}, Lcom/mchsdk/paysdk/a/a/a;->a(Lcom/mchsdk/paysdk/a/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/a/a$b;->a:Lcom/mchsdk/paysdk/a/a/a;

    invoke-static {v0}, Lcom/mchsdk/paysdk/a/a/a;->a(Lcom/mchsdk/paysdk/a/a/a;)Ljava/util/List;

    move-result-object v0

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

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_8a

    new-instance v1, Lcom/mchsdk/paysdk/a/a/a$a;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/a/a$b;->a:Lcom/mchsdk/paysdk/a/a/a;

    invoke-direct {v1, v0}, Lcom/mchsdk/paysdk/a/a/a$a;-><init>(Lcom/mchsdk/paysdk/a/a/a;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/a/a$b;->a:Lcom/mchsdk/paysdk/a/a/a;

    iget-object v0, v0, Lcom/mchsdk/paysdk/a/a/a;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v3, p0, Lcom/mchsdk/paysdk/a/a/a$b;->a:Lcom/mchsdk/paysdk/a/a/a;

    iget-object v3, v3, Lcom/mchsdk/paysdk/a/a/a;->a:Landroid/app/Activity;

    const-string v4, "layout"

    const-string v5, "item_spinner_numbers"

    invoke-static {v3, v4, v5}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/a/a$b;->a:Lcom/mchsdk/paysdk/a/a/a;

    iget-object v0, v0, Lcom/mchsdk/paysdk/a/a/a;->a:Landroid/app/Activity;

    const-string v3, "id"

    const-string v4, "tv_number"

    invoke-static {v0, v3, v4}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/mchsdk/paysdk/a/a/a$a;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/a/a$b;->a:Lcom/mchsdk/paysdk/a/a/a;

    iget-object v0, v0, Lcom/mchsdk/paysdk/a/a/a;->a:Landroid/app/Activity;

    const-string v3, "id"

    const-string v4, "ib_delete"

    invoke-static {v0, v3, v4}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Lcom/mchsdk/paysdk/a/a/a$a;->b:Landroid/widget/ImageButton;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_54
    iget-object v3, v1, Lcom/mchsdk/paysdk/a/a/a$a;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/a/a$b;->a:Lcom/mchsdk/paysdk/a/a/a;

    invoke-static {v0}, Lcom/mchsdk/paysdk/a/a/a;->a(Lcom/mchsdk/paysdk/a/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/mchsdk/paysdk/a/a/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v1, Lcom/mchsdk/paysdk/a/a/a$a;->b:Landroid/widget/ImageButton;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/mchsdk/paysdk/a/a/a$a;->b:Landroid/widget/ImageButton;

    new-instance v1, Lcom/mchsdk/paysdk/a/a/a$b$1;

    invoke-direct {v1, p0, v2}, Lcom/mchsdk/paysdk/a/a/a$b$1;-><init>(Lcom/mchsdk/paysdk/a/a/a$b;Ljava/lang/StringBuffer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_8a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mchsdk/paysdk/a/a/a$a;

    move-object v1, v0

    goto :goto_54
.end method

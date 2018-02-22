.class public Lcom/mchsdk/paysdk/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mchsdk/paysdk/a/a/a$a;,
        Lcom/mchsdk/paysdk/a/a/a$b;
    }
.end annotation


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Landroid/widget/EditText;

.field public c:Landroid/widget/EditText;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/mchsdk/paysdk/a/a/a$b;

.field private f:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/a/a;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/a/a/a;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/a/a;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/a/a/a;)Lcom/mchsdk/paysdk/a/a/a$b;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/a/a;->e:Lcom/mchsdk/paysdk/a/a/a$b;

    return-object v0
.end method

.method static synthetic c(Lcom/mchsdk/paysdk/a/a/a;)Landroid/widget/PopupWindow;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/a/a;->f:Landroid/widget/PopupWindow;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 9

    const/4 v7, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/mchsdk/paysdk/d/b;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/a/a;->a:Landroid/app/Activity;

    invoke-direct {v2, v0}, Lcom/mchsdk/paysdk/d/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/d/b;->a()V

    :try_start_c
    invoke-virtual {v2}, Lcom/mchsdk/paysdk/d/b;->c()[Lcom/mchsdk/paysdk/d/d;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_12
    if-ge v0, v4, :cond_20

    aget-object v5, v3, v0

    iget-object v6, p0, Lcom/mchsdk/paysdk/a/a/a;->d:Ljava/util/List;

    iget-object v5, v5, Lcom/mchsdk/paysdk/d/d;->b:Ljava/lang/String;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_20
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/a/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_29

    :goto_28
    return-void

    :cond_29
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_2f
    iget-object v4, p0, Lcom/mchsdk/paysdk/a/a/a;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_4c

    iget-object v4, p0, Lcom/mchsdk/paysdk/a/a/a;->d:Ljava/util/List;

    iget-object v5, p0, Lcom/mchsdk/paysdk/a/a/a;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_4c
    iput-object v3, p0, Lcom/mchsdk/paysdk/a/a/a;->d:Ljava/util/List;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_4e} :catch_a9

    :goto_4e
    invoke-virtual {v2}, Lcom/mchsdk/paysdk/d/b;->b()V

    new-instance v0, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/mchsdk/paysdk/a/a/a;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/mchsdk/paysdk/a/a/a;->a:Landroid/app/Activity;

    const-string v3, "drawable"

    const-string v4, "icon_spinner_listview_background"

    invoke-static {v2, v3, v4}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Lcom/mchsdk/paysdk/a/a/a$b;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/a/a/a$b;-><init>(Lcom/mchsdk/paysdk/a/a/a;)V

    iput-object v1, p0, Lcom/mchsdk/paysdk/a/a/a;->e:Lcom/mchsdk/paysdk/a/a/a$b;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/a/a;->e:Lcom/mchsdk/paysdk/a/a/a$b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/mchsdk/paysdk/a/a/a;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    const/16 v3, 0xc8

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/mchsdk/paysdk/a/a/a;->f:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/a/a;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/a/a;->f:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/a/a;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/a/a;->f:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/a/a;->b:Landroid/widget/EditText;

    const/4 v2, 0x2

    const/4 v3, -0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_28

    :catch_a9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4e
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/a/a;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/a/a;->d:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/mchsdk/paysdk/d/b;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/a/a;->a:Landroid/app/Activity;

    invoke-direct {v2, v0}, Lcom/mchsdk/paysdk/d/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/d/b;->a()V

    const/4 v1, 0x0

    :try_start_18
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/a/a;->d:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/mchsdk/paysdk/d/b;->b(Ljava/lang/String;)Lcom/mchsdk/paysdk/d/d;

    move-result-object v0

    iget-object v0, v0, Lcom/mchsdk/paysdk/d/d;->c:Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_26} :catch_34

    :goto_26
    invoke-virtual {v2}, Lcom/mchsdk/paysdk/d/b;->b()V

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/a/a;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/a/a;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :catch_34
    move-exception v0

    move-object v0, v1

    goto :goto_26
.end method

.class Lcom/mchsdk/paysdk/a/a/a$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/a/a/a$b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/StringBuffer;

.field final synthetic b:Lcom/mchsdk/paysdk/a/a/a$b;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/a/a/a$b;Ljava/lang/StringBuffer;)V
    .registers 3

    iput-object p1, p0, Lcom/mchsdk/paysdk/a/a/a$b$1;->b:Lcom/mchsdk/paysdk/a/a/a$b;

    iput-object p2, p0, Lcom/mchsdk/paysdk/a/a/a$b$1;->a:Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/a/a$b$1;->b:Lcom/mchsdk/paysdk/a/a/a$b;

    iget-object v1, v1, Lcom/mchsdk/paysdk/a/a/a$b;->a:Lcom/mchsdk/paysdk/a/a/a;

    invoke-static {v1}, Lcom/mchsdk/paysdk/a/a/a;->a(Lcom/mchsdk/paysdk/a/a/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/a/a$b$1;->b:Lcom/mchsdk/paysdk/a/a/a$b;

    iget-object v0, v0, Lcom/mchsdk/paysdk/a/a/a$b;->a:Lcom/mchsdk/paysdk/a/a/a;

    invoke-static {v0}, Lcom/mchsdk/paysdk/a/a/a;->b(Lcom/mchsdk/paysdk/a/a/a;)Lcom/mchsdk/paysdk/a/a/a$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/a/a$b;->notifyDataSetChanged()V

    new-instance v0, Lcom/mchsdk/paysdk/d/b;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/a/a$b$1;->b:Lcom/mchsdk/paysdk/a/a/a$b;

    iget-object v1, v1, Lcom/mchsdk/paysdk/a/a/a$b;->a:Lcom/mchsdk/paysdk/a/a/a;

    iget-object v1, v1, Lcom/mchsdk/paysdk/a/a/a;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/mchsdk/paysdk/d/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/d/b;->a()V

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/a/a$b$1;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/d/b;->a(Ljava/lang/String;)J

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/d/b;->b()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/a/a$b$1;->b:Lcom/mchsdk/paysdk/a/a/a$b;

    iget-object v0, v0, Lcom/mchsdk/paysdk/a/a/a$b;->a:Lcom/mchsdk/paysdk/a/a/a;

    invoke-static {v0}, Lcom/mchsdk/paysdk/a/a/a;->a(Lcom/mchsdk/paysdk/a/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/a/a$b$1;->b:Lcom/mchsdk/paysdk/a/a/a$b;

    iget-object v0, v0, Lcom/mchsdk/paysdk/a/a/a$b;->a:Lcom/mchsdk/paysdk/a/a/a;

    invoke-static {v0}, Lcom/mchsdk/paysdk/a/a/a;->c(Lcom/mchsdk/paysdk/a/a/a;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_53
    return-void
.end method

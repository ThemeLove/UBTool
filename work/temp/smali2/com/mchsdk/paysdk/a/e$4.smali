.class Lcom/mchsdk/paysdk/a/e$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/a/e;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/a/e;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/a/e$4;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$4;->a:Lcom/mchsdk/paysdk/a/e;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/a/e;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$4;->a:Lcom/mchsdk/paysdk/a/e;

    const-string v1, "\u652f\u4ed8\u53d6\u6d88"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/a/e;->a(Lcom/mchsdk/paysdk/a/e;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$4;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v0}, Lcom/mchsdk/paysdk/a/e;->a(Lcom/mchsdk/paysdk/a/e;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

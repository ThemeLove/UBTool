.class Lcom/mchsdk/open/MCApiFactory$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/open/MCApiFactory$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/open/MCApiFactory$2;


# direct methods
.method constructor <init>(Lcom/mchsdk/open/MCApiFactory$2;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/open/MCApiFactory$2$1;->a:Lcom/mchsdk/open/MCApiFactory$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory$2$1;->a:Lcom/mchsdk/open/MCApiFactory$2;

    iget-object v0, v0, Lcom/mchsdk/open/MCApiFactory$2;->a:Lcom/mchsdk/open/MCApiFactory;

    # getter for: Lcom/mchsdk/open/MCApiFactory;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mchsdk/open/MCApiFactory;->access$000(Lcom/mchsdk/open/MCApiFactory;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8fd4\u56de\u6e38\u620f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

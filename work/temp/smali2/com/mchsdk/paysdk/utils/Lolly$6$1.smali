.class Lcom/mchsdk/paysdk/utils/Lolly$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/utils/Lolly$6;->a([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/utils/Lolly$6;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/utils/Lolly$6;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/utils/Lolly$6$1;->a:Lcom/mchsdk/paysdk/utils/Lolly$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$6$1;->a:Lcom/mchsdk/paysdk/utils/Lolly$6;

    iget-object v0, v0, Lcom/mchsdk/paysdk/utils/Lolly$6;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/Lolly;->a(Lcom/mchsdk/paysdk/utils/Lolly;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$6$1;->a:Lcom/mchsdk/paysdk/utils/Lolly$6;

    iget-object v0, v0, Lcom/mchsdk/paysdk/utils/Lolly$6;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/Lolly;->c(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/widget/ListView;

    move-result-object v0

    sget-object v1, Lcom/mchsdk/paysdk/utils/Lolly;->a:Lcom/mchsdk/paysdk/utils/Lolly$a;

    invoke-virtual {v1}, Lcom/mchsdk/paysdk/utils/Lolly$a;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_1b
    return-void
.end method

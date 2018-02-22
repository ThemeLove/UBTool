.class Lcom/mchsdk/paysdk/server/MCHFloatService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/server/MCHFloatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/server/MCHFloatService;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/server/MCHFloatService;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$1;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$1;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    iget-object v0, v0, Lcom/mchsdk/paysdk/server/MCHFloatService;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$1;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-static {v0}, Lcom/mchsdk/paysdk/server/MCHFloatService;->a(Lcom/mchsdk/paysdk/server/MCHFloatService;)V

    :cond_f
    return-void
.end method

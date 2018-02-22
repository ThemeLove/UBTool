.class Lcom/mchsdk/open/MCApiFactory$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/open/MCApiFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/open/MCApiFactory;


# direct methods
.method constructor <init>(Lcom/mchsdk/open/MCApiFactory;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/open/MCApiFactory$1;->a:Lcom/mchsdk/open/MCApiFactory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.class Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$2;->a:Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$2;->a:Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->dismissAllowingStateLoss()V

    return-void
.end method

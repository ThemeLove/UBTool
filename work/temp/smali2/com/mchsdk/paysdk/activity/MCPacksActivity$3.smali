.class Lcom/mchsdk/paysdk/activity/MCPacksActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/activity/MCPacksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/MCPacksActivity;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/MCPacksActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCPacksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCPacksActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->finish()V

    const/4 v0, 0x0

    return v0
.end method

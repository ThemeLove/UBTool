.class Lcom/mchsdk/paysdk/activity/MCGameRecordActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->a(Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;)Lcom/mchsdk/paysdk/view/xlist/XListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->b()V

    return-void
.end method

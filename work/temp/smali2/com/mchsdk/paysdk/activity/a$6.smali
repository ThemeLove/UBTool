.class Lcom/mchsdk/paysdk/activity/a$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mchsdk/paysdk/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/activity/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/a;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/a;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/a$6;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a$6;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-virtual {v0, p1, p2}, Lcom/mchsdk/paysdk/activity/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a$6;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v0, p3}, Lcom/mchsdk/paysdk/activity/a;->b(Lcom/mchsdk/paysdk/activity/a;Z)Z

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a$6;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v0, p1, p2}, Lcom/mchsdk/paysdk/activity/a;->b(Lcom/mchsdk/paysdk/activity/a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    return-void
.end method

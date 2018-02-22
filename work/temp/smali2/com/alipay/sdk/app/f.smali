.class final Lcom/alipay/sdk/app/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/d;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/d;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/app/f;->a:Lcom/alipay/sdk/app/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/alipay/sdk/app/f;->a:Lcom/alipay/sdk/app/d;

    iget-object v0, v0, Lcom/alipay/sdk/app/d;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    iget-object v0, p0, Lcom/alipay/sdk/app/f;->a:Lcom/alipay/sdk/app/d;

    iget-object v0, v0, Lcom/alipay/sdk/app/d;->b:Lcom/alipay/sdk/app/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/sdk/app/c;->a(Lcom/alipay/sdk/app/c;Z)Z

    invoke-static {}, Lcom/alipay/sdk/app/i;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/sdk/app/i;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/sdk/app/f;->a:Lcom/alipay/sdk/app/d;

    iget-object v0, v0, Lcom/alipay/sdk/app/d;->b:Lcom/alipay/sdk/app/c;

    invoke-static {v0}, Lcom/alipay/sdk/app/c;->a(Lcom/alipay/sdk/app/c;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

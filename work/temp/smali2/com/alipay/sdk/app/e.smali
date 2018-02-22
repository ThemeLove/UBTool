.class final Lcom/alipay/sdk/app/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/d;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/d;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/app/e;->a:Lcom/alipay/sdk/app/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/alipay/sdk/app/e;->a:Lcom/alipay/sdk/app/d;

    iget-object v0, v0, Lcom/alipay/sdk/app/d;->b:Lcom/alipay/sdk/app/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/sdk/app/c;->a(Lcom/alipay/sdk/app/c;Z)Z

    iget-object v0, p0, Lcom/alipay/sdk/app/e;->a:Lcom/alipay/sdk/app/d;

    iget-object v0, v0, Lcom/alipay/sdk/app/d;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

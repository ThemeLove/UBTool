.class public final Lsdk/pay/e/l;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static b:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lsdk/pay/e/l;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lsdk/pay/e/l;->b:Landroid/widget/Toast;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lsdk/pay/e/l;->b:Landroid/widget/Toast;

    :goto_b
    sget-object v0, Lsdk/pay/e/l;->b:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_11
    sget-object v0, Lsdk/pay/e/l;->b:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b
.end method

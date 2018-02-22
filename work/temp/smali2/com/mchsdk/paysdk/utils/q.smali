.class public Lcom/mchsdk/paysdk/utils/q;
.super Ljava/lang/Object;


# static fields
.field protected static a:Landroid/widget/Toast;

.field private static b:Ljava/lang/String;

.field private static c:J

.field private static d:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/mchsdk/paysdk/utils/q;->a:Landroid/widget/Toast;

    sput-wide v1, Lcom/mchsdk/paysdk/utils/q;->c:J

    sput-wide v1, Lcom/mchsdk/paysdk/utils/q;->d:J

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/mchsdk/paysdk/utils/q;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/mchsdk/paysdk/utils/q;->a:Landroid/widget/Toast;

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/mchsdk/paysdk/utils/q;->a:Landroid/widget/Toast;

    sget-object v0, Lcom/mchsdk/paysdk/utils/q;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/mchsdk/paysdk/utils/q;->c:J

    :cond_16
    :goto_16
    sget-wide v0, Lcom/mchsdk/paysdk/utils/q;->d:J

    sput-wide v0, Lcom/mchsdk/paysdk/utils/q;->c:J

    return-void

    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/mchsdk/paysdk/utils/q;->d:J

    sget-object v0, Lcom/mchsdk/paysdk/utils/q;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    sget-wide v0, Lcom/mchsdk/paysdk/utils/q;->d:J

    sget-wide v2, Lcom/mchsdk/paysdk/utils/q;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    sget-object v0, Lcom/mchsdk/paysdk/utils/q;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_16

    :cond_3a
    sput-object p1, Lcom/mchsdk/paysdk/utils/q;->b:Ljava/lang/String;

    sget-object v0, Lcom/mchsdk/paysdk/utils/q;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/mchsdk/paysdk/utils/q;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_16
.end method

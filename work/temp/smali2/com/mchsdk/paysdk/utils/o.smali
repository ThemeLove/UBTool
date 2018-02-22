.class public Lcom/mchsdk/paysdk/utils/o;
.super Ljava/lang/Object;


# static fields
.field static a:Landroid/text/SpannableString;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "\u5b57\u4f53\u6d4b\u8bd5\u5b57\u4f53\u5927\u5c0f\u4e00\u534a\u4e24\u500d\u524d\u666f\u8272\u80cc\u666f\u8272\u6b63\u5e38\u7c97\u4f53\u659c\u4f53\u7c97\u659c\u4f53\u4e0b\u5212\u7ebf\u5220\u9664\u7ebfx1x2\u7535\u8bdd\u90ae\u4ef6\u7f51\u7ad9\u77ed\u4fe1\u5f69\u4fe1\u5730\u56feX\u8f74\u7efc\u5408/bot"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Lcom/mchsdk/paysdk/utils/o;->a:Landroid/text/SpannableString;

    return-void
.end method

.method public static a(Landroid/text/SpannableString;I)Landroid/text/SpannableString;
    .registers 6

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object p0
.end method

.method public static a(Landroid/text/SpannableString;III)Landroid/text/SpannableString;
    .registers 6

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v1, 0x21

    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Landroid/text/SpannableString;
    .registers 6

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

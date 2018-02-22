.class public Lcom/mchsdk/paysdk/utils/Lolly$a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/utils/Lolly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mchsdk/paysdk/utils/Lolly$a$a;
    }
.end annotation


# instance fields
.field a:Landroid/text/style/ForegroundColorSpan;

.field b:Landroid/text/style/ForegroundColorSpan;

.field c:Landroid/text/style/ForegroundColorSpan;

.field d:Landroid/text/style/ForegroundColorSpan;

.field e:Landroid/text/style/ForegroundColorSpan;

.field private f:Landroid/content/Context;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/lang/String;

.field private q:Ljava/lang/Object;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "            "

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->p:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->q:Ljava/lang/Object;

    const-string v0, "V"

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->r:Ljava/lang/String;

    const-string v0, "SDK3.0"

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->s:Ljava/lang/String;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/high16 v1, -0x10000

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->a:Landroid/text/style/ForegroundColorSpan;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->b:Landroid/text/style/ForegroundColorSpan;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0xffff01

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->c:Landroid/text/style/ForegroundColorSpan;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0xff0100

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->d:Landroid/text/style/ForegroundColorSpan;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/16 v1, -0x100

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->e:Landroid/text/style/ForegroundColorSpan;

    iput-object p1, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->f:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->k:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->m:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->l:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->n:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->o:Ljava/util/List;

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->i:Ljava/util/List;

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->g:Ljava/util/List;

    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 3

    const-string v0, "V"

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1f
    return-object v0

    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f
.end method

.method private d(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 7

    const/16 v4, 0x21

    const/4 v3, 0x0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "D/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->c:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_19
    :goto_19
    return-object v0

    :cond_1a
    const-string v1, "System.err"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->a:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_19

    :cond_2c
    const-string v1, "E/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->a:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_19

    :cond_3e
    const-string v1, "W/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->e:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_19

    :cond_50
    const-string v1, "A/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->d:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_19

    :cond_62
    const-string v1, "I/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->b:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_19
.end method

.method private e(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "D/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    const-string v0, "I/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    const-string v0, "W/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    const-string v0, "E/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_39
    const-string v0, "A/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_46
    const-string v0, "System.err"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_53
    invoke-direct {p0}, Lcom/mchsdk/paysdk/utils/Lolly$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->s:Ljava/lang/String;

    const-string v1, "All"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6c
    invoke-virtual {p0}, Lcom/mchsdk/paysdk/utils/Lolly$a;->notifyDataSetChanged()V

    return-void
.end method

.method private f(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_5c

    :cond_8
    :goto_8
    packed-switch v0, :pswitch_data_76

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->h:Ljava/util/List;

    :goto_d
    return-object v0

    :sswitch_e
    const-string v1, "V"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    :sswitch_18
    const-string v1, "D"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :sswitch_22
    const-string v1, "I"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x2

    goto :goto_8

    :sswitch_2c
    const-string v1, "W"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x3

    goto :goto_8

    :sswitch_36
    const-string v1, "E"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x4

    goto :goto_8

    :sswitch_40
    const-string v1, "A"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x5

    goto :goto_8

    :pswitch_4a
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->h:Ljava/util/List;

    goto :goto_d

    :pswitch_4d
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->i:Ljava/util/List;

    goto :goto_d

    :pswitch_50
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->j:Ljava/util/List;

    goto :goto_d

    :pswitch_53
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->k:Ljava/util/List;

    goto :goto_d

    :pswitch_56
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->l:Ljava/util/List;

    goto :goto_d

    :pswitch_59
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->m:Ljava/util/List;

    goto :goto_d

    :sswitch_data_5c
    .sparse-switch
        0x41 -> :sswitch_40
        0x44 -> :sswitch_18
        0x45 -> :sswitch_36
        0x49 -> :sswitch_22
        0x56 -> :sswitch_e
        0x57 -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_4d
        :pswitch_50
        :pswitch_53
        :pswitch_56
        :pswitch_59
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->h:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const-string v1, "System.err"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->n:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    :goto_16
    return v0

    :cond_17
    const-string v1, "at"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "at"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->n:Ljava/util/List;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_2f
    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->n:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_35
    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->h:Ljava/util/List;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_8a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v0

    :goto_47
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7e

    if-eqz v1, :cond_6c

    const-string v0, "            "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_68
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_47

    :cond_6c
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_68

    :cond_7e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/utils/Lolly$a;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_8a
    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/utils/Lolly$a;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_16
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/utils/Lolly$a;->notifyDataSetChanged()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->r:Ljava/lang/String;

    const-string v0, "V"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->h:Ljava/util/List;

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->g:Ljava/util/List;

    :cond_11
    const-string v0, "D"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->i:Ljava/util/List;

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->g:Ljava/util/List;

    :cond_1d
    const-string v0, "I"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->j:Ljava/util/List;

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->g:Ljava/util/List;

    :cond_29
    const-string v0, "W"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->k:Ljava/util/List;

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->g:Ljava/util/List;

    :cond_35
    const-string v0, "E"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->l:Ljava/util/List;

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->g:Ljava/util/List;

    :cond_41
    const-string v0, "A"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->m:Ljava/util/List;

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->g:Ljava/util/List;

    :cond_4d
    invoke-virtual {p0}, Lcom/mchsdk/paysdk/utils/Lolly$a;->notifyDataSetChanged()V

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_61

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->s:Ljava/lang/String;

    const-string v1, "All"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->s:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/utils/Lolly$a;->c(Ljava/lang/String;)V

    :cond_60
    return-void

    :catchall_61
    move-exception v0

    :try_start_62
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->s:Ljava/lang/String;

    const-string v0, "All"

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->r:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/utils/Lolly$a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_16
    return-void

    :cond_17
    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1a
    invoke-direct {p0}, Lcom/mchsdk/paysdk/utils/Lolly$a;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->r:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/utils/Lolly$a;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->g:Ljava/util/List;

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_31
    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_31

    iget-object v4, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->o:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :catchall_49
    move-exception v0

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_1a .. :try_end_4b} :catchall_49

    throw v0

    :cond_4c
    :try_start_4c
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->o:Ljava/util/List;

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->g:Ljava/util/List;

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/utils/Lolly$a;->notifyDataSetChanged()V

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_4c .. :try_end_54} :catchall_49

    goto :goto_16
.end method

.method public getCount()I
    .registers 3

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->g:Ljava/util/List;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    :goto_e
    return v0

    :cond_f
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    const/4 v3, -0x1

    if-nez p2, :cond_25

    new-instance v0, Lcom/mchsdk/paysdk/utils/Lolly$a$a;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/utils/Lolly$a$a;-><init>(Lcom/mchsdk/paysdk/utils/Lolly$a;)V

    new-instance p2, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->f:Landroid/content/Context;

    invoke-direct {p2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x2

    const/high16 v2, 0x41300000

    invoke-virtual {p2, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object p2, v0, Lcom/mchsdk/paysdk/utils/Lolly$a$a;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_25
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mchsdk/paysdk/utils/Lolly$a$a;

    iget-object v1, v0, Lcom/mchsdk/paysdk/utils/Lolly$a$a;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$a;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/utils/Lolly$a;->d(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

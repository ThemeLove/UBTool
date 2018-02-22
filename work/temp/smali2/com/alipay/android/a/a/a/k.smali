.class public final Lcom/alipay/android/a/a/a/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/a/a/a/k$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "([0-9]{1,2})[- ]([A-Za-z]{3,9})[- ]([0-9]{2,4})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/a/a/a/k;->a:Ljava/util/regex/Pattern;

    const-string v0, "[ ]([A-Za-z]{3,9})[ ]+([0-9]{1,2})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/a/a/a/k;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .registers 10

    const/4 v8, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/alipay/android/a/a/a/k;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/a/a/a/k;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/a/a/a/k;->c(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/a/a/a/k;->d(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/a/a/a/k;->e(Ljava/lang/String;)Lcom/alipay/android/a/a/a/k$a;

    move-result-object v0

    move-object v3, v0

    move v0, v1

    :goto_33
    const/16 v1, 0x7f6

    if-lt v6, v1, :cond_84

    const/16 v6, 0x7f6

    move v5, v7

    :goto_3a
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget v1, v3, Lcom/alipay/android/a/a/a/k$a;->c:I

    iget v2, v3, Lcom/alipay/android/a/a/a/k$a;->b:I

    iget v3, v3, Lcom/alipay/android/a/a/a/k$a;->a:I

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    return-wide v0

    :cond_4f
    sget-object v0, Lcom/alipay/android/a/a/a/k;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/a/a/a/k;->c(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/a/a/a/k;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/a/a/a/k;->e(Ljava/lang/String;)Lcom/alipay/android/a/a/a/k$a;

    move-result-object v0

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/a/a/a/k;->d(Ljava/lang/String;)I

    move-result v6

    move-object v3, v0

    move v0, v1

    goto :goto_33

    :cond_7e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_84
    move v4, v0

    goto :goto_3a
.end method

.method private static b(Ljava/lang/String;)I
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    :goto_18
    return v0

    :cond_19
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    goto :goto_18
.end method

.method private static c(Ljava/lang/String;)I
    .registers 6

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    add-int/2addr v3, v4

    add-int/lit16 v3, v3, -0x123

    sparse-switch v3, :sswitch_data_42

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :sswitch_28
    move v0, v1

    :goto_29
    :sswitch_29
    return v0

    :sswitch_2a
    move v0, v2

    goto :goto_29

    :sswitch_2c
    const/4 v0, 0x3

    goto :goto_29

    :sswitch_2e
    const/4 v0, 0x4

    goto :goto_29

    :sswitch_30
    const/4 v0, 0x5

    goto :goto_29

    :sswitch_32
    const/4 v0, 0x6

    goto :goto_29

    :sswitch_34
    const/4 v0, 0x7

    goto :goto_29

    :sswitch_36
    const/16 v0, 0x8

    goto :goto_29

    :sswitch_39
    const/16 v0, 0x9

    goto :goto_29

    :sswitch_3c
    const/16 v0, 0xa

    goto :goto_29

    :sswitch_3f
    const/16 v0, 0xb

    goto :goto_29

    :sswitch_data_42
    .sparse-switch
        0x9 -> :sswitch_3f
        0xa -> :sswitch_28
        0x16 -> :sswitch_29
        0x1a -> :sswitch_34
        0x1d -> :sswitch_2a
        0x20 -> :sswitch_2c
        0x23 -> :sswitch_39
        0x24 -> :sswitch_2e
        0x25 -> :sswitch_36
        0x28 -> :sswitch_32
        0x2a -> :sswitch_30
        0x30 -> :sswitch_3c
    .end sparse-switch
.end method

.method private static d(Ljava/lang/String;)I
    .registers 7

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_23

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    const/16 v1, 0x46

    if-lt v0, v1, :cond_20

    add-int/lit16 v0, v0, 0x76c

    :goto_1f
    return v0

    :cond_20
    add-int/lit16 v0, v0, 0x7d0

    goto :goto_1f

    :cond_23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v5, :cond_44

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x76c

    goto :goto_1f

    :cond_44
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6d

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    goto :goto_1f

    :cond_6d
    const/16 v0, 0x7b2

    goto :goto_1f
.end method

.method private static e(Ljava/lang/String;)Lcom/alipay/android/a/a/a/k$a;
    .registers 5

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3a

    if-eq v1, v3, :cond_48

    mul-int/lit8 v0, v0, 0xa

    const/4 v1, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v0, v2

    :goto_1a
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    new-instance v3, Lcom/alipay/android/a/a/a/k$a;

    invoke-direct {v3, v0, v1, v2}, Lcom/alipay/android/a/a/a/k$a;-><init>(III)V

    return-object v3

    :cond_48
    move v1, v2

    goto :goto_1a
.end method

.class public Lcom/mchsdk/paysdk/h/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/EditText;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mchsdk/paysdk/h/a;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/mchsdk/paysdk/h/a;->b:Landroid/widget/Button;

    iput-object p3, p0, Lcom/mchsdk/paysdk/h/a;->c:Landroid/widget/EditText;

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/16 v1, 0x8

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_c

    if-lt v0, v1, :cond_14

    :cond_c
    if-gez v0, :cond_29

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v1, :cond_29

    :cond_14
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_28
    return-object v0

    :cond_29
    const-string v0, "0"

    goto :goto_28
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/h/a;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mchsdk/paysdk/h/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object v0, p0, Lcom/mchsdk/paysdk/h/a;->b:Landroid/widget/Button;

    if-eqz v0, :cond_23

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/mchsdk/paysdk/h/a;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/h/a;->a:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/mchsdk/paysdk/h/a;->b:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_22
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/h/a;->c:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_17
    return v0

    :cond_18
    const-string v0, "[0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_17
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/h/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    :try_start_16
    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/h/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/h/a;->c(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_1d} :catch_1e

    :cond_1d
    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    const-string v1, "0"

    invoke-direct {p0, v1}, Lcom/mchsdk/paysdk/h/a;->c(Ljava/lang/String;)V

    const-string v1, "PtbNumWatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#afterTextChanged e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_3d
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/h/a;->c(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

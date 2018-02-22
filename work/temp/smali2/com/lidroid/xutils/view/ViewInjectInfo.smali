.class public Lcom/lidroid/xutils/view/ViewInjectInfo;
.super Ljava/lang/Object;


# instance fields
.field public parentId:I

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/lidroid/xutils/view/ViewInjectInfo;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/lidroid/xutils/view/ViewInjectInfo;

    iget v2, p0, Lcom/lidroid/xutils/view/ViewInjectInfo;->parentId:I

    iget v3, p1, Lcom/lidroid/xutils/view/ViewInjectInfo;->parentId:I

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    iget-object v2, p0, Lcom/lidroid/xutils/view/ViewInjectInfo;->value:Ljava/lang/Object;

    if-nez v2, :cond_1f

    iget-object v2, p1, Lcom/lidroid/xutils/view/ViewInjectInfo;->value:Ljava/lang/Object;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_1f
    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewInjectInfo;->value:Ljava/lang/Object;

    iget-object v1, p1, Lcom/lidroid/xutils/view/ViewInjectInfo;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewInjectInfo;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/lidroid/xutils/view/ViewInjectInfo;->parentId:I

    add-int/2addr v0, v1

    return v0
.end method

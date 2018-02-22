.class public Landroid/app/inflect/Activity;
.super Landroid/app/show/Activity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/show/Activity;-><init>()V

    return-void
.end method

.method private getIdByContext(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/app/inflect/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/inflect/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, p1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    :goto_d
    return v0

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method


# virtual methods
.method public R_drawable(Ljava/lang/String;)I
    .registers 3

    const-string v0, "drawable"

    invoke-direct {p0, v0, p1}, Landroid/app/inflect/Activity;->getIdByContext(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    const-string v0, "drawable"

    invoke-virtual {p0, v0, p1}, Landroid/app/inflect/Activity;->getIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_8

    const/4 v0, -0x1

    goto :goto_8
.end method

.method public R_id(Ljava/lang/String;)I
    .registers 3

    const-string v0, "id"

    invoke-direct {p0, v0, p1}, Landroid/app/inflect/Activity;->getIdByContext(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_9

    :goto_8
    return v0

    :cond_9
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Landroid/app/inflect/Activity;->getIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_8
.end method

.method public R_layout(Ljava/lang/String;)I
    .registers 3

    const-string v0, "layout"

    invoke-direct {p0, v0, p1}, Landroid/app/inflect/Activity;->getIdByContext(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_9

    :goto_8
    return v0

    :cond_9
    const-string v0, "layout"

    invoke-virtual {p0, v0, p1}, Landroid/app/inflect/Activity;->getIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_8
.end method

.method public getIdByName(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/inflect/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".R"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v3

    const/4 v1, 0x0

    move v2, v0

    :goto_22
    array-length v4, v3

    if-ge v2, v4, :cond_3c

    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    aget-object v1, v3, v2

    :cond_3c
    if-eqz v1, :cond_46

    invoke-virtual {v1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_45
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_45} :catch_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_45} :catch_4f
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_45} :catch_54
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_45} :catch_59
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_45} :catch_5e

    move-result v0

    :cond_46
    :goto_46
    return v0

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :catch_4a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_46

    :catch_4f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_46

    :catch_54
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_46

    :catch_59
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_46

    :catch_5e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_46
.end method

.class public Lsdk/pay/easypermissions/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsdk/pay/easypermissions/b$a;
    }
.end annotation


# direct methods
.method public static varargs a(I[Ljava/lang/String;[I[Ljava/lang/Object;)V
    .registers 10

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_c
    array-length v2, p1

    if-ge v0, v2, :cond_1f

    aget-object v2, p1, v0

    aget v5, p2, v0

    if-nez v5, :cond_1b

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1b
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_1f
    array-length v5, p3

    move v2, v1

    :goto_21
    if-ge v2, v5, :cond_58

    aget-object v1, p3, v2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    instance-of v0, v1, Lsdk/pay/easypermissions/b$a;

    if-eqz v0, :cond_35

    move-object v0, v1

    check-cast v0, Lsdk/pay/easypermissions/b$a;

    invoke-interface {v0, p0, v3}, Lsdk/pay/easypermissions/b$a;->a(ILjava/util/List;)V

    :cond_35
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_45

    instance-of v0, v1, Lsdk/pay/easypermissions/b$a;

    if-eqz v0, :cond_45

    move-object v0, v1

    check-cast v0, Lsdk/pay/easypermissions/b$a;

    invoke-interface {v0, p0, v4}, Lsdk/pay/easypermissions/b$a;->b(ILjava/util/List;)V

    :cond_45
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_54

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-static {v1, p0}, Lsdk/pay/easypermissions/b;->a(Ljava/lang/Object;I)V

    :cond_54
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_21

    :cond_58
    return-void
.end method

.method public static varargs a(Landroid/app/Activity;Ljava/lang/String;III[Ljava/lang/String;)V
    .registers 12

    invoke-static {p0}, Lsdk/pay/easypermissions/a/c;->a(Landroid/app/Activity;)Lsdk/pay/easypermissions/a/c;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lsdk/pay/easypermissions/b;->a(Lsdk/pay/easypermissions/a/c;Ljava/lang/String;III[Ljava/lang/String;)V

    return-void
.end method

.method public static varargs a(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 10

    const v2, 0x104000a

    const/high16 v3, 0x1040000

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lsdk/pay/easypermissions/b;->a(Landroid/app/Activity;Ljava/lang/String;III[Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/Object;I)V
    .registers 10

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0}, Lsdk/pay/easypermissions/b;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move-object v3, v0

    :goto_10
    if-eqz v3, :cond_88

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v1, v2

    :goto_18
    if-ge v1, v5, :cond_82

    aget-object v6, v4, v1

    const-class v0, Lsdk/pay/easypermissions/a;

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const-class v0, Lsdk/pay/easypermissions/a;

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lsdk/pay/easypermissions/a;

    invoke-interface {v0}, Lsdk/pay/easypermissions/a;->a()I

    move-result v0

    if-ne v0, p1, :cond_6c

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_5c

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot execute method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because it is non-void method and/or has input parameters."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5c
    :try_start_5c
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_66

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_66
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v6, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catch Ljava/lang/IllegalAccessException; {:try_start_5c .. :try_end_6c} :catch_70
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5c .. :try_end_6c} :catch_79

    :cond_6c
    :goto_6c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_18

    :catch_70
    move-exception v0

    const-string v6, "EasyPermissions"

    const-string v7, "runDefaultMethod:IllegalAccessException"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6c

    :catch_79
    move-exception v0

    const-string v6, "EasyPermissions"

    const-string v7, "runDefaultMethod:InvocationTargetException"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6c

    :cond_82
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move-object v3, v0

    goto :goto_10

    :cond_88
    return-void

    :cond_89
    move-object v3, v0

    goto :goto_10
.end method

.method private static a(Ljava/lang/Object;I[Ljava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    array-length v0, p2

    new-array v2, v0, [I

    move v0, v1

    :goto_5
    array-length v3, p2

    if-ge v0, v3, :cond_d

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-static {p1, p2, v2, v0}, Lsdk/pay/easypermissions/b;->a(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs a(Lsdk/pay/easypermissions/a/c;Ljava/lang/String;III[Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p0}, Lsdk/pay/easypermissions/a/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p5}, Lsdk/pay/easypermissions/b;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lsdk/pay/easypermissions/a/c;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p4, p5}, Lsdk/pay/easypermissions/b;->a(Ljava/lang/Object;I[Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    invoke-virtual/range {p0 .. p5}, Lsdk/pay/easypermissions/a/c;->a(Ljava/lang/String;III[Ljava/lang/String;)V

    goto :goto_11
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lsdk/pay/easypermissions/a/c;->a(Landroid/app/Activity;)Lsdk/pay/easypermissions/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsdk/pay/easypermissions/a/c;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs a(Landroid/content/Context;[Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_10

    const-string v1, "EasyPermissions"

    const-string v2, "hasPermissions: API version < M, returning true by default"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_f
    return v0

    :cond_10
    if-nez p0, :cond_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t check permissions for null context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    array-length v3, p1

    move v2, v1

    :goto_1c
    if-ge v2, v3, :cond_f

    aget-object v4, p1, v2

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_28

    move v0, v1

    goto :goto_f

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c
.end method

.method private static a(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    :goto_11
    return v0

    :cond_12
    :try_start_12
    const-string v1, "org.androidannotations.api.view.HasViews"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_1b} :catch_1d

    move-result v0

    goto :goto_11

    :catch_1d
    move-exception v1

    goto :goto_11
.end method

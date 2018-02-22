.class public Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# instance fields
.field private final isClass:Z

.field private final object:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->object:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->isClass:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->object:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->isClass:Z

    return-void
.end method

.method static synthetic access$000(Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->property(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/reflect/AccessibleObject;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    :cond_3
    :goto_3
    return-object p0

    :cond_4
    instance-of v0, p0, Ljava/lang/reflect/Member;

    if-eqz v0, :cond_23

    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_23
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    goto :goto_3
.end method

.method private exactMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->type()Ljava/lang/Class;

    move-result-object v0

    :try_start_4
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v1

    :cond_a
    :try_start_a
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_d} :catch_f

    move-result-object v0

    goto :goto_8

    :catch_f
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v0
.end method

.method private field0(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5

    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->type()Ljava/lang/Class;

    move-result-object v0

    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v2

    move-object v1, v0

    :goto_b
    :try_start_b
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;
    :try_end_15
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b .. :try_end_15} :catch_16

    goto :goto_8

    :catch_16
    move-exception v0

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_23

    new-instance v0, Lcom/fanwei/bluearty/pluginmgr/reflect/ReflectException;

    invoke-direct {v0, v2}, Lcom/fanwei/bluearty/pluginmgr/reflect/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_23
    move-object v1, v0

    goto :goto_b
.end method

.method private static forName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Lcom/fanwei/bluearty/pluginmgr/reflect/ReflectException;

    invoke-direct {v1, v0}, Lcom/fanwei/bluearty/pluginmgr/reflect/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    return-object v0

    :catch_6
    move-exception v0

    new-instance v1, Lcom/fanwei/bluearty/pluginmgr/reflect/ReflectException;

    invoke-direct {v1, v0}, Lcom/fanwei/bluearty/pluginmgr/reflect/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->match([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private match([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    array-length v0, p1

    array-length v2, p2

    if-ne v0, v2, :cond_24

    move v0, v1

    :goto_6
    array-length v2, p2

    if-ge v0, v2, :cond_25

    aget-object v2, p2, v0

    const-class v3, Lcom/fanwei/bluearty/pluginmgr/reflect/NULL;

    if-ne v2, v3, :cond_12

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_12
    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-static {v3}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_24
    :goto_24
    return v1

    :cond_25
    const/4 v1, 0x1

    goto :goto_24
.end method

.method public static on(Ljava/lang/Class;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;"
        }
    .end annotation

    new-instance v0, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;

    invoke-direct {v0, p0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static on(Ljava/lang/Object;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;
    .registers 2

    new-instance v0, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;

    invoke-direct {v0, p0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static on(Ljava/lang/String;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;
    .registers 2

    invoke-static {p0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->on(Ljava/lang/Class;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;

    move-result-object v0

    return-object v0
.end method

.method public static on(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;
    .registers 3

    invoke-static {p0, p1}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->on(Ljava/lang/Class;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;

    move-result-object v0

    return-object v0
.end method

.method private static varargs on(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    return-object v0

    :catch_f
    move-exception v0

    new-instance v1, Lcom/fanwei/bluearty/pluginmgr/reflect/ReflectException;

    invoke-direct {v1, v0}, Lcom/fanwei/bluearty/pluginmgr/reflect/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static varargs on(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;
    .registers 5

    :try_start_0
    invoke-static {p0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_13

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1c

    move-result-object v0

    goto :goto_12

    :catch_1c
    move-exception v0

    new-instance v1, Lcom/fanwei/bluearty/pluginmgr/reflect/ReflectException;

    invoke-direct {v1, v0}, Lcom/fanwei/bluearty/pluginmgr/reflect/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static property(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    const-string v0, ""

    :goto_9
    return-object v0

    :cond_a
    if-ne v0, v2, :cond_11

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private similarMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->type()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_b
    if-ge v2, v5, :cond_1b

    aget-object v1, v4, v2

    invoke-direct {p0, v1, p1, p2}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_17

    move-object v0, v1

    :goto_16
    return-object v0

    :cond_17
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_b

    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_21
    if-ge v2, v5, :cond_31

    aget-object v1, v4, v2

    invoke-direct {p0, v1, p1, p2}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2d

    move-object v0, v1

    goto :goto_16

    :cond_2d
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_21

    :cond_31
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No similar method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " could be found on type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->type()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs types([Ljava/lang/Object;)[Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_6

    new-array v0, v0, [Ljava/lang/Class;

    :goto_5
    return-object v0

    :cond_6
    array-length v1, p0

    new-array v2, v1, [Ljava/lang/Class;

    :goto_9
    array-length v1, p0

    if-ge v0, v1, :cond_1c

    aget-object v1, p0, v0

    if-nez v1, :cond_17

    const-class v1, Lcom/fanwei/bluearty/pluginmgr/reflect/NULL;

    :goto_12
    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_12

    :cond_1c
    move-object v0, v2

    goto :goto_5
.end method

.method private static unwrap(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    instance-of v0, p0, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;

    if-eqz v0, :cond_a

    check-cast p0, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;

    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object p0

    :cond_a
    return-object p0
.end method

.method public static wrapper(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    :cond_3
    :goto_3
    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_11

    const-class p0, Ljava/lang/Boolean;

    goto :goto_3

    :cond_11
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_18

    const-class p0, Ljava/lang/Integer;

    goto :goto_3

    :cond_18
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_1f

    const-class p0, Ljava/lang/Long;

    goto :goto_3

    :cond_1f
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_26

    const-class p0, Ljava/lang/Short;

    goto :goto_3

    :cond_26
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_2d

    const-class p0, Ljava/lang/Byte;

    goto :goto_3

    :cond_2d
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_34

    const-class p0, Ljava/lang/Double;

    goto :goto_3

    :cond_34
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_3b

    const-class p0, Ljava/lang/Float;

    goto :goto_3

    :cond_3b
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_42

    const-class p0, Ljava/lang/Character;

    goto :goto_3

    :cond_42
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_3

    const-class p0, Ljava/lang/Void;

    goto :goto_3
.end method


# virtual methods
.method public as(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TP;>;)TP;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->object:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    new-instance v1, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect$1;

    invoke-direct {v1, p0, v0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect$1;-><init>(Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;Z)V

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/String;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;

    move-result-object v0

    return-object v0
.end method

.method public varargs call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;
    .registers 6

    invoke-static {p2}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->types([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    :try_start_4
    invoke-direct {p0, p1, v0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->exactMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->object:Ljava/lang/Object;

    invoke-static {v1, v2, p2}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->on(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;
    :try_end_d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_d} :catch_f

    move-result-object v0

    :goto_e
    return-object v0

    :catch_f
    move-exception v1

    :try_start_10
    invoke-direct {p0, p1, v0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->similarMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->object:Ljava/lang/Object;

    invoke-static {v0, v1, p2}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->on(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_19} :catch_1b

    move-result-object v0

    goto :goto_e

    :catch_1b
    move-exception v0

    new-instance v1, Lcom/fanwei/bluearty/pluginmgr/reflect/ReflectException;

    invoke-direct {v1, v0}, Lcom/fanwei/bluearty/pluginmgr/reflect/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public create()Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->create([Ljava/lang/Object;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;

    move-result-object v0

    return-object v0
.end method

.method public varargs create([Ljava/lang/Object;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;
    .registers 9

    invoke-static {p1}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->types([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v2

    :try_start_4
    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->type()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->on(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;
    :try_end_f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_f} :catch_11

    move-result-object v0

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->type()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v4, :cond_32

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-direct {p0, v6, v2}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->match([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-static {v5, p1}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->on(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;

    move-result-object v0

    goto :goto_10

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_32
    new-instance v1, Lcom/fanwei/bluearty/pluginmgr/reflect/ReflectException;

    invoke-direct {v1, v0}, Lcom/fanwei/bluearty/pluginmgr/reflect/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->object:Ljava/lang/Object;

    check-cast p1, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;

    invoke-virtual {p1}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public field(Ljava/lang/String;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;
    .registers 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->field0(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->object:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    return-object v0

    :catch_f
    move-exception v0

    new-instance v1, Lcom/fanwei/bluearty/pluginmgr/reflect/ReflectException;

    invoke-direct {v1, v0}, Lcom/fanwei/bluearty/pluginmgr/reflect/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public fields()Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->type()Ljava/lang/Class;

    move-result-object v0

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    :goto_10
    if-ge v3, v6, :cond_3b

    aget-object v7, v5, v3

    iget-boolean v1, p0, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->isClass:Z

    if-nez v1, :cond_39

    const/4 v1, 0x1

    :goto_19
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    xor-int/2addr v1, v8

    if-eqz v1, :cond_35

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_35

    invoke-virtual {p0, v1}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->field(Ljava/lang/String;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;

    move-result-object v7

    invoke-interface {v4, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_10

    :cond_39
    move v1, v2

    goto :goto_19

    :cond_3b
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_a

    return-object v4
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->field(Ljava/lang/String;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;
    .registers 6

    :try_start_0
    invoke-direct {p0, p1}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->field0(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->object:Ljava/lang/Object;

    invoke-static {p2}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception v0

    new-instance v1, Lcom/fanwei/bluearty/pluginmgr/reflect/ReflectException;

    invoke-direct {v1, v0}, Lcom/fanwei/bluearty/pluginmgr/reflect/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->isClass:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->object:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_8
.end method

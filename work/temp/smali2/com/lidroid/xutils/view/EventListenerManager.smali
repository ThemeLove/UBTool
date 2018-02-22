.class public Lcom/lidroid/xutils/view/EventListenerManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/view/EventListenerManager$DynamicHandler;
    }
.end annotation


# static fields
.field private static final listenerCache:Lcom/lidroid/xutils/util/DoubleKeyValueMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/util/DoubleKeyValueMap",
            "<",
            "Lcom/lidroid/xutils/view/ViewInjectInfo;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/lidroid/xutils/util/DoubleKeyValueMap;

    invoke-direct {v0}, Lcom/lidroid/xutils/util/DoubleKeyValueMap;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/view/EventListenerManager;->listenerCache:Lcom/lidroid/xutils/util/DoubleKeyValueMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEventMethod(Lcom/lidroid/xutils/view/ViewFinder;Lcom/lidroid/xutils/view/ViewInjectInfo;Ljava/lang/annotation/Annotation;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .registers 12

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/view/ViewFinder;->findViewByInfo(Lcom/lidroid/xutils/view/ViewInjectInfo;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6f

    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/lidroid/xutils/view/annotation/event/EventBase;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/view/annotation/event/EventBase;

    invoke-interface {v0}, Lcom/lidroid/xutils/view/annotation/event/EventBase;->listenerType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v0}, Lcom/lidroid/xutils/view/annotation/event/EventBase;->listenerSetter()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lcom/lidroid/xutils/view/annotation/event/EventBase;->methodName()Ljava/lang/String;

    move-result-object v6

    sget-object v0, Lcom/lidroid/xutils/view/EventListenerManager;->listenerCache:Lcom/lidroid/xutils/util/DoubleKeyValueMap;

    invoke-virtual {v0, p1, v4}, Lcom/lidroid/xutils/util/DoubleKeyValueMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7b

    invoke-static {v1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/view/EventListenerManager$DynamicHandler;

    invoke-virtual {v0}, Lcom/lidroid/xutils/view/EventListenerManager$DynamicHandler;->getHandler()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {v0, v6, p4}, Lcom/lidroid/xutils/view/EventListenerManager$DynamicHandler;->addMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    :cond_3a
    move v0, v2

    :goto_3b
    if-nez v0, :cond_79

    new-instance v0, Lcom/lidroid/xutils/view/EventListenerManager$DynamicHandler;

    invoke-direct {v0, p3}, Lcom/lidroid/xutils/view/EventListenerManager$DynamicHandler;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v6, p4}, Lcom/lidroid/xutils/view/EventListenerManager$DynamicHandler;->addMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v4, v2, v6

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/view/EventListenerManager;->listenerCache:Lcom/lidroid/xutils/util/DoubleKeyValueMap;

    invoke-virtual {v1, p1, v4, v0}, Lcom/lidroid/xutils/util/DoubleKeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_58
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v4, v2, v6

    invoke-virtual {v1, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6f} :catch_70

    :cond_6f
    :goto_6f
    return-void

    :catch_70
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6f

    :cond_79
    move-object v0, v1

    goto :goto_58

    :cond_7b
    move v0, v2

    goto :goto_3b
.end method

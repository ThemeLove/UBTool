.class Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->as(Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;

.field final synthetic val$isMap:Z


# direct methods
.method constructor <init>(Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;Z)V
    .registers 3

    iput-object p1, p0, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect$1;->this$0:Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;

    iput-boolean p2, p0, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect$1;->val$isMap:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    const/4 v6, 0x3

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    :try_start_6
    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect$1;->this$0:Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;

    # getter for: Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->object:Ljava/lang/Object;
    invoke-static {v0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->access$000(Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;

    move-result-object v0

    invoke-virtual {v0, v4, p3}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->get()Ljava/lang/Object;
    :try_end_17
    .catch Lcom/fanwei/bluearty/pluginmgr/reflect/ReflectException; {:try_start_6 .. :try_end_17} :catch_19

    move-result-object v0

    :goto_18
    return-object v0

    :catch_19
    move-exception v0

    move-object v1, v0

    iget-boolean v0, p0, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect$1;->val$isMap:Z

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect$1;->this$0:Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;

    # getter for: Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->object:Ljava/lang/Object;
    invoke-static {v0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->access$000(Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez p3, :cond_41

    move v2, v3

    :goto_2a
    if-nez v2, :cond_43

    const-string v5, "get"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->property(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_18

    :cond_41
    array-length v2, p3

    goto :goto_2a

    :cond_43
    if-nez v2, :cond_5b

    const-string v5, "is"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->property(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_18

    :cond_5b
    const/4 v5, 0x1

    if-ne v2, v5, :cond_75

    const-string v2, "set"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->property(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, p3, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    goto :goto_18

    :cond_75
    throw v1
.end method

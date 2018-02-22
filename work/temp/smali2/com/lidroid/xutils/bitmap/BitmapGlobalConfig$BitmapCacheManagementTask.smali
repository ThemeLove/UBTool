.class Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;
.super Lcom/lidroid/xutils/task/PriorityAsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapCacheManagementTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lidroid/xutils/task/PriorityAsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final MESSAGE_CLEAR:I = 0x4

.field public static final MESSAGE_CLEAR_BY_KEY:I = 0x7

.field public static final MESSAGE_CLEAR_DISK:I = 0x6

.field public static final MESSAGE_CLEAR_DISK_BY_KEY:I = 0x9

.field public static final MESSAGE_CLEAR_MEMORY:I = 0x5

.field public static final MESSAGE_CLEAR_MEMORY_BY_KEY:I = 0x8

.field public static final MESSAGE_CLOSE:I = 0x3

.field public static final MESSAGE_FLUSH:I = 0x2

.field public static final MESSAGE_INIT_DISK_CACHE:I = 0x1

.field public static final MESSAGE_INIT_MEMORY_CACHE:I


# instance fields
.field final synthetic this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;


# direct methods
.method private constructor <init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)V
    .registers 3

    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityAsyncTask;-><init>()V

    sget-object v0, Lcom/lidroid/xutils/task/Priority;->UI_TOP:Lcom/lidroid/xutils/task/Priority;

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->setPriority(Lcom/lidroid/xutils/task/Priority;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;-><init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->doInBackground([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5

    const/4 v2, 0x2

    if-eqz p1, :cond_6

    array-length v0, p1

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-object p1

    :cond_7
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getBitmapCache()Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    :try_start_10
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_6e

    goto :goto_6

    :pswitch_1c
    invoke-virtual {v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->initMemoryCache()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1f} :catch_20

    goto :goto_6

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :pswitch_29
    :try_start_29
    invoke-virtual {v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->initDiskCache()V

    goto :goto_6

    :pswitch_2d
    invoke-virtual {v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->flush()V

    goto :goto_6

    :pswitch_31
    invoke-virtual {v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearMemoryCache()V

    invoke-virtual {v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->close()V

    goto :goto_6

    :pswitch_38
    invoke-virtual {v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearCache()V

    goto :goto_6

    :pswitch_3c
    invoke-virtual {v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearMemoryCache()V

    goto :goto_6

    :pswitch_40
    invoke-virtual {v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearDiskCache()V

    goto :goto_6

    :pswitch_44
    array-length v0, p1

    if-ne v0, v2, :cond_6

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearCache(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_52
    array-length v0, p1

    if-ne v0, v2, :cond_6

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearMemoryCache(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_60
    array-length v0, p1

    if-ne v0, v2, :cond_6

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearDiskCache(Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_6d} :catch_20

    goto :goto_6

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_29
        :pswitch_2d
        :pswitch_31
        :pswitch_38
        :pswitch_3c
        :pswitch_40
        :pswitch_44
        :pswitch_52
        :pswitch_60
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->onPostExecute([Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Object;)V
    .registers 4

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    # getter for: Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;
    invoke-static {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    array-length v0, p1

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    const/4 v0, 0x0

    :try_start_10
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_aa

    goto :goto_e

    :pswitch_1c
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    # getter for: Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;
    invoke-static {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onInitMemoryCacheFinished()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_25} :catch_26

    goto :goto_e

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    :pswitch_2f
    :try_start_2f
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    # getter for: Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;
    invoke-static {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onInitDiskFinished()V

    goto :goto_e

    :pswitch_39
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    # getter for: Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;
    invoke-static {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onFlushCacheFinished()V

    goto :goto_e

    :pswitch_43
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    # getter for: Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;
    invoke-static {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onCloseCacheFinished()V

    goto :goto_e

    :pswitch_4d
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    # getter for: Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;
    invoke-static {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onClearCacheFinished()V

    goto :goto_e

    :pswitch_57
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    # getter for: Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;
    invoke-static {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onClearMemoryCacheFinished()V

    goto :goto_e

    :pswitch_61
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    # getter for: Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;
    invoke-static {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onClearDiskCacheFinished()V

    goto :goto_e

    :pswitch_6b
    array-length v0, p1

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    # getter for: Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;
    invoke-static {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onClearCacheFinished(Ljava/lang/String;)V

    goto :goto_e

    :pswitch_7f
    array-length v0, p1

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    # getter for: Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;
    invoke-static {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onClearMemoryCacheFinished(Ljava/lang/String;)V

    goto/16 :goto_e

    :pswitch_94
    array-length v0, p1

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig$BitmapCacheManagementTask;->this$0:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    # getter for: Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->bitmapCacheListener:Lcom/lidroid/xutils/bitmap/BitmapCacheListener;
    invoke-static {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->access$0(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapCacheListener;->onClearDiskCacheFinished(Ljava/lang/String;)V
    :try_end_a7
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_a7} :catch_26

    goto/16 :goto_e

    nop

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_2f
        :pswitch_39
        :pswitch_43
        :pswitch_4d
        :pswitch_57
        :pswitch_61
        :pswitch_6b
        :pswitch_7f
        :pswitch_94
    .end packed-switch
.end method

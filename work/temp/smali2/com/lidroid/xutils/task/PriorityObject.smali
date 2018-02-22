.class public Lcom/lidroid/xutils/task/PriorityObject;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final obj:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final priority:Lcom/lidroid/xutils/task/Priority;


# direct methods
.method public constructor <init>(Lcom/lidroid/xutils/task/Priority;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/task/Priority;",
            "TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_7

    sget-object p1, Lcom/lidroid/xutils/task/Priority;->DEFAULT:Lcom/lidroid/xutils/task/Priority;

    :cond_7
    iput-object p1, p0, Lcom/lidroid/xutils/task/PriorityObject;->priority:Lcom/lidroid/xutils/task/Priority;

    iput-object p2, p0, Lcom/lidroid/xutils/task/PriorityObject;->obj:Ljava/lang/Object;

    return-void
.end method

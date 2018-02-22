.class public Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final externalListener:Landroid/widget/AbsListView$OnScrollListener;

.field private final pauseOnFling:Z

.field private final pauseOnScroll:Z

.field private taskHandler:Lcom/lidroid/xutils/task/TaskHandler;


# direct methods
.method public constructor <init>(Lcom/lidroid/xutils/task/TaskHandler;ZZ)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;-><init>(Lcom/lidroid/xutils/task/TaskHandler;ZZLandroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/lidroid/xutils/task/TaskHandler;ZZLandroid/widget/AbsListView$OnScrollListener;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;->taskHandler:Lcom/lidroid/xutils/task/TaskHandler;

    iput-boolean p2, p0, Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;->pauseOnScroll:Z

    iput-boolean p3, p0, Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;->pauseOnFling:Z

    iput-object p4, p0, Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;->externalListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;->externalListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;->externalListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_9
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4

    packed-switch p2, :pswitch_data_28

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;->externalListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;->externalListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_c
    return-void

    :pswitch_d
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;->taskHandler:Lcom/lidroid/xutils/task/TaskHandler;

    invoke-interface {v0}, Lcom/lidroid/xutils/task/TaskHandler;->resume()V

    goto :goto_3

    :pswitch_13
    iget-boolean v0, p0, Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;->pauseOnScroll:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;->taskHandler:Lcom/lidroid/xutils/task/TaskHandler;

    invoke-interface {v0}, Lcom/lidroid/xutils/task/TaskHandler;->pause()V

    goto :goto_3

    :pswitch_1d
    iget-boolean v0, p0, Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;->pauseOnFling:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/PauseOnScrollListener;->taskHandler:Lcom/lidroid/xutils/task/TaskHandler;

    invoke-interface {v0}, Lcom/lidroid/xutils/task/TaskHandler;->pause()V

    goto :goto_3

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_d
        :pswitch_13
        :pswitch_1d
    .end packed-switch
.end method

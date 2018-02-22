.class public Lcom/mchsdk/paysdk/server/MCHFloatService;
.super Landroid/app/Service;


# instance fields
.field a:Landroid/view/WindowManager;

.field b:Landroid/view/WindowManager$LayoutParams;

.field c:Landroid/view/View;

.field d:Landroid/widget/RelativeLayout;

.field e:Landroid/widget/TextView;

.field f:Lcom/mchsdk/paysdk/receive/HomeKeyEventBroadCastReceiver;

.field final g:I

.field h:Landroid/os/Handler;

.field i:Ljava/lang/Runnable;

.field j:Ljava/lang/Runnable;

.field k:Landroid/view/View$OnClickListener;

.field private final l:Ljava/lang/String;

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:I

.field private t:I

.field private u:I

.field private v:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "MCHFloatService"

    iput-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->a:Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->b:Landroid/view/WindowManager$LayoutParams;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->g:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->h:Landroid/os/Handler;

    new-instance v0, Lcom/mchsdk/paysdk/server/MCHFloatService$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/server/MCHFloatService$1;-><init>(Lcom/mchsdk/paysdk/server/MCHFloatService;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->i:Ljava/lang/Runnable;

    new-instance v0, Lcom/mchsdk/paysdk/server/MCHFloatService$2;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/server/MCHFloatService$2;-><init>(Lcom/mchsdk/paysdk/server/MCHFloatService;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->j:Ljava/lang/Runnable;

    new-instance v0, Lcom/mchsdk/paysdk/server/MCHFloatService$3;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/server/MCHFloatService$3;-><init>(Lcom/mchsdk/paysdk/server/MCHFloatService;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->k:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/server/MCHFloatService;F)F
    .registers 2

    iput p1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->o:F

    return p1
.end method

.method private a()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->v:Z

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/server/MCHFloatService;)V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/server/MCHFloatService;->d()V

    return-void
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/server/MCHFloatService;)F
    .registers 2

    iget v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->o:F

    return v0
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/server/MCHFloatService;F)F
    .registers 2

    iput p1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->p:F

    return p1
.end method

.method private b()V
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->c:Landroid/view/View;

    if-nez v0, :cond_c

    const-string v0, "MCHFloatService"

    const-string v1, "fun#initView view is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->c:Landroid/view/View;

    const-string v1, "ll_mch_menu_list"

    invoke-static {p0, v1}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->d:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->d:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->c:Landroid/view/View;

    const-string v1, "txt_mch_channel_name"

    invoke-static {p0, v1}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->e:Landroid/widget/TextView;

    const-string v1, "mch_float_ico"

    invoke-static {p0, v1}, Lcom/mchsdk/paysdk/utils/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->e:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->c:Landroid/view/View;

    const-string v1, "ll_mch_floating_pack"

    invoke-static {p0, v1}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->c:Landroid/view/View;

    const-string v1, "ll_mch_floating_personal"

    invoke-static {p0, v1}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->c:Landroid/view/View;

    const-string v1, "ll_mch_floating_social"

    invoke-static {p0, v1}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/mchsdk/paysdk/receive/HomeKeyEventBroadCastReceiver;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/receive/HomeKeyEventBroadCastReceiver;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->f:Lcom/mchsdk/paysdk/receive/HomeKeyEventBroadCastReceiver;

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->f:Lcom/mchsdk/paysdk/receive/HomeKeyEventBroadCastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/mchsdk/paysdk/server/MCHFloatService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_b
.end method

.method static synthetic c(Lcom/mchsdk/paysdk/server/MCHFloatService;F)F
    .registers 2

    iput p1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->q:F

    return p1
.end method

.method static synthetic c(Lcom/mchsdk/paysdk/server/MCHFloatService;)I
    .registers 2

    iget v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->u:I

    return v0
.end method

.method private c()V
    .registers 4

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->c:Landroid/view/View;

    if-nez v0, :cond_d

    const-string v0, "MCHFloatService"

    const-string v1, "fun#createView view is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/mchsdk/paysdk/server/MCHFloatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->a:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->a:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->u:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->a:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->t:I

    invoke-static {p0}, Lcom/mchsdk/paysdk/utils/e;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->s:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->b:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->b:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x19

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->b:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->b:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->c:Landroid/view/View;

    iget-object v2, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0}, Lcom/mchsdk/paysdk/utils/e;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->s:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->c:Landroid/view/View;

    new-instance v1, Lcom/mchsdk/paysdk/server/MCHFloatService$4;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/server/MCHFloatService$4;-><init>(Lcom/mchsdk/paysdk/server/MCHFloatService;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_c
.end method

.method static synthetic d(Lcom/mchsdk/paysdk/server/MCHFloatService;)F
    .registers 2

    iget v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->p:F

    return v0
.end method

.method static synthetic d(Lcom/mchsdk/paysdk/server/MCHFloatService;F)F
    .registers 2

    iput p1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->r:F

    return p1
.end method

.method private d()V
    .registers 5

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->v:Z

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->d:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->h:Landroid/os/Handler;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->i:Ljava/lang/Runnable;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_31
    return-void
.end method

.method static synthetic e(Lcom/mchsdk/paysdk/server/MCHFloatService;F)F
    .registers 2

    iput p1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->m:F

    return p1
.end method

.method static synthetic e(Lcom/mchsdk/paysdk/server/MCHFloatService;)I
    .registers 2

    iget v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->s:I

    return v0
.end method

.method private e()V
    .registers 5

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_30

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->v:Z

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->d:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->e:Landroid/widget/TextView;

    const-string v1, "mch_float_ico"

    invoke-static {p0, v1}, Lcom/mchsdk/paysdk/utils/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/server/MCHFloatService;->h()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->h:Landroid/os/Handler;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->i:Ljava/lang/Runnable;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_30
    return-void
.end method

.method static synthetic f(Lcom/mchsdk/paysdk/server/MCHFloatService;F)F
    .registers 2

    iput p1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->n:F

    return p1
.end method

.method static synthetic f(Lcom/mchsdk/paysdk/server/MCHFloatService;)I
    .registers 2

    iget v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->t:I

    return v0
.end method

.method private f()V
    .registers 2

    iget-boolean v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->v:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/mchsdk/paysdk/server/MCHFloatService;->d()V

    :goto_7
    return-void

    :cond_8
    invoke-direct {p0}, Lcom/mchsdk/paysdk/server/MCHFloatService;->e()V

    goto :goto_7
.end method

.method private g()V
    .registers 5

    iget v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->g:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_24

    :goto_6
    :try_start_6
    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->b:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->o:F

    iget v2, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->m:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->b:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->p:F

    iget v2, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->n:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->c:Landroid/view/View;

    iget-object v2, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_23} :catch_2d

    :goto_23
    return-void

    :cond_24
    iget v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->p:F

    iget v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->s:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->p:F

    goto :goto_6

    :catch_2d
    move-exception v0

    const-string v1, "MCHFloatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fun # updateViewPosition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method static synthetic g(Lcom/mchsdk/paysdk/server/MCHFloatService;)V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/server/MCHFloatService;->g()V

    return-void
.end method

.method static synthetic h(Lcom/mchsdk/paysdk/server/MCHFloatService;)F
    .registers 2

    iget v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->q:F

    return v0
.end method

.method private h()V
    .registers 5

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic i(Lcom/mchsdk/paysdk/server/MCHFloatService;)F
    .registers 2

    iget v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->r:F

    return v0
.end method

.method static synthetic j(Lcom/mchsdk/paysdk/server/MCHFloatService;)V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/server/MCHFloatService;->h()V

    return-void
.end method

.method static synthetic k(Lcom/mchsdk/paysdk/server/MCHFloatService;)V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/server/MCHFloatService;->f()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    const-string v0, "MCHFloatService"

    const-string v1, "fun#onCreate--------"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "floating_mch_menu"

    invoke-static {p0, v1}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->c:Landroid/view/View;

    invoke-direct {p0}, Lcom/mchsdk/paysdk/server/MCHFloatService;->c()V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/server/MCHFloatService;->a()V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/server/MCHFloatService;->b()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->f:Lcom/mchsdk/paysdk/receive/HomeKeyEventBroadCastReceiver;

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/server/MCHFloatService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService;->c:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mchsdk/paysdk/server/MCHFloatService;->startForeground(ILandroid/app/Notification;)V

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

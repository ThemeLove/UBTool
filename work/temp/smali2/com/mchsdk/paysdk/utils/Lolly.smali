.class public Lcom/mchsdk/paysdk/utils/Lolly;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mchsdk/paysdk/utils/Lolly$a;
    }
.end annotation


# static fields
.field public static a:Lcom/mchsdk/paysdk/utils/Lolly$a;

.field private static q:Lcom/mchsdk/paysdk/utils/Lolly;


# instance fields
.field private b:Landroid/view/WindowManager;

.field private c:Landroid/util/DisplayMetrics;

.field private d:Landroid/view/WindowManager$LayoutParams;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/ListView;

.field private g:Landroid/widget/CheckBox;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/Spinner;

.field private j:Landroid/widget/Spinner;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/Button;

.field private n:Z

.field private o:Z

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-boolean v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->n:Z

    iput-boolean v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->o:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->r:Z

    return-void
.end method

.method private a(I)I
    .registers 5

    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/utils/Lolly;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static a()Lcom/mchsdk/paysdk/utils/Lolly;
    .registers 1

    sget-object v0, Lcom/mchsdk/paysdk/utils/Lolly;->q:Lcom/mchsdk/paysdk/utils/Lolly;

    if-nez v0, :cond_b

    new-instance v0, Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/utils/Lolly;-><init>()V

    sput-object v0, Lcom/mchsdk/paysdk/utils/Lolly;->q:Lcom/mchsdk/paysdk/utils/Lolly;

    :cond_b
    sget-object v0, Lcom/mchsdk/paysdk/utils/Lolly;->q:Lcom/mchsdk/paysdk/utils/Lolly;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;[Ljava/lang/String;)V
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "action"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "tags"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "orientation"

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2a
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    const/4 v2, 0x2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/utils/Lolly;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->n:Z

    return v0
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/utils/Lolly;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/mchsdk/paysdk/utils/Lolly;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->g:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/utils/Lolly;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/mchsdk/paysdk/utils/Lolly;->r:Z

    return p1
.end method

.method static synthetic c(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->f:Landroid/widget/ListView;

    return-object v0
.end method

.method private c()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, -0x1

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/utils/Lolly;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->b:Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->c:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->b:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly;->c:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->d:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7da

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->d:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->d:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->d:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->d:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->d:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->d:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/mchsdk/paysdk/utils/Lolly;->f()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->g:Landroid/widget/CheckBox;

    new-instance v1, Lcom/mchsdk/paysdk/utils/Lolly$1;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/utils/Lolly$1;-><init>(Lcom/mchsdk/paysdk/utils/Lolly;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->h:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/mchsdk/paysdk/utils/Lolly$2;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/utils/Lolly$2;-><init>(Lcom/mchsdk/paysdk/utils/Lolly;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->k:Landroid/widget/Button;

    new-instance v1, Lcom/mchsdk/paysdk/utils/Lolly$3;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/utils/Lolly$3;-><init>(Lcom/mchsdk/paysdk/utils/Lolly;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->l:Landroid/widget/Button;

    new-instance v1, Lcom/mchsdk/paysdk/utils/Lolly$4;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/utils/Lolly$4;-><init>(Lcom/mchsdk/paysdk/utils/Lolly;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->m:Landroid/widget/Button;

    new-instance v1, Lcom/mchsdk/paysdk/utils/Lolly$5;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/utils/Lolly$5;-><init>(Lcom/mchsdk/paysdk/utils/Lolly;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/utils/Lolly;->d()V

    return-void
.end method

.method static synthetic d(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/view/WindowManager$LayoutParams;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->d:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method private d()V
    .registers 3

    new-instance v0, Lcom/mchsdk/paysdk/utils/Lolly$6;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/utils/Lolly$6;-><init>(Lcom/mchsdk/paysdk/utils/Lolly;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/utils/Lolly$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic e(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private e()V
    .registers 3

    const-string v0, "Lolly"

    const-string v1, "saveLog"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->r:Z

    if-eqz v0, :cond_c

    :goto_b
    return-void

    :cond_c
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/mchsdk/paysdk/utils/Lolly$7;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/utils/Lolly$7;-><init>(Lcom/mchsdk/paysdk/utils/Lolly;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_b
.end method

.method static synthetic f(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/view/WindowManager;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->b:Landroid/view/WindowManager;

    return-object v0
.end method

.method private f()V
    .registers 9

    const/16 v7, 0x28

    const v6, 0x1090009

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->e:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->e:Landroid/widget/LinearLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->h:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x3c

    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, -0x3c

    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->h:Landroid/widget/LinearLayout;

    const-string v1, "#303F9F"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/CheckBox;

    invoke-direct {v1, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly;->g:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly;->g:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->g:Landroid/widget/CheckBox;

    const-string v1, "O"

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->g:Landroid/widget/CheckBox;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->g:Landroid/widget/CheckBox;

    const/4 v1, 0x2

    const/high16 v2, 0x41800000

    invoke-virtual {v0, v1, v2}, Landroid/widget/CheckBox;->setTextSize(IF)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v0, Landroid/widget/Spinner;

    invoke-direct {v0, p0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->i:Landroid/widget/Spinner;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly;->i:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "V"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "D"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "I"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "W"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "E"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "A"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-direct {v1, p0, v6, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->i:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->i:Landroid/widget/Spinner;

    new-instance v2, Lcom/mchsdk/paysdk/utils/Lolly$8;

    invoke-direct {v2, p0, v1}, Lcom/mchsdk/paysdk/utils/Lolly$8;-><init>(Lcom/mchsdk/paysdk/utils/Lolly;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v0, Landroid/widget/Spinner;

    invoke-direct {v0, p0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->j:Landroid/widget/Spinner;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly;->j:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->p:Ljava/util/List;

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly;->p:Ljava/util/List;

    invoke-direct {v0, p0, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly;->j:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly;->j:Landroid/widget/Spinner;

    new-instance v2, Lcom/mchsdk/paysdk/utils/Lolly$9;

    invoke-direct {v2, p0, v0}, Lcom/mchsdk/paysdk/utils/Lolly$9;-><init>(Lcom/mchsdk/paysdk/utils/Lolly;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->k:Landroid/widget/Button;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, v7}, Lcom/mchsdk/paysdk/utils/Lolly;->a(I)I

    move-result v1

    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly;->k:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->k:Landroid/widget/Button;

    const-string v1, "H"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->l:Landroid/widget/Button;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, v7}, Lcom/mchsdk/paysdk/utils/Lolly;->a(I)I

    move-result v1

    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly;->l:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->l:Landroid/widget/Button;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->m:Landroid/widget/Button;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, v7}, Lcom/mchsdk/paysdk/utils/Lolly;->a(I)I

    move-result v1

    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly;->m:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->m:Landroid/widget/Button;

    const-string v1, "c"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->f:Landroid/widget/ListView;

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly;->f:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/mchsdk/paysdk/utils/Lolly$a;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/utils/Lolly$a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mchsdk/paysdk/utils/Lolly;->a:Lcom/mchsdk/paysdk/utils/Lolly$a;

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->f:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->f:Landroid/widget/ListView;

    sget-object v1, Lcom/mchsdk/paysdk/utils/Lolly;->a:Lcom/mchsdk/paysdk/utils/Lolly$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->h:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->h:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly;->i:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->h:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly;->j:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->h:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly;->k:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->h:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly;->l:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->h:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly;->m:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic g(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->k:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic h(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->l:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic i(Lcom/mchsdk/paysdk/utils/Lolly;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->o:Z

    return v0
.end method


# virtual methods
.method public b()V
    .registers 1

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/utils/Lolly;->stopSelf()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/utils/Lolly;->c()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    sget-object v0, Lcom/mchsdk/paysdk/utils/Lolly;->a:Lcom/mchsdk/paysdk/utils/Lolly$a;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/mchsdk/paysdk/utils/Lolly;->a:Lcom/mchsdk/paysdk/utils/Lolly$a;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/utils/Lolly$a;->b()V

    :cond_c
    const-string v0, "Lolly"

    const-string v1, "Lolly onDestroy ..."

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 12

    const/4 v1, 0x1

    const/16 v4, -0xe9

    const/4 v3, 0x0

    const-string v0, "action"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_92

    :cond_e
    :goto_e
    :pswitch_e
    const/4 v0, 0x2

    return v0

    :pswitch_10
    const-string v0, "orientation"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_1c

    iget-object v2, p0, Lcom/mchsdk/paysdk/utils/Lolly;->d:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    :cond_1c
    const-string v0, "tags"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4d

    array-length v5, v4

    move v2, v3

    move v0, v3

    :goto_27
    if-ge v2, v5, :cond_3c

    aget-object v6, v4, v2

    iget-object v7, p0, Lcom/mchsdk/paysdk/utils/Lolly;->p:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_39

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->p:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_3c
    if-eqz v0, :cond_4d

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    iget-object v2, p0, Lcom/mchsdk/paysdk/utils/Lolly;->p:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly;->j:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_4d
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly;->e:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/mchsdk/paysdk/utils/Lolly;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e

    :cond_64
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly;->e:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/mchsdk/paysdk/utils/Lolly;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e

    :pswitch_6e
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly;->e:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_e

    :pswitch_84
    const-string v0, "save log"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/utils/Lolly;->e()V

    goto/16 :goto_e

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_10
        :pswitch_6e
        :pswitch_e
        :pswitch_84
    .end packed-switch
.end method

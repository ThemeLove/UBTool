.class public Lcom/mchsdk/paysdk/activity/a;
.super Ljava/lang/Object;


# static fields
.field public static c:Z

.field public static d:Lcom/mchsdk/paysdk/receive/MCHControlReceiver;


# instance fields
.field a:Landroid/app/ProgressDialog;

.field b:Landroid/os/Handler;

.field e:Landroid/view/View$OnClickListener;

.field f:Landroid/view/View$OnFocusChangeListener;

.field g:Landroid/view/View$OnFocusChangeListener;

.field h:Landroid/view/View$OnClickListener;

.field i:Lcom/mchsdk/paysdk/b/c;

.field j:Landroid/view/View$OnClickListener;

.field k:Lcom/mchsdk/paysdk/b/b;

.field l:Landroid/content/DialogInterface$OnKeyListener;

.field private m:Landroid/content/Context;

.field private n:Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

.field private o:Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;

.field private p:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

.field private q:Z

.field private r:Z

.field private s:Landroid/os/Handler;

.field private t:Landroid/os/Handler;

.field private u:Landroid/view/View$OnClickListener;

.field private v:Landroid/view/View$OnClickListener;

.field private w:Lcom/mchsdk/paysdk/b/c;

.field private x:Landroid/view/View$OnClickListener;

.field private y:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mchsdk/paysdk/activity/a;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mchsdk/paysdk/activity/a$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/a$1;-><init>(Lcom/mchsdk/paysdk/activity/a;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->s:Landroid/os/Handler;

    new-instance v0, Lcom/mchsdk/paysdk/activity/a$8;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/a$8;-><init>(Lcom/mchsdk/paysdk/activity/a;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->t:Landroid/os/Handler;

    new-instance v0, Lcom/mchsdk/paysdk/activity/a$9;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/a$9;-><init>(Lcom/mchsdk/paysdk/activity/a;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->u:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/activity/a$10;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/a$10;-><init>(Lcom/mchsdk/paysdk/activity/a;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->v:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/activity/a$11;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/a$11;-><init>(Lcom/mchsdk/paysdk/activity/a;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->w:Lcom/mchsdk/paysdk/b/c;

    new-instance v0, Lcom/mchsdk/paysdk/activity/a$12;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/a$12;-><init>(Lcom/mchsdk/paysdk/activity/a;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->x:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/activity/a$13;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/a$13;-><init>(Lcom/mchsdk/paysdk/activity/a;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->y:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/activity/a$14;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/a$14;-><init>(Lcom/mchsdk/paysdk/activity/a;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->e:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/activity/a$15;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/a$15;-><init>(Lcom/mchsdk/paysdk/activity/a;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->f:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/mchsdk/paysdk/activity/a$2;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/a$2;-><init>(Lcom/mchsdk/paysdk/activity/a;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->g:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/mchsdk/paysdk/activity/a$3;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/a$3;-><init>(Lcom/mchsdk/paysdk/activity/a;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->h:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/activity/a$4;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/a$4;-><init>(Lcom/mchsdk/paysdk/activity/a;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->i:Lcom/mchsdk/paysdk/b/c;

    new-instance v0, Lcom/mchsdk/paysdk/activity/a$5;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/a$5;-><init>(Lcom/mchsdk/paysdk/activity/a;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->j:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/activity/a$6;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/a$6;-><init>(Lcom/mchsdk/paysdk/activity/a;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->k:Lcom/mchsdk/paysdk/b/b;

    new-instance v0, Lcom/mchsdk/paysdk/activity/a$7;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/a$7;-><init>(Lcom/mchsdk/paysdk/activity/a;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->l:Landroid/content/DialogInterface$OnKeyListener;

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/a;->m:Landroid/content/Context;

    iput-object p2, p0, Lcom/mchsdk/paysdk/activity/a;->b:Landroid/os/Handler;

    new-instance v0, Lcom/mchsdk/paysdk/receive/MCHControlReceiver;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/receive/MCHControlReceiver;-><init>()V

    sput-object v0, Lcom/mchsdk/paysdk/activity/a;->d:Lcom/mchsdk/paysdk/receive/MCHControlReceiver;

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/a;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->m:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/a;Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;)Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/a;->o:Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/a;Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/a;->p:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    return-object p1
.end method

.method private a(Lcom/mchsdk/paysdk/a/p;)V
    .registers 5

    const-string v0, "LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#getPhoneCodeSuccess  verifyCode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/a/p;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->m:Landroid/content/Context;

    const-string v1, "\u9a8c\u8bc1\u7801\u53d1\u9001\u6210\u529f\u3000\u8bf7\u6ce8\u610f\u67e5\u6536"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mchsdk/paysdk/view/util/e;->a(I)Lcom/mchsdk/paysdk/view/util/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/util/f;->c()V

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/a;Lcom/mchsdk/paysdk/a/p;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/a/p;)V

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/a;Lcom/mchsdk/paysdk/e/s;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/e/s;)V

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/a;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/activity/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/mchsdk/paysdk/activity/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mchsdk/paysdk/activity/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/mchsdk/paysdk/e/s;)V
    .registers 6

    const/4 v3, 0x1

    const-string v0, "LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fun#registerSuccess result= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/s;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/s;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/s;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6b

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6b

    invoke-static {}, Lcom/mchsdk/paysdk/a/j;->a()Lcom/mchsdk/paysdk/a/j;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/mchsdk/paysdk/a/j;->a(ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/mchsdk/paysdk/activity/a;->q:Z

    if-eqz v0, :cond_5c

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/s;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mchsdk/paysdk/activity/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b
    :goto_5b
    return-void

    :cond_5c
    invoke-static {v3}, Lcom/mchsdk/paysdk/view/util/e;->a(I)Lcom/mchsdk/paysdk/view/util/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/util/f;->d()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->m:Landroid/content/Context;

    const-string v1, "\u6ce8\u518c\u6210\u529f"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5b

    :cond_6b
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->m:Landroid/content/Context;

    const-string v1, "\u767b\u5f55\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5b

    :cond_73
    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/s;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5b

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->m:Landroid/content/Context;

    const-string v1, "\u8d26\u53f7\u5df2\u88ab\u6ce8\u518c"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5b

    :cond_8d
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->m:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/s;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5b
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Lcom/mchsdk/paysdk/f/c/q;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/q;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mchsdk/paysdk/f/c/q;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/mchsdk/paysdk/f/c/q;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/mchsdk/paysdk/f/c/q;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/a;->s:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/q;->a(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/mchsdk/paysdk/activity/a;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/activity/a;)Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->p:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    return-object v0
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/activity/a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/mchsdk/paysdk/activity/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 7

    const-string v0, "wb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "qq"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "wx"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "bd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    iget-object v4, p0, Lcom/mchsdk/paysdk/activity/a;->n:Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    if-eqz v4, :cond_21

    iget-object v4, p0, Lcom/mchsdk/paysdk/activity/a;->n:Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->a(ZZZZ)V

    :cond_21
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/mchsdk/paysdk/f/c/r;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/r;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mchsdk/paysdk/f/c/r;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/mchsdk/paysdk/f/c/r;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/a;->s:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/r;->a(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/activity/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/mchsdk/paysdk/activity/a;->r:Z

    return p1
.end method

.method static synthetic c(Lcom/mchsdk/paysdk/activity/a;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->y:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private c()V
    .registers 3

    new-instance v0, Lcom/mchsdk/paysdk/f/c/t;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/t;-><init>()V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/a;->t:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/t;->a(Landroid/os/Handler;)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "string_name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mchsdk/paysdk/f/c/k;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/k;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mchsdk/paysdk/f/c/k;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/mchsdk/paysdk/f/c/k;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/a;->s:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/k;->a(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic d(Lcom/mchsdk/paysdk/activity/a;)Lcom/mchsdk/paysdk/b/c;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->w:Lcom/mchsdk/paysdk/b/c;

    return-object v0
.end method

.method private d()V
    .registers 2

    invoke-static {}, Lcom/mchsdk/paysdk/a/j;->a()Lcom/mchsdk/paysdk/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/j;->b()V

    return-void
.end method

.method static synthetic e(Lcom/mchsdk/paysdk/activity/a;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->v:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic f(Lcom/mchsdk/paysdk/activity/a;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->s:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/mchsdk/paysdk/activity/a;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->u:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic h(Lcom/mchsdk/paysdk/activity/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/a;->d()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5

    invoke-static {p1}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->m:Landroid/content/Context;

    const-string v1, "\u7528\u6237\u540d\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_d
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    invoke-static {p2}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->m:Landroid/content/Context;

    const-string v1, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_d

    :cond_21
    const-string v0, "^[a-zA-Z0-9_]{6,15}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v1, :cond_41

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->m:Landroid/content/Context;

    const-string v1, "\u7528\u6237\u540d\u8bf7\u8f93\u51656-15\u4f4d\u6570\u5b57\u6216\u82f1\u6587\u5b57\u6bcd"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_d

    :cond_41
    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->m:Landroid/content/Context;

    const-string v1, "\u5bc6\u7801\u8bf7\u8f93\u51656-15\u4f4d\u6570\u5b57\u6216\u82f1\u6587\u5b57\u6bcd"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_d

    :cond_4b
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_12
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 6

    invoke-static {p1}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->m:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_d
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    invoke-static {p2}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->m:Landroid/content/Context;

    const-string v1, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_d

    :cond_21
    invoke-static {p3}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->m:Landroid/content/Context;

    const-string v1, "\u9a8c\u8bc1\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_d

    :cond_2f
    const-string v0, "^1[0-9]{10}$"

    const-string v1, "^[a-zA-Z0-9_]{6,15}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->m:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_d

    :cond_55
    if-nez v1, :cond_5f

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->m:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u51656-15\u4f4d\u6570\u5b57\u6216\u82f1\u6587\u5b57\u6bcd"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_d

    :cond_5f
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_12
.end method

.method public a()V
    .registers 6

    const/4 v4, 0x0

    invoke-static {}, Lcom/mchsdk/paysdk/a/d;->a()Lcom/mchsdk/paysdk/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/d;->g()Z

    move-result v0

    if-eqz v0, :cond_97

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/a;->m:Landroid/content/Context;

    sget-object v2, Lcom/mchsdk/paysdk/activity/a;->d:Lcom/mchsdk/paysdk/receive/MCHControlReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "account"

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/a;->m:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/m;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "password"

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/a;->m:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/mchsdk/paysdk/utils/m;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "savepwd"

    iget-object v3, p0, Lcom/mchsdk/paysdk/activity/a;->m:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/mchsdk/paysdk/utils/m;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string v0, ""

    :cond_4d
    iput-boolean v4, p0, Lcom/mchsdk/paysdk/activity/a;->q:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mchsdk/paysdk/activity/a;->r:Z

    new-instance v2, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;

    invoke-direct {v2}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;-><init>()V

    invoke-virtual {v2, v1}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;->a(Ljava/lang/CharSequence;)Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;->b(Ljava/lang/CharSequence;)Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/a;->k:Lcom/mchsdk/paysdk/b/b;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;->a(Lcom/mchsdk/paysdk/b/b;)Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/a;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;->d(Landroid/view/View$OnClickListener;)Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/a;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;->a(Landroid/view/View$OnClickListener;)Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/a;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;->c(Landroid/view/View$OnClickListener;)Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/a;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;->b(Landroid/view/View$OnClickListener;)Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/a;->l:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/a;->m:Landroid/content/Context;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->m:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;->a(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->n:Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/a;->c()V

    :goto_96
    return-void

    :cond_97
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->m:Landroid/content/Context;

    const-string v1, "\u83b7\u53d6\u6e20\u9053\u4fe1\u606f\u5f02\u5e38"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_96
.end method

.method protected a(Lcom/mchsdk/paysdk/e/q;)V
    .registers 5

    const-string v0, "LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/q;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "1"

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/q;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/mchsdk/paysdk/a/j;->a()Lcom/mchsdk/paysdk/a/j;

    move-result-object v0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/mchsdk/paysdk/activity/a;->r:Z

    invoke-virtual {v0, v1, v2, p1}, Lcom/mchsdk/paysdk/a/j;->a(ZZLcom/mchsdk/paysdk/e/q;)V

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/activity/a;->b()V

    :goto_35
    return-void

    :cond_36
    invoke-static {}, Lcom/mchsdk/paysdk/a/j;->a()Lcom/mchsdk/paysdk/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/j;->b()V

    goto :goto_35
.end method

.method protected a(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    const-string v1, "^1[0-9]{10}$"

    invoke-static {p1}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/a;->m:Landroid/content/Context;

    const-string v2, "\u7528\u6237\u540d\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_10
    return v0

    :cond_11
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/a;->m:Landroid/content/Context;

    const-string v2, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_10

    :cond_1f
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public b()V
    .registers 5

    sget-object v0, Lcom/mchsdk/paysdk/activity/a;->d:Lcom/mchsdk/paysdk/receive/MCHControlReceiver;

    if-eqz v0, :cond_b

    :try_start_4
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->m:Landroid/content/Context;

    sget-object v1, Lcom/mchsdk/paysdk/activity/a;->d:Lcom/mchsdk/paysdk/receive/MCHControlReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_32

    :cond_b
    :goto_b
    :try_start_b
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->n:Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->n:Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->dismiss()V

    :cond_14
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->o:Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->o:Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;->dismiss()V

    :cond_1d
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->p:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->p:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->dismiss()V

    :cond_26
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->b:Landroid/os/Handler;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a;->b:Landroid/os/Handler;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_31} :catch_3d

    :cond_31
    :goto_31
    return-void

    :catch_32
    move-exception v0

    const-string v1, "LoginActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "LoginActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismisDialog error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31
.end method

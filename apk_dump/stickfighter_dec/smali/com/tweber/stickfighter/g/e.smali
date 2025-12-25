.class public Lcom/tweber/stickfighter/g/e;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Lcom/tweber/stickfighter/e/an;
.implements Lcom/tweber/stickfighter/views/k;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:Ljava/lang/String;

.field private d:Lcom/tweber/stickfighter/e/af;

.field private e:Lcom/tweber/stickfighter/g/j;

.field private f:Lcom/tweber/stickfighter/h/p;

.field private g:Lcom/tweber/stickfighter/h/a;

.field private h:Lcom/tweber/stickfighter/h/j;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Z

.field private k:Landroid/util/SparseArray;

.field private l:Landroid/graphics/PointF;

.field private m:Lcom/tweber/stickfighter/h/w;

.field private n:Lcom/tweber/stickfighter/views/EditorToolbar;

.field private o:Landroid/widget/ImageButton;

.field private p:Landroid/widget/Spinner;

.field private q:Landroid/graphics/PointF;

.field private r:J

.field private s:Z

.field private t:Lcom/tweber/stickfighter/h/a;

.field private u:Lcom/tweber/stickfighter/h/a;

.field private v:Lcom/tweber/stickfighter/h/a;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    invoke-static {}, Lcom/tweber/stickfighter/StickFighterApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tweber/stickfighter/g/e;->a:F

    invoke-static {}, Lcom/tweber/stickfighter/StickFighterApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tweber/stickfighter/g/e;->b:F

    const-string v0, "SelectFigure"

    iput-object v0, p0, Lcom/tweber/stickfighter/g/e;->c:Ljava/lang/String;

    iput-object v3, p0, Lcom/tweber/stickfighter/g/e;->h:Lcom/tweber/stickfighter/h/j;

    iput-boolean v2, p0, Lcom/tweber/stickfighter/g/e;->j:Z

    new-instance v0, Lcom/tweber/stickfighter/h/w;

    invoke-direct {v0}, Lcom/tweber/stickfighter/h/w;-><init>()V

    iput-object v0, p0, Lcom/tweber/stickfighter/g/e;->m:Lcom/tweber/stickfighter/h/w;

    iput-object v3, p0, Lcom/tweber/stickfighter/g/e;->q:Landroid/graphics/PointF;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tweber/stickfighter/g/e;->r:J

    iput-boolean v2, p0, Lcom/tweber/stickfighter/g/e;->s:Z

    new-instance v0, Lcom/tweber/stickfighter/g/g;

    invoke-direct {v0, p0}, Lcom/tweber/stickfighter/g/g;-><init>(Lcom/tweber/stickfighter/g/e;)V

    iput-object v0, p0, Lcom/tweber/stickfighter/g/e;->t:Lcom/tweber/stickfighter/h/a;

    new-instance v0, Lcom/tweber/stickfighter/g/h;

    invoke-direct {v0, p0}, Lcom/tweber/stickfighter/g/h;-><init>(Lcom/tweber/stickfighter/g/e;)V

    iput-object v0, p0, Lcom/tweber/stickfighter/g/e;->u:Lcom/tweber/stickfighter/h/a;

    new-instance v0, Lcom/tweber/stickfighter/g/i;

    invoke-direct {v0, p0}, Lcom/tweber/stickfighter/g/i;-><init>(Lcom/tweber/stickfighter/g/e;)V

    iput-object v0, p0, Lcom/tweber/stickfighter/g/e;->v:Lcom/tweber/stickfighter/h/a;

    return-void
.end method

.method private a(FF)Lcom/tweber/stickfighter/activities/g;
    .locals 12

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/e;->f:Lcom/tweber/stickfighter/h/p;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/p;->a()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/tweber/stickfighter/g/e;->h:Lcom/tweber/stickfighter/h/j;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v4

    iget-object v5, p0, Lcom/tweber/stickfighter/g/e;->h:Lcom/tweber/stickfighter/h/j;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v5

    sub-float v6, v4, p1

    sub-float v7, v5, p2

    float-to-double v8, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v6, v7

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    if-eqz v1, :cond_2

    iget v7, v1, Lcom/tweber/stickfighter/activities/g;->d:F

    cmpg-float v7, v6, v7

    if-gez v7, :cond_4

    :cond_2
    new-instance v1, Lcom/tweber/stickfighter/activities/g;

    invoke-direct {v1, v0, v4, v5, v6}, Lcom/tweber/stickfighter/activities/g;-><init>(Lcom/tweber/stickfighter/h/u;FFF)V

    move-object v0, v1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/tweber/stickfighter/g/e;FF)Lcom/tweber/stickfighter/activities/g;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tweber/stickfighter/g/e;->a(FF)Lcom/tweber/stickfighter/activities/g;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Lcom/tweber/stickfighter/g/e;
    .locals 3

    new-instance v0, Lcom/tweber/stickfighter/g/e;

    invoke-direct {v0}, Lcom/tweber/stickfighter/g/e;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "CustomFigureID"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/g/e;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/tweber/stickfighter/g/e;Lcom/tweber/stickfighter/h/j;)Lcom/tweber/stickfighter/h/j;
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/g/e;->h:Lcom/tweber/stickfighter/h/j;

    return-object p1
.end method

.method private a(IZ)V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tweber/stickfighter/g/e;->l:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tweber/stickfighter/g/e;->j:Z

    invoke-static {}, Lcom/tweber/stickfighter/h/v;->a()Lcom/tweber/stickfighter/h/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tweber/stickfighter/c/a;->a(I)Lcom/tweber/stickfighter/h/p;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/g/e;->f:Lcom/tweber/stickfighter/h/p;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tweber/stickfighter/g/e;->k:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/e;->f:Lcom/tweber/stickfighter/h/p;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/p;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    iget-object v3, p0, Lcom/tweber/stickfighter/g/e;->k:Landroid/util/SparseArray;

    iget v4, v0, Lcom/tweber/stickfighter/h/c;->a:I

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/tweber/stickfighter/g/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/e;->b()V

    return-void
.end method

.method static synthetic a(Lcom/tweber/stickfighter/g/e;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tweber/stickfighter/g/e;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/e;->m:Lcom/tweber/stickfighter/h/w;

    return-object v0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/e;->e:Lcom/tweber/stickfighter/g/j;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/g/j;->invalidate()V

    return-void
.end method

.method private b(I)V
    .locals 1

    sput p1, Lcom/tweber/stickfighter/activities/a;->a:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/tweber/stickfighter/g/e;->n:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-virtual {v0, p1}, Lcom/tweber/stickfighter/views/EditorToolbar;->setActiveActionMode(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tweber/stickfighter/g/e;->u:Lcom/tweber/stickfighter/h/a;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/e;->g:Lcom/tweber/stickfighter/h/a;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tweber/stickfighter/g/e;->t:Lcom/tweber/stickfighter/h/a;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/e;->g:Lcom/tweber/stickfighter/h/a;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tweber/stickfighter/g/e;->v:Lcom/tweber/stickfighter/h/a;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/e;->g:Lcom/tweber/stickfighter/h/a;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(FF)Z
    .locals 7

    const/4 v0, 0x0

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tweber/stickfighter/g/e;->r:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tweber/stickfighter/g/e;->q:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/tweber/stickfighter/g/e;->q:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v6

    if-gtz v1, :cond_0

    cmpl-float v1, v2, v6

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/tweber/stickfighter/g/e;)F
    .locals 1

    iget v0, p0, Lcom/tweber/stickfighter/g/e;->a:F

    return v0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/tweber/stickfighter/g/e;->d:Lcom/tweber/stickfighter/e/af;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tweber/stickfighter/e/af;

    invoke-direct {v0}, Lcom/tweber/stickfighter/e/af;-><init>()V

    iput-object v0, p0, Lcom/tweber/stickfighter/g/e;->d:Lcom/tweber/stickfighter/e/af;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/e;->d:Lcom/tweber/stickfighter/e/af;

    sget-object v1, Lcom/tweber/stickfighter/h/o;->b:Lcom/tweber/stickfighter/h/o;

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/e/af;->a(Lcom/tweber/stickfighter/h/o;)V

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/g/e;->d:Lcom/tweber/stickfighter/e/af;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/e;->getChildFragmentManager()Landroid/support/v4/app/al;

    move-result-object v1

    const-string v2, "SelectFigure"

    invoke-virtual {v0, v1, v2}, Lcom/tweber/stickfighter/e/af;->show(Landroid/support/v4/app/al;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/tweber/stickfighter/g/e;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/e;->k:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic e(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/j;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/e;->h:Lcom/tweber/stickfighter/h/j;

    return-object v0
.end method

.method static synthetic f(Lcom/tweber/stickfighter/g/e;)F
    .locals 1

    iget v0, p0, Lcom/tweber/stickfighter/g/e;->b:F

    return v0
.end method

.method private f(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/e;->p:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    return-void
.end method

.method static synthetic g(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/p;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/e;->f:Lcom/tweber/stickfighter/h/p;

    return-object v0
.end method

.method static synthetic h(Lcom/tweber/stickfighter/g/e;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/e;->i:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic i(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/a;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/e;->g:Lcom/tweber/stickfighter/h/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/tweber/stickfighter/g/e;->s:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tweber/stickfighter/g/e;->s:Z

    iget-object v0, p0, Lcom/tweber/stickfighter/g/e;->n:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/views/EditorToolbar;->f()V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/e;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c00be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/tweber/stickfighter/i/e;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/e;->f:Lcom/tweber/stickfighter/h/p;

    invoke-direct {v0, v1}, Lcom/tweber/stickfighter/i/e;-><init>(Lcom/tweber/stickfighter/h/p;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/i/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public a(J)V
    .locals 7

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/e;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v2

    iget-object v3, p0, Lcom/tweber/stickfighter/g/e;->h:Lcom/tweber/stickfighter/h/j;

    iget-object v4, p0, Lcom/tweber/stickfighter/g/e;->f:Lcom/tweber/stickfighter/h/p;

    iget-object v5, p0, Lcom/tweber/stickfighter/g/e;->k:Landroid/util/SparseArray;

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/tweber/stickfighter/h/l;->a(JLandroid/content/Context;Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/e;->b()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tweber/stickfighter/g/e;->f(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v5

    :pswitch_0
    iput-boolean v5, p0, Lcom/tweber/stickfighter/g/e;->j:Z

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/tweber/stickfighter/g/e;->l:Landroid/graphics/PointF;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tweber/stickfighter/g/e;->r:J

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/tweber/stickfighter/g/e;->q:Landroid/graphics/PointF;

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tweber/stickfighter/g/e;->j:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/tweber/stickfighter/g/e;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/tweber/stickfighter/g/e;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Lcom/tweber/stickfighter/g/e;->l:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v2, v0, v2

    iget-object v3, p0, Lcom/tweber/stickfighter/g/e;->l:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, v1, v3

    iget-object v4, p0, Lcom/tweber/stickfighter/g/e;->l:Landroid/graphics/PointF;

    iput v0, v4, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/tweber/stickfighter/g/e;->l:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/tweber/stickfighter/g/e;->n:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/views/EditorToolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    float-to-int v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/tweber/stickfighter/g/e;->n:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-virtual {v1, v0}, Lcom/tweber/stickfighter/views/EditorToolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/e;->n:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/views/EditorToolbar;->invalidate()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/e;->c()V

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/e;->b()V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Next frame should not be showing in custom figure editor"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Previous frame should not be showing in custom figure editor"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/g/e;->n:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/views/EditorToolbar;->a()V

    new-instance v0, Lcom/tweber/stickfighter/i/e;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/e;->f:Lcom/tweber/stickfighter/h/p;

    invoke-direct {v0, v1}, Lcom/tweber/stickfighter/i/e;-><init>(Lcom/tweber/stickfighter/h/p;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/i/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, La/a/a/c;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/e;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CustomFigureID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v1

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/tweber/stickfighter/d/b;->a(J)Lcom/tweber/stickfighter/h/v;

    move-result-object v0

    invoke-static {v0}, Lcom/tweber/stickfighter/h/v;->a(Lcom/tweber/stickfighter/h/v;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    const v0, 0x7f03003d

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c00b6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/e;->i:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/tweber/stickfighter/g/j;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/e;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/tweber/stickfighter/g/j;-><init>(Lcom/tweber/stickfighter/g/e;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tweber/stickfighter/g/e;->e:Lcom/tweber/stickfighter/g/j;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/e;->i:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/e;->e:Lcom/tweber/stickfighter/g/j;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    const v0, 0x7f0c00bc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/views/EditorToolbar;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/e;->n:Lcom/tweber/stickfighter/views/EditorToolbar;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/e;->n:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/views/EditorToolbar;->h()V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/e;->n:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-virtual {v0, p0}, Lcom/tweber/stickfighter/views/EditorToolbar;->setOnInteractionListener(Lcom/tweber/stickfighter/views/k;)V

    const v0, 0x7f0c00bd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/e;->o:Landroid/widget/ImageButton;

    invoke-direct {p0, v3}, Lcom/tweber/stickfighter/g/e;->b(I)V

    const v0, 0x7f0c00aa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/e;->p:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/e;->p:Landroid/widget/Spinner;

    new-instance v2, Lcom/tweber/stickfighter/b/a;

    invoke-direct {v2}, Lcom/tweber/stickfighter/b/a;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/e;->p:Landroid/widget/Spinner;

    new-instance v2, Lcom/tweber/stickfighter/g/f;

    invoke-direct {v2, p0}, Lcom/tweber/stickfighter/g/f;-><init>(Lcom/tweber/stickfighter/g/e;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-direct {p0, v3, v3}, Lcom/tweber/stickfighter/g/e;->a(IZ)V

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, La/a/a/c;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lcom/tweber/stickfighter/f/e;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/e;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ae;->finish()V

    return-void
.end method

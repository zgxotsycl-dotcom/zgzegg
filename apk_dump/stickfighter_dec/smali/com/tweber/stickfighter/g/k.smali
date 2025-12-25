.class public Lcom/tweber/stickfighter/g/k;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Lcom/tweber/stickfighter/e/an;
.implements Lcom/tweber/stickfighter/views/k;


# instance fields
.field private A:Lcom/tweber/stickfighter/h/a;

.field private B:Lcom/tweber/stickfighter/h/a;

.field private final a:Ljava/lang/String;

.field private final b:F

.field private c:Lcom/tweber/stickfighter/e/af;

.field private d:Lcom/tweber/stickfighter/g/u;

.field private e:Lcom/tweber/stickfighter/h/p;

.field private f:Lcom/tweber/stickfighter/h/a;

.field private g:Lcom/tweber/stickfighter/h/j;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Z

.field private j:Landroid/util/SparseArray;

.field private k:Landroid/graphics/PointF;

.field private l:Lcom/tweber/stickfighter/h/w;

.field private m:Lcom/tweber/stickfighter/views/EditorToolbar;

.field private n:Landroid/widget/ImageButton;

.field private o:Landroid/widget/Spinner;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/graphics/Bitmap;

.field private t:Landroid/view/View;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/graphics/Bitmap;

.field private w:Landroid/graphics/PointF;

.field private x:J

.field private y:Z

.field private z:Lcom/tweber/stickfighter/h/a;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, "SelectFigure"

    iput-object v0, p0, Lcom/tweber/stickfighter/g/k;->a:Ljava/lang/String;

    invoke-static {}, Lcom/tweber/stickfighter/StickFighterApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tweber/stickfighter/g/k;->b:F

    iput-object v3, p0, Lcom/tweber/stickfighter/g/k;->g:Lcom/tweber/stickfighter/h/j;

    iput-boolean v2, p0, Lcom/tweber/stickfighter/g/k;->i:Z

    new-instance v0, Lcom/tweber/stickfighter/h/w;

    invoke-direct {v0}, Lcom/tweber/stickfighter/h/w;-><init>()V

    iput-object v0, p0, Lcom/tweber/stickfighter/g/k;->l:Lcom/tweber/stickfighter/h/w;

    iput-object v3, p0, Lcom/tweber/stickfighter/g/k;->w:Landroid/graphics/PointF;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tweber/stickfighter/g/k;->x:J

    iput-boolean v2, p0, Lcom/tweber/stickfighter/g/k;->y:Z

    new-instance v0, Lcom/tweber/stickfighter/g/q;

    invoke-direct {v0, p0}, Lcom/tweber/stickfighter/g/q;-><init>(Lcom/tweber/stickfighter/g/k;)V

    iput-object v0, p0, Lcom/tweber/stickfighter/g/k;->z:Lcom/tweber/stickfighter/h/a;

    new-instance v0, Lcom/tweber/stickfighter/g/r;

    invoke-direct {v0, p0}, Lcom/tweber/stickfighter/g/r;-><init>(Lcom/tweber/stickfighter/g/k;)V

    iput-object v0, p0, Lcom/tweber/stickfighter/g/k;->A:Lcom/tweber/stickfighter/h/a;

    new-instance v0, Lcom/tweber/stickfighter/g/t;

    invoke-direct {v0, p0}, Lcom/tweber/stickfighter/g/t;-><init>(Lcom/tweber/stickfighter/g/k;)V

    iput-object v0, p0, Lcom/tweber/stickfighter/g/k;->B:Lcom/tweber/stickfighter/h/a;

    return-void
.end method

.method private a(FF)Lcom/tweber/stickfighter/activities/g;
    .locals 12

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->e:Lcom/tweber/stickfighter/h/p;

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

    iget-object v4, p0, Lcom/tweber/stickfighter/g/k;->g:Lcom/tweber/stickfighter/h/j;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v4

    iget-object v5, p0, Lcom/tweber/stickfighter/g/k;->g:Lcom/tweber/stickfighter/h/j;

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

.method static synthetic a(Lcom/tweber/stickfighter/g/k;FF)Lcom/tweber/stickfighter/activities/g;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tweber/stickfighter/g/k;->a(FF)Lcom/tweber/stickfighter/activities/g;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Lcom/tweber/stickfighter/g/k;
    .locals 3

    new-instance v0, Lcom/tweber/stickfighter/g/k;

    invoke-direct {v0}, Lcom/tweber/stickfighter/g/k;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "Position"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/g/k;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/tweber/stickfighter/g/k;Lcom/tweber/stickfighter/h/j;)Lcom/tweber/stickfighter/h/j;
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/g/k;->g:Lcom/tweber/stickfighter/h/j;

    return-object p1
.end method

.method private a(IZ)V
    .locals 6

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->e:Lcom/tweber/stickfighter/h/p;

    if-nez v0, :cond_4

    const/4 v0, -0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->e:Lcom/tweber/stickfighter/h/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->s:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/tweber/stickfighter/g/k;->r:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/tweber/stickfighter/g/k;->s:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/g/k;->v:Landroid/graphics/Bitmap;

    :cond_0
    if-eqz p2, :cond_1

    if-le p1, v1, :cond_5

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/k;->s:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/tweber/stickfighter/g/k;->d:Lcom/tweber/stickfighter/g/u;

    invoke-virtual {v2, v0}, Lcom/tweber/stickfighter/g/u;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->r:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/k;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tweber/stickfighter/g/k;->k:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tweber/stickfighter/g/k;->i:Z

    invoke-static {}, Lcom/tweber/stickfighter/h/v;->a()Lcom/tweber/stickfighter/h/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tweber/stickfighter/c/a;->a(I)Lcom/tweber/stickfighter/h/p;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/g/k;->e:Lcom/tweber/stickfighter/h/p;

    if-eqz p2, :cond_2

    if-le p1, v1, :cond_6

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/k;->v:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/tweber/stickfighter/g/k;->d:Lcom/tweber/stickfighter/g/u;

    invoke-virtual {v2, v0}, Lcom/tweber/stickfighter/g/u;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->u:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/k;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tweber/stickfighter/g/k;->j:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->e:Lcom/tweber/stickfighter/h/p;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/p;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    iget-object v4, p0, Lcom/tweber/stickfighter/g/k;->j:Landroid/util/SparseArray;

    iget v5, v0, Lcom/tweber/stickfighter/h/c;->a:I

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->e:Lcom/tweber/stickfighter/h/p;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/p;->b()I

    move-result v0

    move v1, v0

    goto/16 :goto_0

    :cond_5
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/k;->v:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/tweber/stickfighter/g/k;->d:Lcom/tweber/stickfighter/g/u;

    invoke-virtual {v2, v0}, Lcom/tweber/stickfighter/g/u;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->u:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/k;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_6
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/k;->s:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/tweber/stickfighter/g/k;->d:Lcom/tweber/stickfighter/g/u;

    invoke-virtual {v2, v0}, Lcom/tweber/stickfighter/g/u;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->r:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/k;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->e:Lcom/tweber/stickfighter/h/p;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/p;->b()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->m:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-virtual {v0, p2}, Lcom/tweber/stickfighter/views/EditorToolbar;->a(Z)V

    :goto_4
    if-eqz p2, :cond_8

    if-ge v1, p1, :cond_a

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/k;->b()V

    :cond_8
    :goto_5
    return-void

    :cond_9
    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->m:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-virtual {v0, p2}, Lcom/tweber/stickfighter/views/EditorToolbar;->b(Z)V

    goto :goto_4

    :cond_a
    if-le v1, p1, :cond_8

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/k;->c()V

    goto :goto_5
.end method

.method static synthetic a(Lcom/tweber/stickfighter/g/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/k;->d()V

    return-void
.end method

.method static synthetic a(Lcom/tweber/stickfighter/g/k;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tweber/stickfighter/g/k;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/tweber/stickfighter/g/k;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->q:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 2

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/k;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    const v1, 0x7f04000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/tweber/stickfighter/g/m;

    invoke-direct {v1, p0}, Lcom/tweber/stickfighter/g/m;-><init>(Lcom/tweber/stickfighter/g/k;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/tweber/stickfighter/g/k;->q:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/k;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    const v1, 0x7f040010

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/tweber/stickfighter/g/n;

    invoke-direct {v1, p0}, Lcom/tweber/stickfighter/g/n;-><init>(Lcom/tweber/stickfighter/g/k;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/tweber/stickfighter/g/k;->t:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private b(I)V
    .locals 1

    sput p1, Lcom/tweber/stickfighter/activities/a;->a:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->m:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-virtual {v0, p1}, Lcom/tweber/stickfighter/views/EditorToolbar;->setActiveActionMode(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->A:Lcom/tweber/stickfighter/h/a;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/k;->f:Lcom/tweber/stickfighter/h/a;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->z:Lcom/tweber/stickfighter/h/a;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/k;->f:Lcom/tweber/stickfighter/h/a;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->B:Lcom/tweber/stickfighter/h/a;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/k;->f:Lcom/tweber/stickfighter/h/a;

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

    iget-wide v4, p0, Lcom/tweber/stickfighter/g/k;->x:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tweber/stickfighter/g/k;->w:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/tweber/stickfighter/g/k;->w:Landroid/graphics/PointF;

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

.method static synthetic c(Lcom/tweber/stickfighter/g/k;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->t:Landroid/view/View;

    return-object v0
.end method

.method private c()V
    .locals 2

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/k;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    const v1, 0x7f04000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/tweber/stickfighter/g/o;

    invoke-direct {v1, p0}, Lcom/tweber/stickfighter/g/o;-><init>(Lcom/tweber/stickfighter/g/k;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/tweber/stickfighter/g/k;->q:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/k;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    const v1, 0x7f040011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/tweber/stickfighter/g/p;

    invoke-direct {v1, p0}, Lcom/tweber/stickfighter/g/p;-><init>(Lcom/tweber/stickfighter/g/k;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/tweber/stickfighter/g/k;->t:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic d(Lcom/tweber/stickfighter/g/k;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->p:Landroid/view/View;

    return-object v0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->d:Lcom/tweber/stickfighter/g/u;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/g/u;->invalidate()V

    return-void
.end method

.method static synthetic e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->l:Lcom/tweber/stickfighter/h/w;

    return-object v0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->c:Lcom/tweber/stickfighter/e/af;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tweber/stickfighter/e/af;

    invoke-direct {v0}, Lcom/tweber/stickfighter/e/af;-><init>()V

    iput-object v0, p0, Lcom/tweber/stickfighter/g/k;->c:Lcom/tweber/stickfighter/e/af;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->c:Lcom/tweber/stickfighter/e/af;

    sget-object v1, Lcom/tweber/stickfighter/h/o;->a:Lcom/tweber/stickfighter/h/o;

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/e/af;->a(Lcom/tweber/stickfighter/h/o;)V

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->c:Lcom/tweber/stickfighter/e/af;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/e/af;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->c:Lcom/tweber/stickfighter/e/af;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/k;->getChildFragmentManager()Landroid/support/v4/app/al;

    move-result-object v1

    const-string v2, "SelectFigure"

    invoke-virtual {v0, v1, v2}, Lcom/tweber/stickfighter/e/af;->show(Landroid/support/v4/app/al;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/tweber/stickfighter/g/k;)F
    .locals 1

    iget v0, p0, Lcom/tweber/stickfighter/g/k;->b:F

    return v0
.end method

.method private f(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->o:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    return-void
.end method

.method static synthetic g(Lcom/tweber/stickfighter/g/k;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->j:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic h(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/j;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->g:Lcom/tweber/stickfighter/h/j;

    return-object v0
.end method

.method static synthetic i(Lcom/tweber/stickfighter/g/k;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->n:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic j(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/p;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->e:Lcom/tweber/stickfighter/h/p;

    return-object v0
.end method

.method static synthetic k(Lcom/tweber/stickfighter/g/k;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->h:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic l(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/a;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->f:Lcom/tweber/stickfighter/h/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/tweber/stickfighter/g/k;->y:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tweber/stickfighter/g/k;->y:Z

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->m:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/views/EditorToolbar;->f()V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/k;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c00be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/tweber/stickfighter/i/e;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/k;->e:Lcom/tweber/stickfighter/h/p;

    invoke-direct {v0, v1}, Lcom/tweber/stickfighter/i/e;-><init>(Lcom/tweber/stickfighter/h/p;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/i/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public a(J)V
    .locals 7

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/k;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v2

    iget-object v3, p0, Lcom/tweber/stickfighter/g/k;->g:Lcom/tweber/stickfighter/h/j;

    iget-object v4, p0, Lcom/tweber/stickfighter/g/k;->e:Lcom/tweber/stickfighter/h/p;

    iget-object v5, p0, Lcom/tweber/stickfighter/g/k;->j:Landroid/util/SparseArray;

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/tweber/stickfighter/h/l;->a(JLandroid/content/Context;Lcom/tweber/stickfighter/h/j;Lcom/tweber/stickfighter/h/p;Landroid/util/SparseArray;)V

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/k;->d()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tweber/stickfighter/g/k;->f(Landroid/view/View;)V

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
    iput-boolean v5, p0, Lcom/tweber/stickfighter/g/k;->i:Z

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/tweber/stickfighter/g/k;->k:Landroid/graphics/PointF;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tweber/stickfighter/g/k;->x:J

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/tweber/stickfighter/g/k;->w:Landroid/graphics/PointF;

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tweber/stickfighter/g/k;->i:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/tweber/stickfighter/g/k;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/tweber/stickfighter/g/k;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Lcom/tweber/stickfighter/g/k;->k:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v2, v0, v2

    iget-object v3, p0, Lcom/tweber/stickfighter/g/k;->k:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, v1, v3

    iget-object v4, p0, Lcom/tweber/stickfighter/g/k;->k:Landroid/graphics/PointF;

    iput v0, v4, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->k:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->m:Lcom/tweber/stickfighter/views/EditorToolbar;

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

    iget-object v1, p0, Lcom/tweber/stickfighter/g/k;->m:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-virtual {v1, v0}, Lcom/tweber/stickfighter/views/EditorToolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->m:Lcom/tweber/stickfighter/views/EditorToolbar;

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

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/k;->e()V

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/k;->d()V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tweber/stickfighter/g/k;->y:Z

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->m:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/views/EditorToolbar;->d()V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->m:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/views/EditorToolbar;->f()V

    new-instance v0, Lcom/tweber/stickfighter/i/c;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/k;->e:Lcom/tweber/stickfighter/h/p;

    invoke-direct {v0, v1}, Lcom/tweber/stickfighter/i/c;-><init>(Lcom/tweber/stickfighter/h/p;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/i/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->e:Lcom/tweber/stickfighter/h/p;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/p;->b()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tweber/stickfighter/g/k;->y:Z

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->m:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/views/EditorToolbar;->b()V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->m:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/views/EditorToolbar;->f()V

    new-instance v0, Lcom/tweber/stickfighter/i/d;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/k;->e:Lcom/tweber/stickfighter/h/p;

    invoke-direct {v0, v1}, Lcom/tweber/stickfighter/i/d;-><init>(Lcom/tweber/stickfighter/h/p;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/i/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public e(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->m:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/views/EditorToolbar;->a()V

    new-instance v0, Lcom/tweber/stickfighter/i/e;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/k;->e:Lcom/tweber/stickfighter/h/p;

    invoke-direct {v0, v1}, Lcom/tweber/stickfighter/i/e;-><init>(Lcom/tweber/stickfighter/h/p;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/i/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/tweber/stickfighter/a/a;->a()Lcom/tweber/stickfighter/a/a;

    :cond_0
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, La/a/a/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    const v0, 0x7f03003d

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c00b6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/k;->h:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/tweber/stickfighter/g/u;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/k;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/tweber/stickfighter/g/u;-><init>(Lcom/tweber/stickfighter/g/k;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tweber/stickfighter/g/k;->d:Lcom/tweber/stickfighter/g/u;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->h:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/k;->d:Lcom/tweber/stickfighter/g/u;

    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    const v0, 0x7f0c00bc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/views/EditorToolbar;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/k;->m:Lcom/tweber/stickfighter/views/EditorToolbar;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->m:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-virtual {v0, p0}, Lcom/tweber/stickfighter/views/EditorToolbar;->setOnInteractionListener(Lcom/tweber/stickfighter/views/k;)V

    const v0, 0x7f0c00bd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/k;->n:Landroid/widget/ImageButton;

    const v0, 0x7f0c00b7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/g/k;->p:Landroid/view/View;

    const v0, 0x7f0c00b9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/k;->r:Landroid/widget/ImageView;

    const v0, 0x7f0c00b8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/g/k;->q:Landroid/view/View;

    const v0, 0x7f0c00bb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/k;->u:Landroid/widget/ImageView;

    const v0, 0x7f0c00ba

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/g/k;->t:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/tweber/stickfighter/g/k;->b(I)V

    const v0, 0x7f0c00aa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/k;->o:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->o:Landroid/widget/Spinner;

    new-instance v2, Lcom/tweber/stickfighter/b/a;

    invoke-direct {v2}, Lcom/tweber/stickfighter/b/a;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->o:Landroid/widget/Spinner;

    new-instance v2, Lcom/tweber/stickfighter/g/l;

    invoke-direct {v2, p0}, Lcom/tweber/stickfighter/g/l;-><init>(Lcom/tweber/stickfighter/g/k;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-static {}, Lcom/tweber/stickfighter/h/v;->a()Lcom/tweber/stickfighter/h/v;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/k;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ae;->finish()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/k;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "Position"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_1
    invoke-direct {p0, v0, v4}, Lcom/tweber/stickfighter/g/k;->a(IZ)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "CurrentPosition"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1
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

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/k;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ae;->finish()V

    return-void
.end method

.method public onEvent(Lcom/tweber/stickfighter/f/f;)V
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->e:Lcom/tweber/stickfighter/h/p;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/p;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tweber/stickfighter/g/k;->a(IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tweber/stickfighter/g/k;->y:Z

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->m:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/views/EditorToolbar;->g()V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->m:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/views/EditorToolbar;->e()V

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/k;->d()V

    return-void
.end method

.method public onEvent(Lcom/tweber/stickfighter/f/h;)V
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->e:Lcom/tweber/stickfighter/h/p;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/p;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tweber/stickfighter/g/k;->a(IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tweber/stickfighter/g/k;->y:Z

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->m:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/views/EditorToolbar;->g()V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/k;->m:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/views/EditorToolbar;->c()V

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/k;->d()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "CurrentPosition"

    iget-object v1, p0, Lcom/tweber/stickfighter/g/k;->e:Lcom/tweber/stickfighter/h/p;

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/p;->b()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

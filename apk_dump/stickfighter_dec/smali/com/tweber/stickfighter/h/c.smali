.class public Lcom/tweber/stickfighter/h/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tweber/stickfighter/h/u;
.implements Ljava/lang/Comparable;


# static fields
.field private static e:F


# instance fields
.field public final a:I

.field public b:I

.field public final c:I

.field public transient d:Lcom/tweber/stickfighter/h/d;

.field private f:F

.field private g:F

.field private h:Ljava/util/ArrayList;

.field private transient i:Lcom/tweber/stickfighter/h/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/tweber/stickfighter/StickFighterApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/tweber/stickfighter/h/c;->e:F

    return-void
.end method

.method public constructor <init>(JIFFI)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    long-to-int v0, p1

    iput v0, p0, Lcom/tweber/stickfighter/h/c;->a:I

    iput p4, p0, Lcom/tweber/stickfighter/h/c;->f:F

    iput p5, p0, Lcom/tweber/stickfighter/h/c;->g:F

    iput p3, p0, Lcom/tweber/stickfighter/h/c;->c:I

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tweber/stickfighter/h/c;->h:Ljava/util/ArrayList;

    :cond_0
    iput p6, p0, Lcom/tweber/stickfighter/h/c;->b:I

    return-void
.end method

.method private a(Lcom/tweber/stickfighter/h/c;Ljava/util/ArrayList;Landroid/util/SparseArray;)V
    .locals 3

    iget v0, p1, Lcom/tweber/stickfighter/h/c;->f:F

    iget v1, p0, Lcom/tweber/stickfighter/h/c;->f:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p1, Lcom/tweber/stickfighter/h/c;->g:F

    iget v1, p0, Lcom/tweber/stickfighter/h/c;->g:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, p3}, Lcom/tweber/stickfighter/h/c;->a(Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    invoke-direct {p0, p3}, Lcom/tweber/stickfighter/h/c;->d(Landroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-direct {v0, p1, p2, p3}, Lcom/tweber/stickfighter/h/c;->a(Lcom/tweber/stickfighter/h/c;Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-direct {v0, p1, p2, p3}, Lcom/tweber/stickfighter/h/c;->a(Lcom/tweber/stickfighter/h/c;Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    goto :goto_1
.end method

.method private b(Lcom/tweber/stickfighter/h/c;)V
    .locals 3

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/tweber/stickfighter/h/c;->f:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/tweber/stickfighter/h/c;->g:F

    invoke-virtual {p0, v0, v1}, Lcom/tweber/stickfighter/h/c;->b(FF)V

    return-void
.end method

.method private c(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/tweber/stickfighter/h/j;Landroid/util/SparseArray;)V
    .locals 5

    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iget-object v0, v0, Lcom/tweber/stickfighter/h/d;->b:Lcom/tweber/stickfighter/h/c;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p4}, Lcom/tweber/stickfighter/h/c;->e(Landroid/util/SparseArray;)V

    :cond_1
    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iget-object v0, v0, Lcom/tweber/stickfighter/h/d;->b:Lcom/tweber/stickfighter/h/c;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/tweber/stickfighter/h/c;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/tweber/stickfighter/h/c;Lcom/tweber/stickfighter/h/j;)F

    move-result v1

    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iget-object v0, v0, Lcom/tweber/stickfighter/h/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->b()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->a()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_3
    iget-object v3, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iget-object v3, v3, Lcom/tweber/stickfighter/h/d;->b:Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0, v1, v3, p3}, Lcom/tweber/stickfighter/h/c;->a(FLcom/tweber/stickfighter/h/c;Lcom/tweber/stickfighter/h/j;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private d(Landroid/util/SparseArray;)Ljava/util/ArrayList;
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/tweber/stickfighter/h/c;->a(Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->g()Lcom/tweber/stickfighter/h/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tweber/stickfighter/h/c;

    if-eq v0, v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private d(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/tweber/stickfighter/h/j;Landroid/util/SparseArray;)V
    .locals 6

    const/4 v5, 0x2

    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tweber/stickfighter/h/d;

    invoke-direct {v0, p0}, Lcom/tweber/stickfighter/h/d;-><init>(Lcom/tweber/stickfighter/h/c;)V

    iput-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iget-object v0, v0, Lcom/tweber/stickfighter/h/d;->e:Lcom/tweber/stickfighter/h/c;

    if-nez v0, :cond_3

    invoke-virtual {p0, p4}, Lcom/tweber/stickfighter/h/c;->a(Landroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->b()I

    move-result v3

    if-ne v3, v5, :cond_2

    iget-object v2, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iput-object v0, v2, Lcom/tweber/stickfighter/h/d;->e:Lcom/tweber/stickfighter/h/c;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iget-object v0, v0, Lcom/tweber/stickfighter/h/d;->e:Lcom/tweber/stickfighter/h/c;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/tweber/stickfighter/h/c;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/tweber/stickfighter/h/c;Lcom/tweber/stickfighter/h/j;)F

    move-result v1

    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iget-object v0, v0, Lcom/tweber/stickfighter/h/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
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

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->b()I

    move-result v4

    if-ne v4, v5, :cond_6

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->a()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_6
    iget-object v4, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iget-object v4, v4, Lcom/tweber/stickfighter/h/d;->e:Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0, v1, v4, p3}, Lcom/tweber/stickfighter/h/c;->a(FLcom/tweber/stickfighter/h/c;Lcom/tweber/stickfighter/h/j;)V

    goto :goto_1

    :cond_7
    return-void
.end method

.method private e(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/tweber/stickfighter/h/j;Landroid/util/SparseArray;)V
    .locals 4

    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iget-object v0, v0, Lcom/tweber/stickfighter/h/d;->b:Lcom/tweber/stickfighter/h/c;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p4}, Lcom/tweber/stickfighter/h/c;->e(Landroid/util/SparseArray;)V

    :cond_1
    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p3, v0}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v1

    iget v0, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v0}, Lcom/tweber/stickfighter/h/j;->d(F)F

    move-result v2

    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iget-object v0, v0, Lcom/tweber/stickfighter/h/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0, v1, v2}, Lcom/tweber/stickfighter/h/c;->b(FF)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private e(Landroid/util/SparseArray;)V
    .locals 10

    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tweber/stickfighter/h/d;

    invoke-direct {v0, p0}, Lcom/tweber/stickfighter/h/d;-><init>(Lcom/tweber/stickfighter/h/c;)V

    iput-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/tweber/stickfighter/h/c;->a(Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iput-object v3, v0, Lcom/tweber/stickfighter/h/d;->d:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/tweber/stickfighter/h/c;->d(Landroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v7, p1}, Lcom/tweber/stickfighter/h/c;->a(Lcom/tweber/stickfighter/h/c;Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    invoke-virtual {v5, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v1, :cond_4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v9, v1

    move-object v1, v0

    move v0, v9

    :goto_1
    move-object v2, v1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iput-object v2, v0, Lcom/tweber/stickfighter/h/d;->b:Lcom/tweber/stickfighter/h/c;

    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tweber/stickfighter/h/d;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iget-object v0, v0, Lcom/tweber/stickfighter/h/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    if-eq v0, v2, :cond_2

    iget-object v3, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iget-object v3, v3, Lcom/tweber/stickfighter/h/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    move v0, v1

    move-object v1, v2

    goto :goto_1
.end method

.method private f(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/tweber/stickfighter/h/j;Landroid/util/SparseArray;)V
    .locals 5

    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tweber/stickfighter/h/d;

    invoke-direct {v0, p0}, Lcom/tweber/stickfighter/h/d;-><init>(Lcom/tweber/stickfighter/h/c;)V

    iput-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iget-object v0, v0, Lcom/tweber/stickfighter/h/d;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    invoke-virtual {p0, p4}, Lcom/tweber/stickfighter/h/c;->a(Landroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/tweber/stickfighter/h/d;->a:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iget-object v0, v0, Lcom/tweber/stickfighter/h/d;->e:Lcom/tweber/stickfighter/h/c;

    if-nez v0, :cond_4

    invoke-virtual {p0, p4}, Lcom/tweber/stickfighter/h/c;->a(Landroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->b()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v2, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iput-object v0, v2, Lcom/tweber/stickfighter/h/d;->e:Lcom/tweber/stickfighter/h/c;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iget-object v0, v0, Lcom/tweber/stickfighter/h/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    iget-object v3, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iget-object v3, v3, Lcom/tweber/stickfighter/h/d;->e:Lcom/tweber/stickfighter/h/c;

    invoke-direct {v0, v3}, Lcom/tweber/stickfighter/h/c;->b(Lcom/tweber/stickfighter/h/c;)V

    goto :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/tweber/stickfighter/h/c;Lcom/tweber/stickfighter/h/j;)F
    .locals 6

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p3}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v0

    invoke-virtual {p4, v0}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v0

    invoke-virtual {p3}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v1

    invoke-virtual {p4, v1}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v1

    iget v2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v1

    float-to-double v2, v2

    iget v4, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    iget v4, p1, Landroid/graphics/PointF;->y:F

    sub-float v1, v4, v1

    float-to-double v4, v1

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    sub-double v0, v2, v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method public a(Lcom/tweber/stickfighter/h/c;)I
    .locals 2

    iget v0, p0, Lcom/tweber/stickfighter/h/c;->c:I

    iget v1, p1, Lcom/tweber/stickfighter/h/c;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(Landroid/util/SparseArray;)Ljava/util/ArrayList;
    .locals 9

    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iget-object v0, v0, Lcom/tweber/stickfighter/h/d;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iget-object v0, v0, Lcom/tweber/stickfighter/h/d;->a:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tweber/stickfighter/h/d;

    invoke-direct {v0, p0}, Lcom/tweber/stickfighter/h/d;-><init>(Lcom/tweber/stickfighter/h/c;)V

    iput-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    :cond_1
    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iget-object v0, v0, Lcom/tweber/stickfighter/h/d;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/tweber/stickfighter/h/c;->a(Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    iget-object v1, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iput-object v0, v1, Lcom/tweber/stickfighter/h/d;->d:Ljava/util/ArrayList;

    :cond_2
    invoke-direct {p0, p1}, Lcom/tweber/stickfighter/h/c;->d(Landroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v6, p1}, Lcom/tweber/stickfighter/h/c;->a(Lcom/tweber/stickfighter/h/c;Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v1, :cond_8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v8, v1

    move-object v1, v0

    move v0, v8

    :goto_2
    move-object v2, v1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iput-object v2, v0, Lcom/tweber/stickfighter/h/d;->b:Lcom/tweber/stickfighter/h/c;

    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tweber/stickfighter/h/d;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iget-object v0, v0, Lcom/tweber/stickfighter/h/d;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iget-object v1, v1, Lcom/tweber/stickfighter/h/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    if-eq v0, v2, :cond_4

    iget-object v3, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iget-object v3, v3, Lcom/tweber/stickfighter/h/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->g()Lcom/tweber/stickfighter/h/f;

    move-result-object v0

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_0

    :cond_8
    move v0, v1

    move-object v1, v2

    goto/16 :goto_2
.end method

.method public a(FF)V
    .locals 1

    iget v0, p0, Lcom/tweber/stickfighter/h/c;->f:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/tweber/stickfighter/h/c;->f:F

    iget v0, p0, Lcom/tweber/stickfighter/h/c;->g:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/tweber/stickfighter/h/c;->g:F

    return-void
.end method

.method public a(FLcom/tweber/stickfighter/h/c;Lcom/tweber/stickfighter/h/j;)V
    .locals 8

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v0

    invoke-virtual {p3, v0}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v1

    invoke-virtual {p3, v1}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v1

    invoke-virtual {p2}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v2

    invoke-virtual {p3, v2}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v2

    invoke-virtual {p2}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v3

    invoke-virtual {p3, v3}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v3

    sub-float/2addr v0, v2

    sub-float/2addr v1, v3

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float v6, v0, v5

    mul-float v7, v1, v4

    sub-float/2addr v6, v7

    add-float/2addr v2, v6

    mul-float/2addr v0, v4

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    add-float/2addr v0, v3

    invoke-virtual {p3, v2}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v1

    iput v1, p0, Lcom/tweber/stickfighter/h/c;->f:F

    invoke-virtual {p3, v0}, Lcom/tweber/stickfighter/h/j;->d(F)F

    move-result v0

    iput v0, p0, Lcom/tweber/stickfighter/h/c;->g:F

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Lcom/tweber/stickfighter/h/j;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/c;->a()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v1

    invoke-virtual {p2, v1}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v2

    invoke-virtual {p2, v2}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v2

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/c;->b()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6

    :cond_2
    sget v3, Lcom/tweber/stickfighter/activities/a;->a:I

    if-nez v3, :cond_4

    iget-object v0, p2, Lcom/tweber/stickfighter/h/j;->a:Lcom/tweber/stickfighter/views/l;

    iget-object v0, v0, Lcom/tweber/stickfighter/views/l;->j:Landroid/graphics/Paint;

    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    sget v3, Lcom/tweber/stickfighter/h/c;->e:F

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_4
    sget v3, Lcom/tweber/stickfighter/activities/a;->a:I

    if-ne v3, v6, :cond_5

    iget-object v0, p2, Lcom/tweber/stickfighter/h/j;->a:Lcom/tweber/stickfighter/views/l;

    iget-object v0, v0, Lcom/tweber/stickfighter/views/l;->k:Landroid/graphics/Paint;

    goto :goto_1

    :cond_5
    sget v3, Lcom/tweber/stickfighter/activities/a;->a:I

    if-ne v3, v5, :cond_3

    goto :goto_1

    :cond_6
    if-ne v3, v5, :cond_3

    sget v3, Lcom/tweber/stickfighter/activities/a;->a:I

    if-nez v3, :cond_7

    iget-object v0, p2, Lcom/tweber/stickfighter/h/j;->a:Lcom/tweber/stickfighter/views/l;

    iget-object v0, v0, Lcom/tweber/stickfighter/views/l;->i:Landroid/graphics/Paint;

    goto :goto_1

    :cond_7
    sget v3, Lcom/tweber/stickfighter/activities/a;->a:I

    if-ne v3, v6, :cond_8

    iget-object v0, p2, Lcom/tweber/stickfighter/h/j;->a:Lcom/tweber/stickfighter/views/l;

    iget-object v0, v0, Lcom/tweber/stickfighter/views/l;->l:Landroid/graphics/Paint;

    goto :goto_1

    :cond_8
    sget v3, Lcom/tweber/stickfighter/activities/a;->a:I

    if-ne v3, v5, :cond_3

    iget-object v0, p2, Lcom/tweber/stickfighter/h/j;->a:Lcom/tweber/stickfighter/views/l;

    iget-object v0, v0, Lcom/tweber/stickfighter/views/l;->m:Landroid/graphics/Paint;

    goto :goto_1
.end method

.method public a(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/tweber/stickfighter/h/j;Landroid/util/SparseArray;)V
    .locals 3

    sget v0, Lcom/tweber/stickfighter/activities/a;->a:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/c;->b()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tweber/stickfighter/h/c;->c(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/tweber/stickfighter/h/j;Landroid/util/SparseArray;)V

    goto :goto_0

    :sswitch_1
    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p3, v0}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p3, v1}, Lcom/tweber/stickfighter/h/j;->c(F)F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v1}, Lcom/tweber/stickfighter/h/j;->d(F)F

    move-result v1

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v2}, Lcom/tweber/stickfighter/h/j;->d(F)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/tweber/stickfighter/h/c;->i:Lcom/tweber/stickfighter/h/f;

    invoke-virtual {v2, v0, v1, p4}, Lcom/tweber/stickfighter/h/f;->a(FFLandroid/util/SparseArray;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tweber/stickfighter/h/c;->d(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/tweber/stickfighter/h/j;Landroid/util/SparseArray;)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/tweber/stickfighter/activities/a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/c;->b()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tweber/stickfighter/h/c;->e(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/tweber/stickfighter/h/j;Landroid/util/SparseArray;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_3
        0x8 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Lcom/tweber/stickfighter/h/b;)V
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/tweber/stickfighter/h/f;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/h/c;->i:Lcom/tweber/stickfighter/h/f;

    return-void
.end method

.method public a(Ljava/util/ArrayList;Landroid/util/SparseArray;)V
    .locals 2

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/c;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/b;

    iget v0, v0, Lcom/tweber/stickfighter/h/b;->a:I

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/tweber/stickfighter/h/c;->a(Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/tweber/stickfighter/h/c;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 2

    iget v0, p0, Lcom/tweber/stickfighter/h/c;->b:I

    and-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/tweber/stickfighter/h/c;->b:I

    and-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iget v1, p0, Lcom/tweber/stickfighter/h/c;->b:I

    and-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public b(FF)V
    .locals 0

    iput p1, p0, Lcom/tweber/stickfighter/h/c;->f:F

    iput p2, p0, Lcom/tweber/stickfighter/h/c;->g:F

    return-void
.end method

.method public b(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/tweber/stickfighter/h/j;Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tweber/stickfighter/h/c;->f(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/tweber/stickfighter/h/j;Landroid/util/SparseArray;)V

    return-void
.end method

.method public b(Landroid/util/SparseArray;)V
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tweber/stickfighter/h/d;

    invoke-direct {v0, p0}, Lcom/tweber/stickfighter/h/d;-><init>(Lcom/tweber/stickfighter/h/c;)V

    iput-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iget-object v0, v0, Lcom/tweber/stickfighter/h/d;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    invoke-virtual {p0, p1}, Lcom/tweber/stickfighter/h/c;->a(Landroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/tweber/stickfighter/h/d;->a:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iget-object v0, v0, Lcom/tweber/stickfighter/h/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/f;->c()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/tweber/stickfighter/h/c;->f:F

    return v0
.end method

.method public c(Landroid/util/SparseArray;)V
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tweber/stickfighter/h/d;

    invoke-direct {v0, p0}, Lcom/tweber/stickfighter/h/d;-><init>(Lcom/tweber/stickfighter/h/c;)V

    iput-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iget-object v0, v0, Lcom/tweber/stickfighter/h/d;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    invoke-virtual {p0, p1}, Lcom/tweber/stickfighter/h/c;->a(Landroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/tweber/stickfighter/h/d;->a:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iget-object v0, v0, Lcom/tweber/stickfighter/h/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/f;->d()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {p0, p1}, Lcom/tweber/stickfighter/h/c;->a(Lcom/tweber/stickfighter/h/c;)I

    move-result v0

    return v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lcom/tweber/stickfighter/h/c;->g:F

    return v0
.end method

.method public e()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public f()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iget-object v0, v0, Lcom/tweber/stickfighter/h/d;->a:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public g()Lcom/tweber/stickfighter/h/f;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->i:Lcom/tweber/stickfighter/h/f;

    return-object v0
.end method

.method public h()Z
    .locals 2

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/c;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "<AP ID=\""

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/tweber/stickfighter/h/c;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" Flags=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/tweber/stickfighter/h/c;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" Index=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/tweber/stickfighter/h/c;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" X=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/tweber/stickfighter/h/c;->f:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" Y=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/tweber/stickfighter/h/c;->g:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tweber/stickfighter/h/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/b;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "</AP>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

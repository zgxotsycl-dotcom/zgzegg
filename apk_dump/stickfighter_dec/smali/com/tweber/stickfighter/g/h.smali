.class Lcom/tweber/stickfighter/g/h;
.super Lcom/tweber/stickfighter/h/a;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/g/e;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/g/e;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-direct {p0}, Lcom/tweber/stickfighter/h/a;-><init>()V

    return-void
.end method

.method private a(Lcom/tweber/stickfighter/h/c;FF)Lcom/tweber/stickfighter/activities/g;
    .locals 12

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/c;->g()Lcom/tweber/stickfighter/h/f;

    move-result-object v0

    iget-byte v0, v0, Lcom/tweber/stickfighter/h/f;->c:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/tweber/stickfighter/h/c;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->g(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/p;->a()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/c;->g()Lcom/tweber/stickfighter/h/f;

    move-result-object v3

    iget v3, v3, Lcom/tweber/stickfighter/h/f;->b:I

    iget v4, v0, Lcom/tweber/stickfighter/h/f;->b:I

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->g()Lcom/tweber/stickfighter/h/f;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/c;->g()Lcom/tweber/stickfighter/h/f;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, v0, p1}, Lcom/tweber/stickfighter/g/h;->b(Lcom/tweber/stickfighter/h/c;Lcom/tweber/stickfighter/h/c;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->g()Lcom/tweber/stickfighter/h/f;

    move-result-object v4

    iget-byte v4, v4, Lcom/tweber/stickfighter/h/f;->c:B

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    iget v4, v0, Lcom/tweber/stickfighter/h/c;->c:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    :cond_4
    iget-object v4, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v4}, Lcom/tweber/stickfighter/g/e;->e(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/j;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v4

    iget-object v5, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v5}, Lcom/tweber/stickfighter/g/e;->e(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/j;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v5

    sub-float v6, v4, p2

    sub-float v7, v5, p3

    float-to-double v8, v6

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v6, v7

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    if-eqz v1, :cond_5

    iget v7, v1, Lcom/tweber/stickfighter/activities/g;->d:F

    cmpg-float v7, v6, v7

    if-gez v7, :cond_6

    :cond_5
    new-instance v1, Lcom/tweber/stickfighter/activities/g;

    invoke-direct {v1, v0, v4, v5, v6}, Lcom/tweber/stickfighter/activities/g;-><init>(Lcom/tweber/stickfighter/h/u;FFF)V

    move-object v0, v1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Lcom/tweber/stickfighter/h/c;Lcom/tweber/stickfighter/h/c;)V
    .locals 10

    const/4 v8, 0x2

    const/4 v3, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/e;->d(Lcom/tweber/stickfighter/g/e;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tweber/stickfighter/h/c;->a(Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {p2}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v2

    invoke-virtual {p2}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v4

    invoke-virtual {v0, v2, v4}, Lcom/tweber/stickfighter/h/c;->b(FF)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/c;Lcom/tweber/stickfighter/h/c;)V

    iput-object v3, p1, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iput-object v3, p2, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->d(Lcom/tweber/stickfighter/g/e;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tweber/stickfighter/h/c;->a(Landroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

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

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    iput-object v3, v0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/c;->b()I

    move-result v0

    if-ne v0, v8, :cond_4

    iget v0, p1, Lcom/tweber/stickfighter/h/c;->b:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p1, Lcom/tweber/stickfighter/h/c;->b:I

    iget v0, p1, Lcom/tweber/stickfighter/h/c;->b:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p1, Lcom/tweber/stickfighter/h/c;->b:I

    iget v0, p1, Lcom/tweber/stickfighter/h/c;->a:I

    iget v1, p1, Lcom/tweber/stickfighter/h/c;->b:I

    invoke-interface {v4, v0, v1}, Lcom/tweber/stickfighter/d/b;->c(II)V

    :cond_3
    :goto_2
    iget v0, p1, Lcom/tweber/stickfighter/h/c;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/tweber/stickfighter/h/c;->b:I

    iget v0, p1, Lcom/tweber/stickfighter/h/c;->a:I

    iget v1, p1, Lcom/tweber/stickfighter/h/c;->b:I

    invoke-interface {v4, v0, v1}, Lcom/tweber/stickfighter/d/b;->c(II)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->a(Lcom/tweber/stickfighter/g/e;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->d(Lcom/tweber/stickfighter/g/e;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tweber/stickfighter/h/c;->a(Landroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v3

    move-object v2, v3

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    iput-object v3, v0, Lcom/tweber/stickfighter/h/c;->d:Lcom/tweber/stickfighter/h/d;

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->b()I

    move-result v7

    if-ne v7, v8, :cond_6

    if-eq v0, p1, :cond_6

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_4
    move-object v2, v1

    move-object v1, v0

    goto :goto_3

    :cond_6
    if-nez v1, :cond_a

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->b()I

    move-result v7

    if-ne v7, v8, :cond_a

    if-eq v0, p1, :cond_a

    move-object v1, v2

    goto :goto_4

    :cond_7
    if-nez v1, :cond_8

    const/4 v0, 0x1

    :goto_5
    if-nez v0, :cond_3

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v0

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v3

    cmpl-float v0, v0, v3

    if-nez v0, :cond_9

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v0

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    iget v0, v2, Lcom/tweber/stickfighter/h/c;->b:I

    add-int/lit8 v0, v0, -0x2

    iput v0, v2, Lcom/tweber/stickfighter/h/c;->b:I

    iget v0, v2, Lcom/tweber/stickfighter/h/c;->b:I

    add-int/lit8 v0, v0, 0x8

    iput v0, v2, Lcom/tweber/stickfighter/h/c;->b:I

    iget v0, v2, Lcom/tweber/stickfighter/h/c;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v2, Lcom/tweber/stickfighter/h/c;->b:I

    iget v0, v2, Lcom/tweber/stickfighter/h/c;->a:I

    iget v1, v2, Lcom/tweber/stickfighter/h/c;->b:I

    invoke-interface {v4, v0, v1}, Lcom/tweber/stickfighter/d/b;->c(II)V

    goto/16 :goto_2

    :cond_8
    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    iget v0, v2, Lcom/tweber/stickfighter/h/c;->b:I

    add-int/lit8 v0, v0, -0x2

    iput v0, v2, Lcom/tweber/stickfighter/h/c;->b:I

    iget v0, v2, Lcom/tweber/stickfighter/h/c;->b:I

    add-int/lit8 v0, v0, 0x8

    iput v0, v2, Lcom/tweber/stickfighter/h/c;->b:I

    iget v0, v2, Lcom/tweber/stickfighter/h/c;->a:I

    iget v1, v2, Lcom/tweber/stickfighter/h/c;->b:I

    invoke-interface {v4, v0, v1}, Lcom/tweber/stickfighter/d/b;->c(II)V

    goto/16 :goto_2

    :cond_a
    move-object v0, v1

    move-object v1, v2

    goto :goto_4
.end method

.method private a(Lcom/tweber/stickfighter/h/c;)Z
    .locals 3

    iget-object v0, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/g/e;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c00bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/e;->e(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/j;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/e;->e(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/j;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/tweber/stickfighter/h/c;Lcom/tweber/stickfighter/h/c;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/c;->e()Ljava/util/ArrayList;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/b;

    iget v0, v0, Lcom/tweber/stickfighter/h/b;->a:I

    iget v5, p2, Lcom/tweber/stickfighter/h/c;->a:I

    if-ne v0, v5, :cond_1

    move v2, v3

    :cond_0
    :goto_1
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/tweber/stickfighter/h/c;->e()Ljava/util/ArrayList;

    move-result-object v4

    move v1, v2

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/b;

    iget v0, v0, Lcom/tweber/stickfighter/h/b;->a:I

    iget v5, p1, Lcom/tweber/stickfighter/h/c;->a:I

    if-ne v0, v5, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method


# virtual methods
.method public a(FF)V
    .locals 3

    iget-object v0, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v0, Lcom/tweber/stickfighter/h/w;->a:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v0, Lcom/tweber/stickfighter/h/w;->b:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v0, Lcom/tweber/stickfighter/h/w;->c:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0, p1, p2}, Lcom/tweber/stickfighter/g/e;->a(Lcom/tweber/stickfighter/g/e;FF)Lcom/tweber/stickfighter/activities/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/tweber/stickfighter/activities/g;->d:F

    iget-object v2, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v2}, Lcom/tweber/stickfighter/g/e;->c(Lcom/tweber/stickfighter/g/e;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v1

    iget-object v0, v0, Lcom/tweber/stickfighter/activities/g;->a:Lcom/tweber/stickfighter/h/u;

    iput-object v0, v1, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    goto :goto_0
.end method

.method public b(FF)V
    .locals 5

    iget-object v0, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v1, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v1

    iget-object v1, v1, Lcom/tweber/stickfighter/h/w;->c:Landroid/graphics/PointF;

    iput-object v1, v0, Lcom/tweber/stickfighter/h/w;->b:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v0, Lcom/tweber/stickfighter/h/w;->c:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v1

    iget-object v1, v1, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    invoke-interface {v1}, Lcom/tweber/stickfighter/h/u;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/tweber/stickfighter/g/h;->a(Lcom/tweber/stickfighter/h/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/e;->d(Lcom/tweber/stickfighter/g/e;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tweber/stickfighter/h/u;->b(Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v1

    iget-object v1, v1, Lcom/tweber/stickfighter/h/w;->b:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v2}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v2

    iget-object v2, v2, Lcom/tweber/stickfighter/h/w;->c:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v3}, Lcom/tweber/stickfighter/g/e;->e(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/j;

    move-result-object v3

    iget-object v4, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v4}, Lcom/tweber/stickfighter/g/e;->d(Lcom/tweber/stickfighter/g/e;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tweber/stickfighter/h/u;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/tweber/stickfighter/h/j;Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->a(Lcom/tweber/stickfighter/g/e;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/e;->e(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/j;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v1

    iget-object v2, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v2}, Lcom/tweber/stickfighter/g/e;->e(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/j;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v2

    iget-object v3, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v3}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v3

    iget-object v3, v3, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    iget-object v4, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v4}, Lcom/tweber/stickfighter/g/e;->d(Lcom/tweber/stickfighter/g/e;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/tweber/stickfighter/h/u;->c(Landroid/util/SparseArray;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/tweber/stickfighter/g/h;->a(Lcom/tweber/stickfighter/h/c;FF)Lcom/tweber/stickfighter/activities/g;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, v0, Lcom/tweber/stickfighter/activities/g;->d:F

    iget-object v2, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v2}, Lcom/tweber/stickfighter/g/e;->f(Lcom/tweber/stickfighter/g/e;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v1

    iget-object v0, v0, Lcom/tweber/stickfighter/activities/g;->a:Lcom/tweber/stickfighter/h/u;

    iput-object v0, v1, Lcom/tweber/stickfighter/h/w;->e:Lcom/tweber/stickfighter/h/u;

    :goto_1
    iget-object v0, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v1

    iget-object v1, v1, Lcom/tweber/stickfighter/h/w;->b:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v2}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v2

    iget-object v2, v2, Lcom/tweber/stickfighter/h/w;->c:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v3}, Lcom/tweber/stickfighter/g/e;->e(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/j;

    move-result-object v3

    iget-object v4, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v4}, Lcom/tweber/stickfighter/g/e;->d(Lcom/tweber/stickfighter/g/e;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tweber/stickfighter/h/u;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/tweber/stickfighter/h/j;Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->a(Lcom/tweber/stickfighter/g/e;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tweber/stickfighter/h/w;->e:Lcom/tweber/stickfighter/h/u;

    goto :goto_1
.end method

.method public c(FF)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/e;->d(Lcom/tweber/stickfighter/g/e;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tweber/stickfighter/h/u;->c(Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->b()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/tweber/stickfighter/g/h;->a(Lcom/tweber/stickfighter/h/c;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->c()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    iget-object v3, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v3}, Lcom/tweber/stickfighter/g/e;->g(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/p;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;Lcom/tweber/stickfighter/h/f;)V

    iget-object v3, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v3}, Lcom/tweber/stickfighter/g/e;->g(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tweber/stickfighter/h/p;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->e()V

    throw v0

    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->e()V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iput-object v4, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iput-object v4, v0, Lcom/tweber/stickfighter/h/w;->e:Lcom/tweber/stickfighter/h/u;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->a(Lcom/tweber/stickfighter/g/e;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v1

    iget-object v1, v1, Lcom/tweber/stickfighter/h/w;->e:Lcom/tweber/stickfighter/h/u;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tweber/stickfighter/g/h;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v1

    iget-object v1, v1, Lcom/tweber/stickfighter/h/w;->e:Lcom/tweber/stickfighter/h/u;

    check-cast v1, Lcom/tweber/stickfighter/h/c;

    invoke-direct {p0, v0, v1}, Lcom/tweber/stickfighter/g/h;->a(Lcom/tweber/stickfighter/h/c;Lcom/tweber/stickfighter/h/c;)V

    goto :goto_1
.end method

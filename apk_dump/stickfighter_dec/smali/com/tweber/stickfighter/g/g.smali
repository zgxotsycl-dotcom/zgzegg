.class Lcom/tweber/stickfighter/g/g;
.super Lcom/tweber/stickfighter/h/a;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/g/e;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/g/e;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-direct {p0}, Lcom/tweber/stickfighter/h/a;-><init>()V

    return-void
.end method

.method private a(Lcom/tweber/stickfighter/h/u;)V
    .locals 3

    check-cast p1, Lcom/tweber/stickfighter/h/c;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->d(Lcom/tweber/stickfighter/g/e;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tweber/stickfighter/h/c;->a(Landroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/tweber/stickfighter/e/ab;

    invoke-direct {v1}, Lcom/tweber/stickfighter/e/ab;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tweber/stickfighter/e/ab;->a(Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/f;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tweber/stickfighter/e/ab;->a(I)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/g/e;->getChildFragmentManager()Landroid/support/v4/app/al;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/tweber/stickfighter/e/ab;->show(Landroid/support/v4/app/al;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(FF)V
    .locals 3

    iget-object v0, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v0, Lcom/tweber/stickfighter/h/w;->a:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v0, Lcom/tweber/stickfighter/h/w;->b:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v0, Lcom/tweber/stickfighter/h/w;->c:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0, p1, p2}, Lcom/tweber/stickfighter/g/e;->a(Lcom/tweber/stickfighter/g/e;FF)Lcom/tweber/stickfighter/activities/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/tweber/stickfighter/activities/g;->d:F

    iget-object v2, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v2}, Lcom/tweber/stickfighter/g/e;->c(Lcom/tweber/stickfighter/g/e;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v1

    iget-object v0, v0, Lcom/tweber/stickfighter/activities/g;->a:Lcom/tweber/stickfighter/h/u;

    iput-object v0, v1, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    goto :goto_0
.end method

.method protected b(FF)V
    .locals 5

    iget-object v0, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v1, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v1

    iget-object v1, v1, Lcom/tweber/stickfighter/h/w;->c:Landroid/graphics/PointF;

    iput-object v1, v0, Lcom/tweber/stickfighter/h/w;->b:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v0, Lcom/tweber/stickfighter/h/w;->c:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->b()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->b()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/e;->d(Lcom/tweber/stickfighter/g/e;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tweber/stickfighter/h/u;->c(Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v1

    iget-object v1, v1, Lcom/tweber/stickfighter/h/w;->b:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v2}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v2

    iget-object v2, v2, Lcom/tweber/stickfighter/h/w;->c:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v3}, Lcom/tweber/stickfighter/g/e;->e(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/j;

    move-result-object v3

    iget-object v4, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v4}, Lcom/tweber/stickfighter/g/e;->d(Lcom/tweber/stickfighter/g/e;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tweber/stickfighter/h/u;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/tweber/stickfighter/h/j;Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->a(Lcom/tweber/stickfighter/g/e;)V

    :cond_1
    return-void
.end method

.method protected c(FF)V
    .locals 5

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->b()I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->a:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v1

    iget-object v1, v1, Lcom/tweber/stickfighter/h/w;->a:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/tweber/stickfighter/j/a;->a(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->b()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    invoke-direct {p0, v0}, Lcom/tweber/stickfighter/g/g;->a(Lcom/tweber/stickfighter/h/u;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/e;->d(Lcom/tweber/stickfighter/g/e;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tweber/stickfighter/h/u;->c(Landroid/util/SparseArray;)V

    :cond_3
    iget-object v0, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->a(Lcom/tweber/stickfighter/g/e;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->b()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->b()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    :cond_5
    iget-object v0, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v1

    iget-object v1, v1, Lcom/tweber/stickfighter/h/w;->b:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v2}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v2

    iget-object v2, v2, Lcom/tweber/stickfighter/h/w;->c:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v3}, Lcom/tweber/stickfighter/g/e;->e(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/j;

    move-result-object v3

    iget-object v4, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v4}, Lcom/tweber/stickfighter/g/e;->d(Lcom/tweber/stickfighter/g/e;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tweber/stickfighter/h/u;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/tweber/stickfighter/h/j;Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/g;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->a(Lcom/tweber/stickfighter/g/e;)V

    goto :goto_1
.end method

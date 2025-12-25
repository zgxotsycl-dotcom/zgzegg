.class Lcom/tweber/stickfighter/g/t;
.super Lcom/tweber/stickfighter/h/a;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/g/k;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/g/k;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/g/t;->a:Lcom/tweber/stickfighter/g/k;

    invoke-direct {p0}, Lcom/tweber/stickfighter/h/a;-><init>()V

    return-void
.end method

.method private a(Lcom/tweber/stickfighter/h/u;)V
    .locals 4

    iget-object v0, p0, Lcom/tweber/stickfighter/g/t;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->b:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/t;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v1

    iget-object v1, v1, Lcom/tweber/stickfighter/h/w;->c:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/t;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v2}, Lcom/tweber/stickfighter/g/k;->h(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/j;

    move-result-object v2

    iget-object v3, p0, Lcom/tweber/stickfighter/g/t;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v3}, Lcom/tweber/stickfighter/g/k;->g(Lcom/tweber/stickfighter/g/k;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/tweber/stickfighter/h/u;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/tweber/stickfighter/h/j;Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/t;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->a(Lcom/tweber/stickfighter/g/k;)V

    return-void
.end method


# virtual methods
.method protected a(FF)V
    .locals 3

    iget-object v0, p0, Lcom/tweber/stickfighter/g/t;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v0, Lcom/tweber/stickfighter/h/w;->a:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/t;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v0, Lcom/tweber/stickfighter/h/w;->b:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/t;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v0, Lcom/tweber/stickfighter/h/w;->c:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/t;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0, p1, p2}, Lcom/tweber/stickfighter/g/k;->a(Lcom/tweber/stickfighter/g/k;FF)Lcom/tweber/stickfighter/activities/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/tweber/stickfighter/activities/g;->d:F

    iget-object v2, p0, Lcom/tweber/stickfighter/g/t;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v2}, Lcom/tweber/stickfighter/g/k;->f(Lcom/tweber/stickfighter/g/k;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/tweber/stickfighter/g/t;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v1

    iget-object v0, v0, Lcom/tweber/stickfighter/activities/g;->a:Lcom/tweber/stickfighter/h/u;

    iput-object v0, v1, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/g/t;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    goto :goto_0
.end method

.method protected b(FF)V
    .locals 0

    return-void
.end method

.method protected c(FF)V
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/g/t;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tweber/stickfighter/g/t;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->a:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/tweber/stickfighter/g/t;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v1

    iget-object v1, v1, Lcom/tweber/stickfighter/h/w;->a:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/t;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/t;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    invoke-direct {p0, v0}, Lcom/tweber/stickfighter/g/t;->a(Lcom/tweber/stickfighter/h/u;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/t;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tweber/stickfighter/g/t;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/t;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/k;->g(Lcom/tweber/stickfighter/g/k;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tweber/stickfighter/h/u;->c(Landroid/util/SparseArray;)V

    :cond_2
    iget-object v0, p0, Lcom/tweber/stickfighter/g/t;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/t;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->a(Lcom/tweber/stickfighter/g/k;)V

    goto :goto_0
.end method

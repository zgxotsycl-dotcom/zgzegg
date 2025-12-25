.class Lcom/tweber/stickfighter/g/r;
.super Lcom/tweber/stickfighter/h/a;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/g/k;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/g/k;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-direct {p0}, Lcom/tweber/stickfighter/h/a;-><init>()V

    return-void
.end method

.method private a(Lcom/tweber/stickfighter/h/c;)Z
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->h(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/j;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v0

    iget-object v1, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/k;->i(Lcom/tweber/stickfighter/g/k;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->h(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/j;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v0

    iget-object v1, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/k;->i(Lcom/tweber/stickfighter/g/k;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(FF)V
    .locals 3

    iget-object v0, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v0, Lcom/tweber/stickfighter/h/w;->a:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v0, Lcom/tweber/stickfighter/h/w;->b:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v0, Lcom/tweber/stickfighter/h/w;->c:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0, p1, p2}, Lcom/tweber/stickfighter/g/k;->a(Lcom/tweber/stickfighter/g/k;FF)Lcom/tweber/stickfighter/activities/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/tweber/stickfighter/activities/g;->d:F

    iget-object v2, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v2}, Lcom/tweber/stickfighter/g/k;->f(Lcom/tweber/stickfighter/g/k;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v1

    iget-object v0, v0, Lcom/tweber/stickfighter/activities/g;->a:Lcom/tweber/stickfighter/h/u;

    iput-object v0, v1, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    goto :goto_0
.end method

.method public b(FF)V
    .locals 5

    iget-object v0, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v1, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v1

    iget-object v1, v1, Lcom/tweber/stickfighter/h/w;->c:Landroid/graphics/PointF;

    iput-object v1, v0, Lcom/tweber/stickfighter/h/w;->b:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v0, Lcom/tweber/stickfighter/h/w;->c:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v1

    iget-object v1, v1, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    invoke-interface {v1}, Lcom/tweber/stickfighter/h/u;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/tweber/stickfighter/g/r;->a(Lcom/tweber/stickfighter/h/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/k;->g(Lcom/tweber/stickfighter/g/k;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tweber/stickfighter/h/u;->b(Landroid/util/SparseArray;)V

    :goto_0
    iget-object v0, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v1

    iget-object v1, v1, Lcom/tweber/stickfighter/h/w;->b:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v2}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v2

    iget-object v2, v2, Lcom/tweber/stickfighter/h/w;->c:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v3}, Lcom/tweber/stickfighter/g/k;->h(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/j;

    move-result-object v3

    iget-object v4, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v4}, Lcom/tweber/stickfighter/g/k;->g(Lcom/tweber/stickfighter/g/k;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tweber/stickfighter/h/u;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/tweber/stickfighter/h/j;Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->a(Lcom/tweber/stickfighter/g/k;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/k;->g(Lcom/tweber/stickfighter/g/k;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tweber/stickfighter/h/u;->c(Landroid/util/SparseArray;)V

    goto :goto_0
.end method

.method public c(FF)V
    .locals 4

    iget-object v0, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/k;->g(Lcom/tweber/stickfighter/g/k;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tweber/stickfighter/h/u;->c(Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->b()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/tweber/stickfighter/g/r;->a(Lcom/tweber/stickfighter/h/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    iget-object v3, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v3}, Lcom/tweber/stickfighter/g/k;->j(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tweber/stickfighter/h/p;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tweber/stickfighter/g/s;

    invoke-direct {v0, p0, v1}, Lcom/tweber/stickfighter/g/s;-><init>(Lcom/tweber/stickfighter/g/r;Ljava/util/ArrayList;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/g/s;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    iget-object v0, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->e(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->a(Lcom/tweber/stickfighter/g/k;)V

    return-void
.end method

.class public Lcom/tweber/stickfighter/h/h;
.super Lcom/tweber/stickfighter/h/f;


# direct methods
.method public constructor <init>(JJLjava/util/ArrayList;I)V
    .locals 9

    const/4 v7, 0x2

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/tweber/stickfighter/h/f;-><init>(JJLjava/util/ArrayList;BI)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/tweber/stickfighter/h/j;Landroid/graphics/Canvas;)V
    .locals 10

    const/high16 v6, 0x40000000    # 2.0f

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/h;->a()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/h;->a()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v2

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v0

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v3

    invoke-virtual {p1, v3}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v3

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v1

    sub-float v4, v2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v5, v0, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v0, v1

    div-float/2addr v0, v6

    float-to-double v6, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    float-to-double v4, v5

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v4, v8

    double-to-float v1, v4

    iget-object v3, p1, Lcom/tweber/stickfighter/h/j;->a:Lcom/tweber/stickfighter/views/l;

    iget-object v3, v3, Lcom/tweber/stickfighter/views/l;->f:Landroid/graphics/Paint;

    invoke-virtual {p2, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected a(Lcom/tweber/stickfighter/h/j;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 10

    const/high16 v6, 0x40000000    # 2.0f

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/h;->a()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/h;->a()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v2

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v0

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v3

    invoke-virtual {p1, v3}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v3

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v1

    sub-float v4, v2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v5, v0, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v0, v1

    div-float/2addr v0, v6

    float-to-double v6, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    float-to-double v4, v5

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v4, v8

    double-to-float v1, v4

    invoke-virtual {p2, v2, v0, v1, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

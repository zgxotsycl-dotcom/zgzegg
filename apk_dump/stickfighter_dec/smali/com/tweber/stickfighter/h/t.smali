.class public Lcom/tweber/stickfighter/h/t;
.super Lcom/tweber/stickfighter/h/f;


# direct methods
.method public constructor <init>(JJLjava/util/ArrayList;I)V
    .locals 9

    const/4 v7, 0x1

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
    .locals 6

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/t;->a()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/t;->a()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v1

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v2

    invoke-virtual {v4}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v3

    invoke-virtual {v4}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v4

    iget-object v0, p1, Lcom/tweber/stickfighter/h/j;->a:Lcom/tweber/stickfighter/views/l;

    iget-object v5, v0, Lcom/tweber/stickfighter/views/l;->f:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected a(Lcom/tweber/stickfighter/h/j;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/t;->a()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/t;->a()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v1

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v2

    invoke-virtual {v4}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v3

    invoke-virtual {v4}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v4

    move-object v0, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

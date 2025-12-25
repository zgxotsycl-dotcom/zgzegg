.class public Lcom/tweber/stickfighter/h/i;
.super Lcom/tweber/stickfighter/h/f;


# static fields
.field public static final e:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/tweber/stickfighter/h/i;->e:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(JJLjava/util/ArrayList;I)V
    .locals 9

    const/4 v7, 0x3

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
    .locals 7

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/i;->a()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/i;->a()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/i;->a()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v3

    invoke-virtual {p1, v3}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v3

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v0

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v4

    invoke-virtual {p1, v4}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v4

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v1

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v5

    invoke-virtual {p1, v5}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v5

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v2

    sget-object v6, Lcom/tweber/stickfighter/h/i;->e:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    sget-object v6, Lcom/tweber/stickfighter/h/i;->e:Landroid/graphics/Path;

    invoke-virtual {v6, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    sget-object v0, Lcom/tweber/stickfighter/h/i;->e:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v1, v5, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    sget-object v0, Lcom/tweber/stickfighter/h/i;->e:Landroid/graphics/Path;

    iget-object v1, p1, Lcom/tweber/stickfighter/h/j;->a:Lcom/tweber/stickfighter/views/l;

    iget-object v1, v1, Lcom/tweber/stickfighter/views/l;->f:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected a(Lcom/tweber/stickfighter/h/j;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/i;->a()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/i;->a()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/i;->a()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v3

    invoke-virtual {p1, v3}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v3

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v0

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v4

    invoke-virtual {p1, v4}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v4

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v1

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v5

    invoke-virtual {p1, v5}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v5

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v2

    sget-object v6, Lcom/tweber/stickfighter/h/i;->e:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    sget-object v6, Lcom/tweber/stickfighter/h/i;->e:Landroid/graphics/Path;

    invoke-virtual {v6, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    sget-object v0, Lcom/tweber/stickfighter/h/i;->e:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v1, v5, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    sget-object v0, Lcom/tweber/stickfighter/h/i;->e:Landroid/graphics/Path;

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public b(Lcom/tweber/stickfighter/h/j;Landroid/graphics/Canvas;)V
    .locals 8

    const/16 v7, 0xaa

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget v0, Lcom/tweber/stickfighter/activities/a;->a:I

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/tweber/stickfighter/h/j;->a:Lcom/tweber/stickfighter/views/l;

    iget-object v0, v0, Lcom/tweber/stickfighter/views/l;->n:Landroid/graphics/Paint;

    const/16 v1, 0xcc

    invoke-static {v7, v1, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/i;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/i;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/i;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v3

    invoke-virtual {p1, v3}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v3

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v0

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v4

    invoke-virtual {p1, v4}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v4

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v1

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v5

    invoke-virtual {p1, v5}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v5

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v2

    sget-object v6, Lcom/tweber/stickfighter/h/i;->e:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    sget-object v6, Lcom/tweber/stickfighter/h/i;->e:Landroid/graphics/Path;

    invoke-virtual {v6, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    sget-object v0, Lcom/tweber/stickfighter/h/i;->e:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    sget-object v0, Lcom/tweber/stickfighter/h/i;->e:Landroid/graphics/Path;

    iget-object v3, p1, Lcom/tweber/stickfighter/h/j;->a:Lcom/tweber/stickfighter/views/l;

    iget-object v3, v3, Lcom/tweber/stickfighter/views/l;->n:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget-object v0, Lcom/tweber/stickfighter/h/i;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    sget-object v0, Lcom/tweber/stickfighter/h/i;->e:Landroid/graphics/Path;

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Path;->moveTo(FF)V

    sget-object v0, Lcom/tweber/stickfighter/h/i;->e:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    sget-object v0, Lcom/tweber/stickfighter/h/i;->e:Landroid/graphics/Path;

    iget-object v1, p1, Lcom/tweber/stickfighter/h/j;->a:Lcom/tweber/stickfighter/views/l;

    iget-object v1, v1, Lcom/tweber/stickfighter/views/l;->n:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-super {p0, p1, p2}, Lcom/tweber/stickfighter/h/f;->b(Lcom/tweber/stickfighter/h/j;Landroid/graphics/Canvas;)V

    :goto_1
    return-void

    :cond_1
    sget v0, Lcom/tweber/stickfighter/activities/a;->a:I

    if-ne v0, v5, :cond_2

    iget-object v0, p1, Lcom/tweber/stickfighter/h/j;->a:Lcom/tweber/stickfighter/views/l;

    iget-object v0, v0, Lcom/tweber/stickfighter/views/l;->n:Landroid/graphics/Paint;

    const/16 v1, 0x33

    const/16 v2, 0xe5

    const/16 v3, 0xb5

    invoke-static {v7, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    :cond_2
    sget v0, Lcom/tweber/stickfighter/activities/a;->a:I

    if-ne v0, v6, :cond_0

    invoke-super {p0, p1, p2}, Lcom/tweber/stickfighter/h/f;->b(Lcom/tweber/stickfighter/h/j;Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

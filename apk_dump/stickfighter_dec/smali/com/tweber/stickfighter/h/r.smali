.class public Lcom/tweber/stickfighter/h/r;
.super Ljava/lang/Object;


# instance fields
.field public final a:[Lcom/tweber/stickfighter/h/q;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>([Lcom/tweber/stickfighter/h/q;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tweber/stickfighter/h/r;->a:[Lcom/tweber/stickfighter/h/q;

    iput p2, p0, Lcom/tweber/stickfighter/h/r;->c:I

    iput p3, p0, Lcom/tweber/stickfighter/h/r;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/tweber/stickfighter/h/j;Landroid/graphics/Canvas;Landroid/graphics/Paint;Z)V
    .locals 10

    const/4 v4, 0x2

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/4 v2, 0x1

    iget v0, p0, Lcom/tweber/stickfighter/h/r;->c:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/tweber/stickfighter/h/r;->a:[Lcom/tweber/stickfighter/h/q;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/tweber/stickfighter/h/r;->a:[Lcom/tweber/stickfighter/h/q;

    aget-object v4, v1, v2

    iget v1, v0, Lcom/tweber/stickfighter/h/q;->a:F

    invoke-virtual {p1, v1}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v1

    iget v0, v0, Lcom/tweber/stickfighter/h/q;->b:F

    invoke-virtual {p1, v0}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v2

    iget v0, v4, Lcom/tweber/stickfighter/h/q;->a:F

    invoke-virtual {p1, v0}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v3

    iget v0, v4, Lcom/tweber/stickfighter/h/q;->b:F

    invoke-virtual {p1, v0}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v4

    move-object v0, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/tweber/stickfighter/h/r;->c:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/tweber/stickfighter/h/r;->a:[Lcom/tweber/stickfighter/h/q;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/tweber/stickfighter/h/r;->a:[Lcom/tweber/stickfighter/h/q;

    aget-object v1, v1, v2

    iget v2, v0, Lcom/tweber/stickfighter/h/q;->a:F

    invoke-virtual {p1, v2}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v2

    iget v0, v0, Lcom/tweber/stickfighter/h/q;->b:F

    invoke-virtual {p1, v0}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v0

    iget v3, v1, Lcom/tweber/stickfighter/h/q;->a:F

    invoke-virtual {p1, v3}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v3

    iget v1, v1, Lcom/tweber/stickfighter/h/q;->b:F

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

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/tweber/stickfighter/h/r;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/h/r;->a:[Lcom/tweber/stickfighter/h/q;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/tweber/stickfighter/h/r;->a:[Lcom/tweber/stickfighter/h/q;

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/tweber/stickfighter/h/r;->a:[Lcom/tweber/stickfighter/h/q;

    aget-object v2, v2, v4

    iget v3, v0, Lcom/tweber/stickfighter/h/q;->a:F

    invoke-virtual {p1, v3}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v3

    iget v0, v0, Lcom/tweber/stickfighter/h/q;->b:F

    invoke-virtual {p1, v0}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v0

    iget v4, v1, Lcom/tweber/stickfighter/h/q;->a:F

    invoke-virtual {p1, v4}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v4

    iget v1, v1, Lcom/tweber/stickfighter/h/q;->b:F

    invoke-virtual {p1, v1}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v1

    iget v5, v2, Lcom/tweber/stickfighter/h/q;->a:F

    invoke-virtual {p1, v5}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v5

    iget v2, v2, Lcom/tweber/stickfighter/h/q;->b:F

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

    goto/16 :goto_0
.end method

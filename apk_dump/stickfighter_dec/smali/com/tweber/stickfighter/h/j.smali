.class public Lcom/tweber/stickfighter/h/j;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/tweber/stickfighter/views/l;

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(FLandroid/graphics/Canvas;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/tweber/stickfighter/h/j;->k:Landroid/graphics/RectF;

    iput p1, p0, Lcom/tweber/stickfighter/h/j;->b:F

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tweber/stickfighter/h/j;->e:F

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tweber/stickfighter/h/j;->f:F

    invoke-direct {p0}, Lcom/tweber/stickfighter/h/j;->b()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/tweber/stickfighter/h/j;->k:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/tweber/stickfighter/h/j;->k:Landroid/graphics/RectF;

    iget v1, p0, Lcom/tweber/stickfighter/h/j;->c:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/tweber/stickfighter/h/j;->k:Landroid/graphics/RectF;

    iget v1, p0, Lcom/tweber/stickfighter/h/j;->d:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/tweber/stickfighter/h/j;->k:Landroid/graphics/RectF;

    iget v1, p0, Lcom/tweber/stickfighter/h/j;->c:F

    iget v2, p0, Lcom/tweber/stickfighter/h/j;->h:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/tweber/stickfighter/h/j;->k:Landroid/graphics/RectF;

    iget v1, p0, Lcom/tweber/stickfighter/h/j;->d:F

    iget v2, p0, Lcom/tweber/stickfighter/h/j;->g:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    new-instance v0, Lcom/tweber/stickfighter/views/l;

    iget v1, p0, Lcom/tweber/stickfighter/h/j;->e:F

    invoke-direct {v0, v1}, Lcom/tweber/stickfighter/views/l;-><init>(F)V

    iput-object v0, p0, Lcom/tweber/stickfighter/h/j;->a:Lcom/tweber/stickfighter/views/l;

    return-void
.end method

.method public constructor <init>(FLandroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/tweber/stickfighter/h/j;->k:Landroid/graphics/RectF;

    iput p1, p0, Lcom/tweber/stickfighter/h/j;->b:F

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tweber/stickfighter/h/j;->e:F

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tweber/stickfighter/h/j;->f:F

    invoke-direct {p0}, Lcom/tweber/stickfighter/h/j;->b()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/tweber/stickfighter/h/j;->k:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/tweber/stickfighter/h/j;->k:Landroid/graphics/RectF;

    iget v1, p0, Lcom/tweber/stickfighter/h/j;->c:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/tweber/stickfighter/h/j;->k:Landroid/graphics/RectF;

    iget v1, p0, Lcom/tweber/stickfighter/h/j;->d:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/tweber/stickfighter/h/j;->k:Landroid/graphics/RectF;

    iget v1, p0, Lcom/tweber/stickfighter/h/j;->c:F

    iget v2, p0, Lcom/tweber/stickfighter/h/j;->h:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/tweber/stickfighter/h/j;->k:Landroid/graphics/RectF;

    iget v1, p0, Lcom/tweber/stickfighter/h/j;->d:F

    iget v2, p0, Lcom/tweber/stickfighter/h/j;->g:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    new-instance v0, Lcom/tweber/stickfighter/views/l;

    iget v1, p0, Lcom/tweber/stickfighter/h/j;->e:F

    invoke-direct {v0, v1}, Lcom/tweber/stickfighter/views/l;-><init>(F)V

    iput-object v0, p0, Lcom/tweber/stickfighter/h/j;->a:Lcom/tweber/stickfighter/views/l;

    return-void
.end method

.method private b()V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    const v2, 0x3c23d70a    # 0.01f

    iget v0, p0, Lcom/tweber/stickfighter/h/j;->f:F

    iget v1, p0, Lcom/tweber/stickfighter/h/j;->e:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/tweber/stickfighter/h/j;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tweber/stickfighter/h/j;->e:F

    iget v1, p0, Lcom/tweber/stickfighter/h/j;->b:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tweber/stickfighter/h/j;->g:F

    iget v0, p0, Lcom/tweber/stickfighter/h/j;->e:F

    iput v0, p0, Lcom/tweber/stickfighter/h/j;->h:F

    :goto_0
    iget v0, p0, Lcom/tweber/stickfighter/h/j;->g:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/tweber/stickfighter/h/j;->i:F

    iget v0, p0, Lcom/tweber/stickfighter/h/j;->h:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/tweber/stickfighter/h/j;->j:F

    iget v0, p0, Lcom/tweber/stickfighter/h/j;->e:F

    iget v1, p0, Lcom/tweber/stickfighter/h/j;->h:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/tweber/stickfighter/h/j;->c:F

    iget v0, p0, Lcom/tweber/stickfighter/h/j;->f:F

    iget v1, p0, Lcom/tweber/stickfighter/h/j;->g:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/tweber/stickfighter/h/j;->d:F

    return-void

    :cond_0
    iget v0, p0, Lcom/tweber/stickfighter/h/j;->f:F

    iput v0, p0, Lcom/tweber/stickfighter/h/j;->g:F

    iget v0, p0, Lcom/tweber/stickfighter/h/j;->f:F

    iget v1, p0, Lcom/tweber/stickfighter/h/j;->b:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/tweber/stickfighter/h/j;->h:F

    goto :goto_0
.end method


# virtual methods
.method public a(F)F
    .locals 2

    iget v0, p0, Lcom/tweber/stickfighter/h/j;->c:F

    iget v1, p0, Lcom/tweber/stickfighter/h/j;->j:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public a()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/h/j;->k:Landroid/graphics/RectF;

    return-object v0
.end method

.method public b(F)F
    .locals 2

    iget v0, p0, Lcom/tweber/stickfighter/h/j;->d:F

    iget v1, p0, Lcom/tweber/stickfighter/h/j;->i:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public c(F)F
    .locals 2

    iget v0, p0, Lcom/tweber/stickfighter/h/j;->c:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/tweber/stickfighter/h/j;->h:F

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public d(F)F
    .locals 2

    iget v0, p0, Lcom/tweber/stickfighter/h/j;->d:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/tweber/stickfighter/h/j;->g:F

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    return v0
.end method

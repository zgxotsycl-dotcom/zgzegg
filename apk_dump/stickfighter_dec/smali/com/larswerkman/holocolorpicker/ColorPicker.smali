.class public Lcom/larswerkman/holocolorpicker/ColorPicker;
.super Landroid/view/View;


# static fields
.field private static final a:[I


# instance fields
.field private A:Landroid/graphics/Paint;

.field private B:[F

.field private C:Lcom/larswerkman/holocolorpicker/SVBar;

.field private D:Lcom/larswerkman/holocolorpicker/c;

.field private E:Lcom/larswerkman/holocolorpicker/h;

.field private F:Z

.field private G:Lcom/larswerkman/holocolorpicker/j;

.field private H:Lcom/larswerkman/holocolorpicker/a;

.field private I:Lcom/larswerkman/holocolorpicker/b;

.field private J:I

.field private K:I

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/graphics/RectF;

.field private o:Landroid/graphics/RectF;

.field private p:Z

.field private q:I

.field private r:I

.field private s:Z

.field private t:I

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:Landroid/graphics/Paint;

.field private z:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/larswerkman/holocolorpicker/ColorPicker;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x10000
        -0xff01
        -0xffff01
        -0xff0001
        -0xff0100
        -0x100
        -0x10000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->n:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->o:Landroid/graphics/RectF;

    iput-boolean v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->p:Z

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->B:[F

    iput-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->C:Lcom/larswerkman/holocolorpicker/SVBar;

    iput-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->D:Lcom/larswerkman/holocolorpicker/c;

    iput-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->E:Lcom/larswerkman/holocolorpicker/h;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->F:Z

    iput-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->G:Lcom/larswerkman/holocolorpicker/j;

    invoke-direct {p0, v1, v2}, Lcom/larswerkman/holocolorpicker/ColorPicker;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->n:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->o:Landroid/graphics/RectF;

    iput-boolean v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->p:Z

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->B:[F

    iput-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->C:Lcom/larswerkman/holocolorpicker/SVBar;

    iput-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->D:Lcom/larswerkman/holocolorpicker/c;

    iput-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->E:Lcom/larswerkman/holocolorpicker/h;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->F:Z

    iput-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->G:Lcom/larswerkman/holocolorpicker/j;

    invoke-direct {p0, p2, v2}, Lcom/larswerkman/holocolorpicker/ColorPicker;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->n:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->o:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->p:Z

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->B:[F

    iput-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->C:Lcom/larswerkman/holocolorpicker/SVBar;

    iput-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->D:Lcom/larswerkman/holocolorpicker/c;

    iput-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->E:Lcom/larswerkman/holocolorpicker/h;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->F:Z

    iput-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->G:Lcom/larswerkman/holocolorpicker/j;

    invoke-direct {p0, p2, p3}, Lcom/larswerkman/holocolorpicker/ColorPicker;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(F)I
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    float-to-double v0, p1

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v0, v2

    double-to-float v0, v0

    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    add-float/2addr v0, v5

    :cond_0
    cmpg-float v1, v0, v4

    if-gtz v1, :cond_1

    sget-object v0, Lcom/larswerkman/holocolorpicker/ColorPicker;->a:[I

    aget v0, v0, v6

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->q:I

    sget-object v0, Lcom/larswerkman/holocolorpicker/ColorPicker;->a:[I

    aget v0, v0, v6

    :goto_0
    return v0

    :cond_1
    cmpl-float v1, v0, v5

    if-ltz v1, :cond_2

    sget-object v0, Lcom/larswerkman/holocolorpicker/ColorPicker;->a:[I

    sget-object v1, Lcom/larswerkman/holocolorpicker/ColorPicker;->a:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->q:I

    sget-object v0, Lcom/larswerkman/holocolorpicker/ColorPicker;->a:[I

    sget-object v1, Lcom/larswerkman/holocolorpicker/ColorPicker;->a:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/larswerkman/holocolorpicker/ColorPicker;->a:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v1, v0

    int-to-float v2, v1

    sub-float/2addr v0, v2

    sget-object v2, Lcom/larswerkman/holocolorpicker/ColorPicker;->a:[I

    aget v2, v2, v1

    sget-object v3, Lcom/larswerkman/holocolorpicker/ColorPicker;->a:[I

    add-int/lit8 v1, v1, 0x1

    aget v1, v3, v1

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-direct {p0, v3, v4, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->a(IIF)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-direct {p0, v4, v5, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->a(IIF)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-direct {p0, v5, v6, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->a(IIF)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-direct {p0, v2, v1, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->a(IIF)I

    move-result v0

    invoke-static {v3, v4, v5, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->q:I

    invoke-static {v3, v4, v5, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0
.end method

.method private a(IIF)I
    .locals 1

    sub-int v0, p2, p1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private a(Landroid/util/AttributeSet;I)V
    .locals 8

    const/4 v7, 0x0

    const/high16 v6, -0x1000000

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/larswerkman/holocolorpicker/g;->ColorPicker:[I

    invoke-virtual {v0, p1, v1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/larswerkman/holocolorpicker/g;->ColorPicker_color_wheel_thickness:I

    sget v3, Lcom/larswerkman/holocolorpicker/f;->color_wheel_thickness:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->e:I

    sget v2, Lcom/larswerkman/holocolorpicker/g;->ColorPicker_color_wheel_radius:I

    sget v3, Lcom/larswerkman/holocolorpicker/f;->color_wheel_radius:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->f:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->f:I

    iput v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->g:I

    sget v2, Lcom/larswerkman/holocolorpicker/g;->ColorPicker_color_center_radius:I

    sget v3, Lcom/larswerkman/holocolorpicker/f;->color_center_radius:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->h:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->h:I

    iput v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->i:I

    sget v2, Lcom/larswerkman/holocolorpicker/g;->ColorPicker_color_center_halo_radius:I

    sget v3, Lcom/larswerkman/holocolorpicker/f;->color_center_halo_radius:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->j:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->j:I

    iput v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->k:I

    sget v2, Lcom/larswerkman/holocolorpicker/g;->ColorPicker_color_pointer_radius:I

    sget v3, Lcom/larswerkman/holocolorpicker/f;->color_pointer_radius:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->l:I

    sget v2, Lcom/larswerkman/holocolorpicker/g;->ColorPicker_color_pointer_halo_radius:I

    sget v3, Lcom/larswerkman/holocolorpicker/f;->color_pointer_halo_radius:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->m:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const v0, -0x4036f025

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->x:F

    new-instance v0, Landroid/graphics/SweepGradient;

    sget-object v1, Lcom/larswerkman/holocolorpicker/ColorPicker;->a:[I

    const/4 v2, 0x0

    invoke-direct {v0, v5, v5, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->e:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->c:Landroid/graphics/Paint;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->x:F

    invoke-direct {p0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->z:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->z:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->x:F

    invoke-direct {p0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->z:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->y:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->y:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->x:F

    invoke-direct {p0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->y:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->A:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->A:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->A:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->x:F

    invoke-direct {p0, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->a(F)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->t:I

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->x:F

    invoke-direct {p0, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->a(F)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->r:I

    iput-boolean v4, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->s:Z

    return-void
.end method

.method private b(F)[F
    .locals 6

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->f:I

    int-to-double v0, v0

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->f:I

    int-to-double v2, v1

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    return-object v2
.end method

.method private c(I)F
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x0

    aget v0, v0, v1

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->D:Lcom/larswerkman/holocolorpicker/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->D:Lcom/larswerkman/holocolorpicker/c;

    invoke-virtual {v0, p1}, Lcom/larswerkman/holocolorpicker/c;->setColor(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/larswerkman/holocolorpicker/SVBar;)V
    .locals 2

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->C:Lcom/larswerkman/holocolorpicker/SVBar;

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->C:Lcom/larswerkman/holocolorpicker/SVBar;

    invoke-virtual {v0, p0}, Lcom/larswerkman/holocolorpicker/SVBar;->setColorPicker(Lcom/larswerkman/holocolorpicker/ColorPicker;)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->C:Lcom/larswerkman/holocolorpicker/SVBar;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->q:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/SVBar;->setColor(I)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->D:Lcom/larswerkman/holocolorpicker/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->G:Lcom/larswerkman/holocolorpicker/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->G:Lcom/larswerkman/holocolorpicker/j;

    invoke-virtual {v0, p1}, Lcom/larswerkman/holocolorpicker/j;->setColor(I)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->G:Lcom/larswerkman/holocolorpicker/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->t:I

    return v0
.end method

.method public getOldCenterColor()I
    .locals 1

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->r:I

    return v0
.end method

.method public getOnColorChangedListener()Lcom/larswerkman/holocolorpicker/a;
    .locals 1

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->H:Lcom/larswerkman/holocolorpicker/a;

    return-object v0
.end method

.method public getOnColorSelectedListener()Lcom/larswerkman/holocolorpicker/b;
    .locals 1

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->I:Lcom/larswerkman/holocolorpicker/b;

    return-object v0
.end method

.method public getShowOldCenterColor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->s:Z

    return v0
.end method

.method public getTouchAnywhereOnColorWheel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->F:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v8, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->u:F

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->u:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->n:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->x:F

    invoke-direct {p0, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->b(F)[F

    move-result-object v0

    aget v1, v0, v8

    aget v5, v0, v4

    iget v6, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->m:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    aget v1, v0, v8

    aget v0, v0, v4

    iget v5, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->l:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->j:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->A:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->s:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->o:Landroid/graphics/RectF;

    const/high16 v2, 0x42b40000    # 90.0f

    iget-object v5, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->y:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->o:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    iget-object v5, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->z:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->o:Landroid/graphics/RectF;

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->z:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->g:I

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->m:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-ne v3, v6, :cond_0

    :goto_0
    if-ne v4, v6, :cond_2

    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setMeasuredDimension(II)V

    int-to-float v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->u:F

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->e:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->m:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->f:I

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->n:Landroid/graphics/RectF;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->f:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->f:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->f:I

    int-to-float v3, v3

    iget v4, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->f:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->i:I

    int-to-float v0, v0

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->g:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->h:I

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->k:I

    int-to-float v0, v0

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->g:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->j:I

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->o:Landroid/graphics/RectF;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->h:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->h:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->h:I

    int-to-float v3, v3

    iget v4, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->h:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void

    :cond_0
    if-ne v3, v5, :cond_1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    if-ne v4, v5, :cond_3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "parent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "angle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->x:F

    const-string v0, "color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setOldCenterColor(I)V

    const-string v0, "showColor"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->s:Z

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->x:F

    invoke-direct {p0, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->a(F)I

    move-result v0

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "parent"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "angle"

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->x:F

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "color"

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->r:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "showColor"

    iget-boolean v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->s:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->u:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->u:F

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    :goto_1
    return v0

    :pswitch_0
    iget v4, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->x:F

    invoke-direct {p0, v4}, Lcom/larswerkman/holocolorpicker/ColorPicker;->b(F)[F

    move-result-object v4

    aget v5, v4, v0

    iget v6, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->m:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_1

    aget v5, v4, v0

    iget v6, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->m:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_1

    aget v5, v4, v1

    iget v6, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->m:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_1

    aget v5, v4, v1

    iget v6, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->m:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_1

    aget v0, v4, v0

    sub-float v0, v2, v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->v:F

    aget v0, v4, v1

    sub-float v0, v3, v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->w:F

    iput-boolean v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->p:Z

    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->invalidate()V

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->h:I

    neg-int v4, v4

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->h:I

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_2

    iget v4, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->h:I

    neg-int v4, v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->h:I

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_2

    iget-boolean v4, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->s:Z

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->A:Landroid/graphics/Paint;

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->getOldCenterColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setColor(I)V

    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->invalidate()V

    goto :goto_0

    :cond_2
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iget v6, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->f:I

    iget v7, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->m:I

    add-int/2addr v6, v7

    int-to-double v6, v6

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_3

    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget v4, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->f:I

    iget v5, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->m:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_3

    iget-boolean v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->F:Z

    if-eqz v2, :cond_3

    iput-boolean v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->p:Z

    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->invalidate()V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1

    :pswitch_1
    iget-boolean v4, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->p:Z

    if-eqz v4, :cond_8

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->w:F

    sub-float v0, v3, v0

    float-to-double v4, v0

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->v:F

    sub-float v0, v2, v0

    float-to-double v2, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v0, v2

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->x:F

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->d:Landroid/graphics/Paint;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->x:F

    invoke-direct {p0, v2}, Lcom/larswerkman/holocolorpicker/ColorPicker;->a(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->x:F

    invoke-direct {p0, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->a(F)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->t:I

    invoke-virtual {p0, v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->D:Lcom/larswerkman/holocolorpicker/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->D:Lcom/larswerkman/holocolorpicker/c;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->q:I

    invoke-virtual {v0, v2}, Lcom/larswerkman/holocolorpicker/c;->setColor(I)V

    :cond_4
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->G:Lcom/larswerkman/holocolorpicker/j;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->G:Lcom/larswerkman/holocolorpicker/j;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->q:I

    invoke-virtual {v0, v2}, Lcom/larswerkman/holocolorpicker/j;->setColor(I)V

    :cond_5
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->E:Lcom/larswerkman/holocolorpicker/h;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->E:Lcom/larswerkman/holocolorpicker/h;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->q:I

    invoke-virtual {v0, v2}, Lcom/larswerkman/holocolorpicker/h;->setColor(I)V

    :cond_6
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->C:Lcom/larswerkman/holocolorpicker/SVBar;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->C:Lcom/larswerkman/holocolorpicker/SVBar;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->q:I

    invoke-virtual {v0, v2}, Lcom/larswerkman/holocolorpicker/SVBar;->setColor(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->invalidate()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1

    :pswitch_2
    iput-boolean v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->p:Z

    iget-object v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->A:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->I:Lcom/larswerkman/holocolorpicker/b;

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->t:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->K:I

    if-eq v0, v2, :cond_9

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->I:Lcom/larswerkman/holocolorpicker/b;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->t:I

    invoke-interface {v0, v2}, Lcom/larswerkman/holocolorpicker/b;->a(I)V

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->t:I

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->K:I

    :cond_9
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->invalidate()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->I:Lcom/larswerkman/holocolorpicker/b;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->t:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->K:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->I:Lcom/larswerkman/holocolorpicker/b;

    iget v2, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->t:I

    invoke-interface {v0, v2}, Lcom/larswerkman/holocolorpicker/b;->a(I)V

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->t:I

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->K:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, p1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->c(I)F

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->x:F

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->x:F

    invoke-direct {p0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->D:Lcom/larswerkman/holocolorpicker/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->D:Lcom/larswerkman/holocolorpicker/c;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->q:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/c;->setColor(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->D:Lcom/larswerkman/holocolorpicker/c;

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/c;->setOpacity(I)V

    :cond_0
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->C:Lcom/larswerkman/holocolorpicker/SVBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->B:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->C:Lcom/larswerkman/holocolorpicker/SVBar;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->q:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/SVBar;->setColor(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->B:[F

    aget v0, v0, v3

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->B:[F

    aget v1, v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->C:Lcom/larswerkman/holocolorpicker/SVBar;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->B:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/SVBar;->setSaturation(F)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->E:Lcom/larswerkman/holocolorpicker/h;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->B:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->E:Lcom/larswerkman/holocolorpicker/h;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->q:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/h;->setColor(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->E:Lcom/larswerkman/holocolorpicker/h;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->B:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/h;->setSaturation(F)V

    :cond_2
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->G:Lcom/larswerkman/holocolorpicker/j;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->E:Lcom/larswerkman/holocolorpicker/h;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->B:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->G:Lcom/larswerkman/holocolorpicker/j;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->q:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/j;->setColor(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->G:Lcom/larswerkman/holocolorpicker/j;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->B:[F

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/j;->setValue(F)V

    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->B:[F

    aget v0, v0, v3

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->B:[F

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->C:Lcom/larswerkman/holocolorpicker/SVBar;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->B:[F

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/SVBar;->setValue(F)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->G:Lcom/larswerkman/holocolorpicker/j;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->B:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->G:Lcom/larswerkman/holocolorpicker/j;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->B:[F

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/j;->setValue(F)V

    goto :goto_1
.end method

.method public setNewCenterColor(I)V
    .locals 1

    iput p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->t:I

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->z:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->r:I

    if-nez v0, :cond_0

    iput p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->r:I

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->y:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->H:Lcom/larswerkman/holocolorpicker/a;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->J:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->H:Lcom/larswerkman/holocolorpicker/a;

    invoke-interface {v0, p1}, Lcom/larswerkman/holocolorpicker/a;->a(I)V

    iput p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->J:I

    :cond_1
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->invalidate()V

    return-void
.end method

.method public setOldCenterColor(I)V
    .locals 1

    iput p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->r:I

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->y:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->invalidate()V

    return-void
.end method

.method public setOnColorChangedListener(Lcom/larswerkman/holocolorpicker/a;)V
    .locals 0

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->H:Lcom/larswerkman/holocolorpicker/a;

    return-void
.end method

.method public setOnColorSelectedListener(Lcom/larswerkman/holocolorpicker/b;)V
    .locals 0

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->I:Lcom/larswerkman/holocolorpicker/b;

    return-void
.end method

.method public setShowOldCenterColor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->s:Z

    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->invalidate()V

    return-void
.end method

.method public setTouchAnywhereOnColorWheelEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/larswerkman/holocolorpicker/ColorPicker;->F:Z

    return-void
.end method

.class public Lcom/larswerkman/holocolorpicker/SVBar;
.super Landroid/view/View;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/RectF;

.field private k:Landroid/graphics/Shader;

.field private l:Z

.field private m:I

.field private n:[F

.field private o:F

.field private p:F

.field private q:Lcom/larswerkman/holocolorpicker/ColorPicker;

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->j:Landroid/graphics/RectF;

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->n:[F

    iput-object v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->q:Lcom/larswerkman/holocolorpicker/ColorPicker;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/larswerkman/holocolorpicker/SVBar;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->j:Landroid/graphics/RectF;

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->n:[F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->q:Lcom/larswerkman/holocolorpicker/ColorPicker;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/larswerkman/holocolorpicker/SVBar;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->j:Landroid/graphics/RectF;

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->n:[F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->q:Lcom/larswerkman/holocolorpicker/ColorPicker;

    invoke-direct {p0, p2, p3}, Lcom/larswerkman/holocolorpicker/SVBar;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(I)V
    .locals 7

    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_1

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    if-ge v0, v1, :cond_1

    new-array v1, v2, [F

    iget-object v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->n:[F

    aget v2, v2, v3

    aput v2, v1, v3

    aput v4, v1, v5

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->o:F

    iget v3, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    sub-float v0, v4, v0

    aput v0, v1, v6

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->m:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez v0, :cond_2

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    if-ge v0, v1, :cond_2

    new-array v1, v2, [F

    iget-object v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->n:[F

    aget v2, v2, v3

    aput v2, v1, v3

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->o:F

    int-to-float v0, v0

    mul-float/2addr v0, v2

    aput v0, v1, v5

    aput v4, v1, v6

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->m:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    div-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_3

    new-array v0, v2, [F

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->n:[F

    aget v1, v1, v3

    aput v1, v0, v3

    aput v4, v0, v5

    aput v4, v0, v6

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->m:I

    goto :goto_0

    :cond_3
    if-gtz v0, :cond_4

    const/4 v0, -0x1

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->m:I

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    if-lt v0, v1, :cond_0

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->m:I

    goto :goto_0
.end method

.method private a(Landroid/util/AttributeSet;I)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/larswerkman/holocolorpicker/g;->ColorBars:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/larswerkman/holocolorpicker/g;->ColorBars_bar_thickness:I

    sget v3, Lcom/larswerkman/holocolorpicker/f;->bar_thickness:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->a:I

    sget v2, Lcom/larswerkman/holocolorpicker/g;->ColorBars_bar_length:I

    sget v3, Lcom/larswerkman/holocolorpicker/f;->bar_length:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    iput v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->c:I

    sget v2, Lcom/larswerkman/holocolorpicker/g;->ColorBars_bar_pointer_radius:I

    sget v3, Lcom/larswerkman/holocolorpicker/f;->bar_pointer_radius:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->d:I

    sget v2, Lcom/larswerkman/holocolorpicker/g;->ColorBars_bar_pointer_halo_radius:I

    sget v3, Lcom/larswerkman/holocolorpicker/f;->bar_pointer_halo_radius:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    sget v1, Lcom/larswerkman/holocolorpicker/g;->ColorBars_bar_orientation_horizontal:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->r:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->g:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->g:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->k:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->f:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->i:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->i:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->i:Landroid/graphics/Paint;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->h:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->h:Landroid/graphics/Paint;

    const v1, -0x7e0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    int-to-float v0, v0

    div-float/2addr v0, v6

    div-float v0, v5, v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->o:F

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    int-to-float v0, v0

    div-float/2addr v0, v6

    div-float/2addr v0, v5

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->p:F

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->m:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->j:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->r:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->f:I

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    :goto_0
    int-to-float v2, v1

    int-to-float v3, v0

    iget v4, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/larswerkman/holocolorpicker/SVBar;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    int-to-float v1, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->d:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/SVBar;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->f:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->c:I

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->r:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_1

    :goto_1
    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    iget-boolean v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->r:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Lcom/larswerkman/holocolorpicker/SVBar;->setMeasuredDimension(II)V

    :goto_2
    return-void

    :cond_0
    move p1, p2

    goto :goto_0

    :cond_1
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/larswerkman/holocolorpicker/SVBar;->setMeasuredDimension(II)V

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "parent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/larswerkman/holocolorpicker/SVBar;->setColor(I)V

    const-string v0, "saturation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "saturation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/larswerkman/holocolorpicker/SVBar;->setSaturation(F)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/larswerkman/holocolorpicker/SVBar;->setValue(F)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "parent"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "color"

    iget-object v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->n:[F

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->m:I

    invoke-static {v2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v2, v0, v4

    aget v3, v0, v5

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    const-string v2, "saturation"

    aget v0, v0, v4

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :goto_0
    return-object v1

    :cond_0
    const-string v2, "value"

    aget v0, v0, v5

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-boolean v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->r:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->a:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, p1, v2

    iput v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    iget-object v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->j:Landroid/graphics/RectF;

    iget v3, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    int-to-float v3, v3

    iget v4, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    iget v5, p0, Lcom/larswerkman/holocolorpicker/SVBar;->a:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    iget v6, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    iget v7, p0, Lcom/larswerkman/holocolorpicker/SVBar;->a:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    move v4, v0

    move v3, v1

    :goto_0
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    int-to-float v1, v1

    const/4 v2, 0x0

    int-to-float v3, v3

    int-to-float v4, v4

    const/4 v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, -0x1

    aput v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/larswerkman/holocolorpicker/SVBar;->n:[F

    invoke-static {v7}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x2

    const/high16 v7, -0x1000000

    aput v7, v5, v6

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->k:Landroid/graphics/Shader;

    :goto_1
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->g:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->k:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->o:F

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->p:F

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->m:I

    invoke-static {v1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v2, 0x2

    aget v2, v0, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->p:F

    const/4 v2, 0x1

    aget v0, v0, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->f:I

    :goto_2
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->f:I

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->a:I

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, p2, v2

    iput v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    iget-object v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->j:Landroid/graphics/RectF;

    iget v3, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    iget v4, p0, Lcom/larswerkman/holocolorpicker/SVBar;->a:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    int-to-float v4, v4

    iget v5, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    iget v6, p0, Lcom/larswerkman/holocolorpicker/SVBar;->a:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    iget v7, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    move v4, v0

    move v3, v1

    goto/16 :goto_0

    :cond_2
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    int-to-float v1, v1

    const/4 v2, 0x0

    int-to-float v3, v3

    int-to-float v4, v4

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->k:Landroid/graphics/Shader;

    const v0, -0x7e0100

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->n:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    goto/16 :goto_1

    :cond_3
    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->p:F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    aget v0, v0, v3

    sub-float v0, v2, v0

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->f:I

    goto :goto_2

    nop

    :array_0
    .array-data 4
        -0x1
        -0x7e0100
        -0x1000000
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-boolean v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->r:Z

    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0

    :pswitch_0
    iput-boolean v3, p0, Lcom/larswerkman/holocolorpicker/SVBar;->l:Z

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->f:I

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/larswerkman/holocolorpicker/SVBar;->a(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->invalidate()V

    goto :goto_1

    :pswitch_1
    iget-boolean v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->l:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->f:I

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/larswerkman/holocolorpicker/SVBar;->a(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->q:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->q:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->m:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->q:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->m:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->a(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->invalidate()V

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_5

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->f:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->m:I

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->q:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->q:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->m:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->q:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->m:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->a(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->invalidate()V

    goto/16 :goto_1

    :cond_5
    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->f:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->m:I

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->q:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->q:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->m:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->q:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->m:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->a(I)V

    :cond_6
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->invalidate()V

    goto/16 :goto_1

    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->l:Z

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 8

    iget-boolean v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->r:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->a:I

    move v4, v0

    move v3, v1

    :goto_0
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->n:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    int-to-float v1, v1

    const/4 v2, 0x0

    int-to-float v3, v3

    int-to-float v4, v4

    const/4 v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, -0x1

    aput v7, v5, v6

    const/4 v6, 0x1

    aput p1, v5, v6

    const/4 v6, 0x2

    const/high16 v7, -0x1000000

    aput v7, v5, v6

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->k:Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->g:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->k:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->f:I

    invoke-direct {p0, v0}, Lcom/larswerkman/holocolorpicker/SVBar;->a(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->q:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->q:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->m:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->q:Lcom/larswerkman/holocolorpicker/ColorPicker;

    invoke-virtual {v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->q:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->m:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->a(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->invalidate()V

    return-void

    :cond_1
    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->a:I

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    add-int/2addr v0, v2

    move v4, v0

    move v3, v1

    goto :goto_0
.end method

.method public setColorPicker(Lcom/larswerkman/holocolorpicker/ColorPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->q:Lcom/larswerkman/holocolorpicker/ColorPicker;

    return-void
.end method

.method public setSaturation(F)V
    .locals 2

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->p:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->f:I

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->f:I

    invoke-direct {p0, v0}, Lcom/larswerkman/holocolorpicker/SVBar;->a(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->q:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->q:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->m:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->q:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->m:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->a(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->invalidate()V

    return-void
.end method

.method public setValue(F)V
    .locals 2

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->p:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->e:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->b:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->f:I

    iget v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->f:I

    invoke-direct {p0, v0}, Lcom/larswerkman/holocolorpicker/SVBar;->a(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->q:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->q:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->m:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/SVBar;->q:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/SVBar;->m:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->a(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/SVBar;->invalidate()V

    return-void
.end method

.class public Lcom/larswerkman/holocolorpicker/c;
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

.field private q:Lcom/larswerkman/holocolorpicker/d;

.field private r:I

.field private s:Lcom/larswerkman/holocolorpicker/ColorPicker;

.field private t:Z


# direct methods
.method private a(I)V
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    sub-int v0, p1, v0

    if-gez v0, :cond_2

    move v0, v1

    :cond_0
    :goto_0
    iget v2, p0, Lcom/larswerkman/holocolorpicker/c;->o:F

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v2, p0, Lcom/larswerkman/holocolorpicker/c;->n:[F

    invoke-static {v0, v2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/c;->m:I

    iget v0, p0, Lcom/larswerkman/holocolorpicker/c;->m:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v2, 0xfa

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/c;->n:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/c;->m:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v2, p0, Lcom/larswerkman/holocolorpicker/c;->b:I

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/larswerkman/holocolorpicker/c;->b:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/larswerkman/holocolorpicker/c;->m:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    iput v1, p0, Lcom/larswerkman/holocolorpicker/c;->m:I

    goto :goto_1
.end method


# virtual methods
.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/larswerkman/holocolorpicker/c;->m:I

    return v0
.end method

.method public getOnOpacityChangedListener()Lcom/larswerkman/holocolorpicker/d;
    .locals 1

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/c;->q:Lcom/larswerkman/holocolorpicker/d;

    return-object v0
.end method

.method public getOpacity()I
    .locals 3

    iget v0, p0, Lcom/larswerkman/holocolorpicker/c;->o:F

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->f:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0xfa

    if-le v0, v1, :cond_0

    const/16 v0, 0xff

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/c;->j:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/c;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/larswerkman/holocolorpicker/c;->t:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->f:I

    iget v0, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    :goto_0
    int-to-float v2, v1

    int-to-float v3, v0

    iget v4, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/larswerkman/holocolorpicker/c;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    int-to-float v1, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/larswerkman/holocolorpicker/c;->d:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/larswerkman/holocolorpicker/c;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    iget v0, p0, Lcom/larswerkman/holocolorpicker/c;->f:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4

    iget v0, p0, Lcom/larswerkman/holocolorpicker/c;->c:I

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/larswerkman/holocolorpicker/c;->t:Z

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
    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/larswerkman/holocolorpicker/c;->b:I

    iget-boolean v0, p0, Lcom/larswerkman/holocolorpicker/c;->t:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/larswerkman/holocolorpicker/c;->b:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Lcom/larswerkman/holocolorpicker/c;->setMeasuredDimension(II)V

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
    iget v0, p0, Lcom/larswerkman/holocolorpicker/c;->b:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/larswerkman/holocolorpicker/c;->setMeasuredDimension(II)V

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

    invoke-virtual {p0, v0}, Lcom/larswerkman/holocolorpicker/c;->setColor(I)V

    const-string v0, "opacity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/larswerkman/holocolorpicker/c;->setOpacity(I)V

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

    const-string v0, "color"

    iget-object v2, p0, Lcom/larswerkman/holocolorpicker/c;->n:[F

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    const-string v0, "opacity"

    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/c;->getOpacity()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 9

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-boolean v0, p0, Lcom/larswerkman/holocolorpicker/c;->t:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/larswerkman/holocolorpicker/c;->b:I

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/larswerkman/holocolorpicker/c;->a:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, p1, v2

    iput v2, p0, Lcom/larswerkman/holocolorpicker/c;->b:I

    iget-object v2, p0, Lcom/larswerkman/holocolorpicker/c;->j:Landroid/graphics/RectF;

    iget v3, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    int-to-float v3, v3

    iget v4, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    iget v5, p0, Lcom/larswerkman/holocolorpicker/c;->a:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/larswerkman/holocolorpicker/c;->b:I

    iget v6, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    iget v7, p0, Lcom/larswerkman/holocolorpicker/c;->a:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    move v4, v0

    move v3, v1

    :goto_0
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/c;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    int-to-float v1, v1

    const/4 v2, 0x0

    int-to-float v3, v3

    int-to-float v4, v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/larswerkman/holocolorpicker/c;->n:[F

    invoke-static {v7, v8}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0xff

    iget-object v8, p0, Lcom/larswerkman/holocolorpicker/c;->n:[F

    invoke-static {v7, v8}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/c;->k:Landroid/graphics/Shader;

    :goto_1
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/c;->g:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/c;->k:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/high16 v0, 0x437f0000    # 255.0f

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->b:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/larswerkman/holocolorpicker/c;->o:F

    iget v0, p0, Lcom/larswerkman/holocolorpicker/c;->b:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/larswerkman/holocolorpicker/c;->p:F

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->m:I

    invoke-static {v1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/c;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/larswerkman/holocolorpicker/c;->p:F

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->m:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/c;->f:I

    :goto_2
    return-void

    :cond_0
    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->a:I

    iget v0, p0, Lcom/larswerkman/holocolorpicker/c;->b:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, p2, v2

    iput v2, p0, Lcom/larswerkman/holocolorpicker/c;->b:I

    iget-object v2, p0, Lcom/larswerkman/holocolorpicker/c;->j:Landroid/graphics/RectF;

    iget v3, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    iget v4, p0, Lcom/larswerkman/holocolorpicker/c;->a:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    int-to-float v4, v4

    iget v5, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    iget v6, p0, Lcom/larswerkman/holocolorpicker/c;->a:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/larswerkman/holocolorpicker/c;->b:I

    iget v7, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    move v4, v0

    move v3, v1

    goto/16 :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    int-to-float v1, v1

    const/4 v2, 0x0

    int-to-float v3, v3

    int-to-float v4, v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/c;->k:Landroid/graphics/Shader;

    const v0, -0x7e0100

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/c;->n:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    goto/16 :goto_1

    :cond_2
    iget v0, p0, Lcom/larswerkman/holocolorpicker/c;->b:I

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/larswerkman/holocolorpicker/c;->f:I

    goto :goto_2

    :array_0
    .array-data 4
        0x81ff00
        -0x7e0100
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/c;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-boolean v0, p0, Lcom/larswerkman/holocolorpicker/c;->t:Z

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
    iput-boolean v3, p0, Lcom/larswerkman/holocolorpicker/c;->l:Z

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/c;->b:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/larswerkman/holocolorpicker/c;->f:I

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/larswerkman/holocolorpicker/c;->a(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/c;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/c;->invalidate()V

    goto :goto_1

    :pswitch_1
    iget-boolean v1, p0, Lcom/larswerkman/holocolorpicker/c;->l:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/c;->b:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/larswerkman/holocolorpicker/c;->f:I

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/larswerkman/holocolorpicker/c;->a(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/c;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/c;->s:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/c;->s:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->m:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/c;->invalidate()V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/c;->q:Lcom/larswerkman/holocolorpicker/d;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/larswerkman/holocolorpicker/c;->r:I

    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/c;->getOpacity()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/c;->q:Lcom/larswerkman/holocolorpicker/d;

    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/c;->getOpacity()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/larswerkman/holocolorpicker/d;->a(I)V

    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/c;->getOpacity()I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/c;->r:I

    goto/16 :goto_1

    :cond_4
    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_6

    iget v0, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    iput v0, p0, Lcom/larswerkman/holocolorpicker/c;->f:I

    iput v4, p0, Lcom/larswerkman/holocolorpicker/c;->m:I

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/c;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/c;->s:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/c;->s:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->m:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/c;->invalidate()V

    goto :goto_2

    :cond_6
    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/c;->b:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/larswerkman/holocolorpicker/c;->f:I

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/c;->n:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Lcom/larswerkman/holocolorpicker/c;->m:I

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/c;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/c;->s:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/c;->s:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->m:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/c;->invalidate()V

    goto :goto_2

    :pswitch_2
    iput-boolean v4, p0, Lcom/larswerkman/holocolorpicker/c;->l:Z

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
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/larswerkman/holocolorpicker/c;->t:Z

    if-ne v0, v8, :cond_1

    iget v0, p0, Lcom/larswerkman/holocolorpicker/c;->b:I

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/larswerkman/holocolorpicker/c;->a:I

    move v4, v0

    move v3, v1

    :goto_0
    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/c;->n:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    int-to-float v1, v1

    const/4 v2, 0x0

    int-to-float v3, v3

    int-to-float v4, v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    iget-object v6, p0, Lcom/larswerkman/holocolorpicker/c;->n:[F

    invoke-static {v7, v6}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    aput v6, v5, v7

    aput p1, v5, v8

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/larswerkman/holocolorpicker/c;->k:Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/c;->g:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/larswerkman/holocolorpicker/c;->k:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v0, p0, Lcom/larswerkman/holocolorpicker/c;->f:I

    invoke-direct {p0, v0}, Lcom/larswerkman/holocolorpicker/c;->a(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/c;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/c;->s:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/c;->s:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->m:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/c;->invalidate()V

    return-void

    :cond_1
    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->a:I

    iget v0, p0, Lcom/larswerkman/holocolorpicker/c;->b:I

    iget v2, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    add-int/2addr v0, v2

    move v4, v0

    move v3, v1

    goto :goto_0
.end method

.method public setColorPicker(Lcom/larswerkman/holocolorpicker/ColorPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/c;->s:Lcom/larswerkman/holocolorpicker/ColorPicker;

    return-void
.end method

.method public setOnOpacityChangedListener(Lcom/larswerkman/holocolorpicker/d;)V
    .locals 0

    iput-object p1, p0, Lcom/larswerkman/holocolorpicker/c;->q:Lcom/larswerkman/holocolorpicker/d;

    return-void
.end method

.method public setOpacity(I)V
    .locals 2

    iget v0, p0, Lcom/larswerkman/holocolorpicker/c;->p:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/larswerkman/holocolorpicker/c;->f:I

    iget v0, p0, Lcom/larswerkman/holocolorpicker/c;->f:I

    invoke-direct {p0, v0}, Lcom/larswerkman/holocolorpicker/c;->a(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/c;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/c;->s:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/larswerkman/holocolorpicker/c;->s:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v1, p0, Lcom/larswerkman/holocolorpicker/c;->m:I

    invoke-virtual {v0, v1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setNewCenterColor(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/larswerkman/holocolorpicker/c;->invalidate()V

    return-void
.end method

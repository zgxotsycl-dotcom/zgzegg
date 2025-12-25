.class public Lcom/tweber/stickfighter/h/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tweber/stickfighter/h/k;


# static fields
.field private static transient f:I

.field private static transient g:I


# instance fields
.field public final a:I

.field public final b:I

.field public transient c:Ljava/util/HashMap;

.field private d:I

.field private e:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/tweber/stickfighter/StickFighterApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/tweber/stickfighter/h/p;->f:I

    invoke-static {}, Lcom/tweber/stickfighter/StickFighterApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/tweber/stickfighter/h/p;->g:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tweber/stickfighter/h/p;->e:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tweber/stickfighter/h/p;->c:Ljava/util/HashMap;

    iput p1, p0, Lcom/tweber/stickfighter/h/p;->a:I

    iput p2, p0, Lcom/tweber/stickfighter/h/p;->d:I

    iput p3, p0, Lcom/tweber/stickfighter/h/p;->b:I

    return-void
.end method

.method private static a(Lcom/tweber/stickfighter/h/c;Ljava/util/ArrayList;)Lcom/tweber/stickfighter/h/c;
    .locals 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    iget v2, p0, Lcom/tweber/stickfighter/h/c;->c:I

    iget v3, v0, Lcom/tweber/stickfighter/h/c;->c:I

    if-ne v2, v3, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/tweber/stickfighter/h/p;Lcom/tweber/stickfighter/h/p;F)Lcom/tweber/stickfighter/h/k;
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/p;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    iget-object v1, p1, Lcom/tweber/stickfighter/h/p;->c:Ljava/util/HashMap;

    iget v4, v0, Lcom/tweber/stickfighter/h/f;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tweber/stickfighter/h/f;

    if-eqz v1, :cond_0

    invoke-static {v0, v1, p2}, Lcom/tweber/stickfighter/h/p;->a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;F)Lcom/tweber/stickfighter/h/r;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/tweber/stickfighter/h/s;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/tweber/stickfighter/h/r;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tweber/stickfighter/h/r;

    invoke-direct {v1, v0}, Lcom/tweber/stickfighter/h/s;-><init>([Lcom/tweber/stickfighter/h/r;)V

    return-object v1
.end method

.method private static a(Lcom/tweber/stickfighter/h/f;Lcom/tweber/stickfighter/h/f;F)Lcom/tweber/stickfighter/h/r;
    .locals 9

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/f;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/f;->b()I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p2

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p2

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    sub-int v0, v1, v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    add-int/2addr v0, v5

    invoke-static {v2, v3, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [Lcom/tweber/stickfighter/h/q;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v6

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v7

    invoke-static {v0, v4}, Lcom/tweber/stickfighter/h/p;->a(Lcom/tweber/stickfighter/h/c;Ljava/util/ArrayList;)Lcom/tweber/stickfighter/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v8

    sub-float/2addr v8, v6

    mul-float/2addr v8, p2

    add-float/2addr v6, v8

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v0

    sub-float/2addr v0, v7

    mul-float/2addr v0, p2

    add-float/2addr v0, v7

    new-instance v7, Lcom/tweber/stickfighter/h/q;

    invoke-direct {v7, v6, v0}, Lcom/tweber/stickfighter/h/q;-><init>(FF)V

    aput-object v7, v5, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tweber/stickfighter/h/r;

    iget-byte v1, p0, Lcom/tweber/stickfighter/h/f;->c:B

    invoke-direct {v0, v5, v1, v2}, Lcom/tweber/stickfighter/h/r;-><init>([Lcom/tweber/stickfighter/h/q;II)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/h/p;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tweber/stickfighter/h/p;->e:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/h/p;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tweber/stickfighter/h/p;->d:I

    return-void
.end method

.method public a(Lcom/tweber/stickfighter/h/f;)V
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/h/p;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tweber/stickfighter/h/p;->e:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/h/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/tweber/stickfighter/h/j;Landroid/graphics/Canvas;ZLcom/tweber/stickfighter/h/p;I)V
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/tweber/stickfighter/h/p;->a(Lcom/tweber/stickfighter/h/j;Landroid/graphics/Canvas;ZLcom/tweber/stickfighter/h/p;ZIZ)V

    return-void
.end method

.method public a(Lcom/tweber/stickfighter/h/j;Landroid/graphics/Canvas;ZLcom/tweber/stickfighter/h/p;IZ)V
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/tweber/stickfighter/h/p;->a(Lcom/tweber/stickfighter/h/j;Landroid/graphics/Canvas;ZLcom/tweber/stickfighter/h/p;ZIZ)V

    return-void
.end method

.method public a(Lcom/tweber/stickfighter/h/j;Landroid/graphics/Canvas;ZLcom/tweber/stickfighter/h/p;ZIZ)V
    .locals 4

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/tweber/stickfighter/h/p;->f:I

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/j;->a()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p1, Lcom/tweber/stickfighter/h/j;->a:Lcom/tweber/stickfighter/views/l;

    iget-object v1, v1, Lcom/tweber/stickfighter/views/l;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, p6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p1, Lcom/tweber/stickfighter/h/j;->a:Lcom/tweber/stickfighter/views/l;

    iget-object v1, v1, Lcom/tweber/stickfighter/views/l;->d:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-eqz p3, :cond_3

    if-eqz p7, :cond_2

    iget v0, p0, Lcom/tweber/stickfighter/h/p;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/tweber/stickfighter/h/p;->g:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    sget v3, Lcom/tweber/stickfighter/h/p;->g:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p1, Lcom/tweber/stickfighter/h/j;->a:Lcom/tweber/stickfighter/views/l;

    iget-object v3, v3, Lcom/tweber/stickfighter/views/l;->e:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lcom/tweber/stickfighter/h/p;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    iget-object v2, p1, Lcom/tweber/stickfighter/h/j;->a:Lcom/tweber/stickfighter/views/l;

    iget-object v2, v2, Lcom/tweber/stickfighter/views/l;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, v2}, Lcom/tweber/stickfighter/h/f;->a(Lcom/tweber/stickfighter/h/j;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/p;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    iget-boolean v2, v0, Lcom/tweber/stickfighter/h/f;->d:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0, p1, p2}, Lcom/tweber/stickfighter/h/f;->a(Lcom/tweber/stickfighter/h/j;Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/p;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    iget-object v2, p1, Lcom/tweber/stickfighter/h/j;->a:Lcom/tweber/stickfighter/views/l;

    iget-object v2, v2, Lcom/tweber/stickfighter/views/l;->g:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/f;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p1, Lcom/tweber/stickfighter/h/j;->a:Lcom/tweber/stickfighter/views/l;

    iget-object v2, v2, Lcom/tweber/stickfighter/views/l;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, v2, p3}, Lcom/tweber/stickfighter/h/f;->a(Lcom/tweber/stickfighter/h/j;Landroid/graphics/Canvas;Landroid/graphics/Paint;Z)V

    goto :goto_3

    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/p;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    invoke-virtual {v0, p1, p2}, Lcom/tweber/stickfighter/h/f;->b(Lcom/tweber/stickfighter/h/j;Landroid/graphics/Canvas;)V

    goto :goto_4

    :cond_7
    if-eqz p7, :cond_0

    if-eqz p5, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-static {}, Lcom/tweber/stickfighter/StickFighterApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0xf

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0xf

    iget v3, p0, Lcom/tweber/stickfighter/h/p;->d:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {p2, v3, v1, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tweber/stickfighter/h/p;->d:I

    return v0
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/tweber/stickfighter/h/p;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tweber/stickfighter/h/p;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tweber/stickfighter/h/p;->e:Ljava/util/ArrayList;

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tweber/stickfighter/h/p;->c:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/tweber/stickfighter/h/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    iget-object v2, p0, Lcom/tweber/stickfighter/h/p;->c:Ljava/util/HashMap;

    iget v3, v0, Lcom/tweber/stickfighter/h/f;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tweber/stickfighter/h/p;->c:Ljava/util/HashMap;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "<Frame ID=\""

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/tweber/stickfighter/h/p;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" Position=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/tweber/stickfighter/h/p;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tweber/stickfighter/h/p;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tweber/stickfighter/h/p;->e:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/h/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v0, "</Frame>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Lcom/tweber/stickfighter/e/aa;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/e/z;

.field private b:Ljava/util/HashMap;

.field private c:Ljava/util/HashMap;

.field private d:Ljava/util/ArrayList;

.field private e:Ljava/util/ArrayList;

.field private f:I

.field private g:Lcom/tweber/stickfighter/h/v;

.field private h:Lcom/tweber/stickfighter/h/p;

.field private i:Ljava/lang/Integer;

.field private j:Lcom/tweber/stickfighter/h/c;


# direct methods
.method private constructor <init>(Lcom/tweber/stickfighter/e/z;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/tweber/stickfighter/e/aa;->a:Lcom/tweber/stickfighter/e/z;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tweber/stickfighter/e/aa;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tweber/stickfighter/e/aa;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tweber/stickfighter/e/aa;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tweber/stickfighter/e/aa;->e:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/tweber/stickfighter/e/aa;->g:Lcom/tweber/stickfighter/h/v;

    iput-object v1, p0, Lcom/tweber/stickfighter/e/aa;->h:Lcom/tweber/stickfighter/h/p;

    iput-object v1, p0, Lcom/tweber/stickfighter/e/aa;->i:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/tweber/stickfighter/e/aa;->j:Lcom/tweber/stickfighter/h/c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tweber/stickfighter/e/z;Lcom/tweber/stickfighter/e/w;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tweber/stickfighter/e/aa;-><init>(Lcom/tweber/stickfighter/e/z;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/tweber/stickfighter/h/v;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/e/aa;->g:Lcom/tweber/stickfighter/h/v;

    return-object v0
.end method

.method public endDocument()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tweber/stickfighter/e/aa;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/e/aa;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/tweber/stickfighter/e/aa;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/tweber/stickfighter/e/aa;->c:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/tweber/stickfighter/e/aa;->a:Lcom/tweber/stickfighter/e/z;

    invoke-static {v3}, Lcom/tweber/stickfighter/e/z;->a(Lcom/tweber/stickfighter/e/z;)Lcom/tweber/stickfighter/d/b;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/tweber/stickfighter/d/b;->b(II)Lcom/tweber/stickfighter/h/b;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startDocument()V
    .locals 0

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 10

    const/4 v5, 0x0

    const-string v0, "AC"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ConnPtId"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/tweber/stickfighter/e/aa;->d:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tweber/stickfighter/e/aa;->j:Lcom/tweber/stickfighter/h/c;

    iget v2, v2, Lcom/tweber/stickfighter/h/c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tweber/stickfighter/e/aa;->e:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "AP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ID"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string v0, "Flags"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v6

    const-string v0, "Index"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, "X"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    const-string v0, "Y"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    iget-object v0, p0, Lcom/tweber/stickfighter/e/aa;->a:Lcom/tweber/stickfighter/e/z;

    invoke-static {v0}, Lcom/tweber/stickfighter/e/z;->a(Lcom/tweber/stickfighter/e/z;)Lcom/tweber/stickfighter/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tweber/stickfighter/e/aa;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/tweber/stickfighter/e/aa;->h:Lcom/tweber/stickfighter/h/p;

    iget v2, v2, Lcom/tweber/stickfighter/h/p;->a:I

    int-to-long v2, v2

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface/range {v0 .. v6}, Lcom/tweber/stickfighter/d/b;->a(IJLandroid/graphics/PointF;II)Lcom/tweber/stickfighter/h/c;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/e/aa;->j:Lcom/tweber/stickfighter/h/c;

    iget-object v0, p0, Lcom/tweber/stickfighter/e/aa;->c:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/tweber/stickfighter/e/aa;->j:Lcom/tweber/stickfighter/h/c;

    iget v2, v2, Lcom/tweber/stickfighter/h/c;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v0, "AO"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "ID"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "TypeId"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "Color"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v0, p0, Lcom/tweber/stickfighter/e/aa;->b:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tweber/stickfighter/e/aa;->i:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/tweber/stickfighter/e/aa;->i:Ljava/lang/Integer;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tweber/stickfighter/e/aa;->a:Lcom/tweber/stickfighter/e/z;

    invoke-static {v0}, Lcom/tweber/stickfighter/e/z;->a(Lcom/tweber/stickfighter/e/z;)Lcom/tweber/stickfighter/d/b;

    move-result-object v0

    iget-object v4, p0, Lcom/tweber/stickfighter/e/aa;->h:Lcom/tweber/stickfighter/h/p;

    new-array v5, v5, [Lcom/tweber/stickfighter/h/e;

    invoke-interface {v0, v4, v2, v3, v5}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;II[Lcom/tweber/stickfighter/h/e;)Lcom/tweber/stickfighter/h/f;

    move-result-object v0

    iget v0, v0, Lcom/tweber/stickfighter/h/f;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/e/aa;->i:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/tweber/stickfighter/e/aa;->b:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/tweber/stickfighter/e/aa;->i:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/tweber/stickfighter/e/aa;->a:Lcom/tweber/stickfighter/e/z;

    invoke-static {v0}, Lcom/tweber/stickfighter/e/z;->a(Lcom/tweber/stickfighter/e/z;)Lcom/tweber/stickfighter/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tweber/stickfighter/e/aa;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/tweber/stickfighter/e/aa;->h:Lcom/tweber/stickfighter/h/p;

    iget v2, v2, Lcom/tweber/stickfighter/h/p;->a:I

    int-to-long v4, v2

    invoke-interface {v0, v1, v4, v5, v3}, Lcom/tweber/stickfighter/d/b;->a(IJI)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "Frame"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ID"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    const-string v0, "Position"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/tweber/stickfighter/e/aa;->a:Lcom/tweber/stickfighter/e/z;

    invoke-static {v1}, Lcom/tweber/stickfighter/e/z;->a(Lcom/tweber/stickfighter/e/z;)Lcom/tweber/stickfighter/d/b;

    move-result-object v1

    iget-object v2, p0, Lcom/tweber/stickfighter/e/aa;->g:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/v;->b()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/tweber/stickfighter/d/b;->a(II)Lcom/tweber/stickfighter/h/p;

    move-result-object v1

    iput-object v1, p0, Lcom/tweber/stickfighter/e/aa;->h:Lcom/tweber/stickfighter/h/p;

    int-to-float v0, v0

    iget v1, p0, Lcom/tweber/stickfighter/e/aa;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/tweber/stickfighter/e/aa;->a:Lcom/tweber/stickfighter/e/z;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/tweber/stickfighter/e/z;->a(Lcom/tweber/stickfighter/e/z;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "Sequence"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "HeightWidthRatio"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const-string v0, "FrameCount"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tweber/stickfighter/e/aa;->f:I

    const-string v0, "BackgroundColor"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    const/4 v0, -0x1

    :goto_1
    iget-object v3, p0, Lcom/tweber/stickfighter/e/aa;->a:Lcom/tweber/stickfighter/e/z;

    invoke-static {v3}, Lcom/tweber/stickfighter/e/z;->a(Lcom/tweber/stickfighter/e/z;)Lcom/tweber/stickfighter/d/b;

    move-result-object v3

    invoke-interface {v3, v1, v2, v0}, Lcom/tweber/stickfighter/d/b;->a(Ljava/lang/String;FI)Lcom/tweber/stickfighter/h/v;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/e/aa;->g:Lcom/tweber/stickfighter/h/v;

    goto/16 :goto_0

    :cond_6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

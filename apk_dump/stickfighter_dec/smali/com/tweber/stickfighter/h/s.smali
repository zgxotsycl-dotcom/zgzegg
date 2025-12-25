.class public Lcom/tweber/stickfighter/h/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tweber/stickfighter/h/k;


# static fields
.field private static a:I


# instance fields
.field private final b:[Lcom/tweber/stickfighter/h/r;


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

    sput v0, Lcom/tweber/stickfighter/h/s;->a:I

    return-void
.end method

.method public constructor <init>([Lcom/tweber/stickfighter/h/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tweber/stickfighter/h/s;->b:[Lcom/tweber/stickfighter/h/r;

    return-void
.end method


# virtual methods
.method public a(Lcom/tweber/stickfighter/h/j;Landroid/graphics/Canvas;ZLcom/tweber/stickfighter/h/p;I)V
    .locals 6

    sget v0, Lcom/tweber/stickfighter/h/s;->a:I

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p1, Lcom/tweber/stickfighter/h/j;->a:Lcom/tweber/stickfighter/views/l;

    iget-object v0, v0, Lcom/tweber/stickfighter/views/l;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/j;->a()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p1, Lcom/tweber/stickfighter/h/j;->a:Lcom/tweber/stickfighter/views/l;

    iget-object v1, v1, Lcom/tweber/stickfighter/views/l;->d:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/tweber/stickfighter/h/s;->b:[Lcom/tweber/stickfighter/h/r;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p1, Lcom/tweber/stickfighter/h/j;->a:Lcom/tweber/stickfighter/views/l;

    iget-object v4, v4, Lcom/tweber/stickfighter/views/l;->g:Landroid/graphics/Paint;

    iget v5, v3, Lcom/tweber/stickfighter/h/r;->b:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p1, Lcom/tweber/stickfighter/h/j;->a:Lcom/tweber/stickfighter/views/l;

    iget-object v4, v4, Lcom/tweber/stickfighter/views/l;->g:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, p2, v4, p3}, Lcom/tweber/stickfighter/h/r;->a(Lcom/tweber/stickfighter/h/j;Landroid/graphics/Canvas;Landroid/graphics/Paint;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

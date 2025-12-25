.class Lcom/tweber/stickfighter/g/j;
.super Landroid/view/View;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/g/e;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/tweber/stickfighter/g/e;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/tweber/stickfighter/g/j;->a:Lcom/tweber/stickfighter/g/e;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/tweber/stickfighter/g/j;->b:I

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/j;->a()V

    return-void
.end method

.method private a()V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/tweber/stickfighter/g/j;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/j;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->e(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/j;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/j;->a:Lcom/tweber/stickfighter/g/e;

    new-instance v1, Lcom/tweber/stickfighter/h/j;

    invoke-static {}, Lcom/tweber/stickfighter/h/v;->a()Lcom/tweber/stickfighter/h/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/v;->d()F

    move-result v2

    iget-object v3, p0, Lcom/tweber/stickfighter/g/j;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v3}, Lcom/tweber/stickfighter/g/e;->h(Lcom/tweber/stickfighter/g/e;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tweber/stickfighter/h/j;-><init>(FLandroid/view/View;)V

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/g/e;->a(Lcom/tweber/stickfighter/g/e;Lcom/tweber/stickfighter/h/j;)Lcom/tweber/stickfighter/h/j;

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/g/j;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->g(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/p;

    move-result-object v0

    iget-object v1, p0, Lcom/tweber/stickfighter/g/j;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/e;->e(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/j;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/tweber/stickfighter/h/v;->a()Lcom/tweber/stickfighter/h/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/v;->e()I

    move-result v5

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/tweber/stickfighter/h/p;->a(Lcom/tweber/stickfighter/h/j;Landroid/graphics/Canvas;ZLcom/tweber/stickfighter/h/p;IZ)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/j;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/j;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->b(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/w;

    move-result-object v0

    iget-object v0, v0, Lcom/tweber/stickfighter/h/w;->d:Lcom/tweber/stickfighter/h/u;

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/j;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/e;->e(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/j;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tweber/stickfighter/h/j;->a(F)F

    move-result v1

    iget-object v2, p0, Lcom/tweber/stickfighter/g/j;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v2}, Lcom/tweber/stickfighter/g/e;->e(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/j;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/tweber/stickfighter/h/j;->b(F)F

    move-result v0

    iget v2, p0, Lcom/tweber/stickfighter/g/j;->b:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tweber/stickfighter/g/j;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v3}, Lcom/tweber/stickfighter/g/e;->e(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/j;

    move-result-object v3

    iget-object v3, v3, Lcom/tweber/stickfighter/h/j;->a:Lcom/tweber/stickfighter/views/l;

    iget-object v3, v3, Lcom/tweber/stickfighter/views/l;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v2, p0, Lcom/tweber/stickfighter/g/j;->b:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tweber/stickfighter/g/j;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v3}, Lcom/tweber/stickfighter/g/e;->e(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/j;

    move-result-object v3

    iget-object v3, v3, Lcom/tweber/stickfighter/h/j;->a:Lcom/tweber/stickfighter/views/l;

    iget-object v3, v3, Lcom/tweber/stickfighter/views/l;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/j;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->i(Lcom/tweber/stickfighter/g/e;)Lcom/tweber/stickfighter/h/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tweber/stickfighter/h/a;->a(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    return v0
.end method

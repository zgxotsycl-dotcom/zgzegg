.class Lcom/tweber/stickfighter/b/v;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/b/r;

.field private b:Lcom/tweber/stickfighter/h/v;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/tweber/stickfighter/b/r;Lcom/tweber/stickfighter/h/v;Landroid/widget/ImageView;)V
    .locals 3

    iput-object p1, p0, Lcom/tweber/stickfighter/b/v;->a:Lcom/tweber/stickfighter/b/r;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/tweber/stickfighter/b/v;->b:Lcom/tweber/stickfighter/h/v;

    iput-object p3, p0, Lcom/tweber/stickfighter/b/v;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tweber/stickfighter/b/v;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v0, v1

    iget-object v2, p0, Lcom/tweber/stickfighter/b/v;->b:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/v;->d()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/b/v;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/tweber/stickfighter/j/d;->c(Landroid/app/Activity;)I

    move-result v0

    invoke-static {p1}, Lcom/tweber/stickfighter/b/r;->a(Lcom/tweber/stickfighter/b/r;)I

    move-result v1

    div-int v1, v0, v1

    int-to-float v0, v1

    iget-object v2, p0, Lcom/tweber/stickfighter/b/v;->b:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/v;->d()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/b/v;->d:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/tweber/stickfighter/b/v;->d:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, Lcom/tweber/stickfighter/b/v;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tweber/stickfighter/b/v;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tweber/stickfighter/b/v;->b:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tweber/stickfighter/c/a;->a(I)Lcom/tweber/stickfighter/h/p;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/tweber/stickfighter/b/v;->d:Landroid/graphics/Bitmap;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_0

    const v1, -0x333334

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v1, Lcom/tweber/stickfighter/h/j;

    iget-object v4, p0, Lcom/tweber/stickfighter/b/v;->b:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v4}, Lcom/tweber/stickfighter/h/v;->d()F

    move-result v4

    invoke-direct {v1, v4, v2}, Lcom/tweber/stickfighter/h/j;-><init>(FLandroid/graphics/Canvas;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/tweber/stickfighter/b/v;->b:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v6}, Lcom/tweber/stickfighter/h/v;->e()I

    move-result v6

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/tweber/stickfighter/h/p;->a(Lcom/tweber/stickfighter/h/j;Landroid/graphics/Canvas;ZLcom/tweber/stickfighter/h/p;ZIZ)V

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/b/v;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/b/v;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tweber/stickfighter/b/v;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/tweber/stickfighter/b/v;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

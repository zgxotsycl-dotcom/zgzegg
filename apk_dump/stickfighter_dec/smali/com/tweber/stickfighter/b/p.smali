.class Lcom/tweber/stickfighter/b/p;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/b/k;

.field private b:Lcom/tweber/stickfighter/h/v;

.field private c:I

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/tweber/stickfighter/b/k;Lcom/tweber/stickfighter/h/v;ILandroid/widget/ImageView;)V
    .locals 1

    iput-object p1, p0, Lcom/tweber/stickfighter/b/p;->a:Lcom/tweber/stickfighter/b/k;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/tweber/stickfighter/b/p;->b:Lcom/tweber/stickfighter/h/v;

    iput p3, p0, Lcom/tweber/stickfighter/b/p;->c:I

    iput-object p4, p0, Lcom/tweber/stickfighter/b/p;->d:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/b/p;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/b/p;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v0, p0, Lcom/tweber/stickfighter/b/p;->b:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v0

    iget v1, p0, Lcom/tweber/stickfighter/b/p;->c:I

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/c/a;->a(I)Lcom/tweber/stickfighter/h/p;

    move-result-object v0

    iget-object v1, p0, Lcom/tweber/stickfighter/b/p;->e:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/tweber/stickfighter/j/d;->c(Landroid/app/Activity;)I

    move-result v1

    iget-object v2, p0, Lcom/tweber/stickfighter/b/p;->a:Lcom/tweber/stickfighter/b/k;

    invoke-static {v2}, Lcom/tweber/stickfighter/b/k;->b(Lcom/tweber/stickfighter/b/k;)I

    move-result v2

    div-int/2addr v1, v2

    int-to-float v2, v1

    iget-object v3, p0, Lcom/tweber/stickfighter/b/p;->b:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v3}, Lcom/tweber/stickfighter/h/v;->d()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/tweber/stickfighter/b/p;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v1, -0x333334

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v1, Lcom/tweber/stickfighter/h/j;

    iget-object v3, p0, Lcom/tweber/stickfighter/b/p;->b:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v3}, Lcom/tweber/stickfighter/h/v;->d()F

    move-result v3

    invoke-direct {v1, v3, v2}, Lcom/tweber/stickfighter/h/j;-><init>(FLandroid/graphics/Canvas;)V

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/tweber/stickfighter/b/p;->b:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v6}, Lcom/tweber/stickfighter/h/v;->e()I

    move-result v6

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/tweber/stickfighter/h/p;->a(Lcom/tweber/stickfighter/h/j;Landroid/graphics/Canvas;ZLcom/tweber/stickfighter/h/p;ZIZ)V

    move-object v4, v8

    goto :goto_0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, La/a/a/c;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/b/p;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tweber/stickfighter/b/p;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tweber/stickfighter/b/p;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, La/a/a/c;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lcom/tweber/stickfighter/f/b;)V
    .locals 2

    invoke-virtual {p1}, Lcom/tweber/stickfighter/f/b;->a()Lcom/tweber/stickfighter/f/c;

    move-result-object v0

    sget-object v1, Lcom/tweber/stickfighter/f/c;->d:Lcom/tweber/stickfighter/f/c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/b/p;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/tweber/stickfighter/b/p;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, La/a/a/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.class Lcom/tweber/stickfighter/g/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/g/ae;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/g/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/tweber/stickfighter/g/ae;->a(Lcom/tweber/stickfighter/g/ae;IZ)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->w(Lcom/tweber/stickfighter/g/ae;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->x(Lcom/tweber/stickfighter/g/ae;)I

    move-result v0

    if-ne v1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/g/ae;->c(Lcom/tweber/stickfighter/g/ae;I)I

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0, v5}, Lcom/tweber/stickfighter/g/ae;->d(Lcom/tweber/stickfighter/g/ae;I)I

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->k(Lcom/tweber/stickfighter/g/ae;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/tweber/stickfighter/g/ay;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    iget-object v3, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v3}, Lcom/tweber/stickfighter/g/ae;->x(Lcom/tweber/stickfighter/g/ae;)I

    move-result v3

    iget-object v4, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v4}, Lcom/tweber/stickfighter/g/ae;->i(Lcom/tweber/stickfighter/g/ae;)I

    move-result v4

    mul-int/2addr v3, v4

    iget-object v4, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v4}, Lcom/tweber/stickfighter/g/ae;->a(Lcom/tweber/stickfighter/g/ae;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/tweber/stickfighter/g/ay;-><init>(Lcom/tweber/stickfighter/g/ae;ILjava/util/ArrayList;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/tweber/stickfighter/g/ay;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/tweber/stickfighter/g/ay;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    iget-object v3, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v3}, Lcom/tweber/stickfighter/g/ae;->x(Lcom/tweber/stickfighter/g/ae;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v4}, Lcom/tweber/stickfighter/g/ae;->i(Lcom/tweber/stickfighter/g/ae;)I

    move-result v4

    mul-int/2addr v3, v4

    iget-object v4, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v4}, Lcom/tweber/stickfighter/g/ae;->y(Lcom/tweber/stickfighter/g/ae;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/tweber/stickfighter/g/ay;-><init>(Lcom/tweber/stickfighter/g/ae;ILjava/util/ArrayList;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/tweber/stickfighter/g/ay;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v0

    iget-object v2, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v2}, Lcom/tweber/stickfighter/g/ae;->A(Lcom/tweber/stickfighter/g/ae;)Lcom/tweber/stickfighter/h/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/v;->b()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v4}, Lcom/tweber/stickfighter/g/ae;->i(Lcom/tweber/stickfighter/g/ae;)I

    move-result v4

    mul-int/2addr v4, v1

    invoke-interface {v0, v2, v3, v4}, Lcom/tweber/stickfighter/d/b;->b(JI)Lcom/tweber/stickfighter/h/p;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v0

    iget-object v2, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v2}, Lcom/tweber/stickfighter/g/ae;->A(Lcom/tweber/stickfighter/g/ae;)Lcom/tweber/stickfighter/h/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/v;->b()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v4}, Lcom/tweber/stickfighter/g/ae;->i(Lcom/tweber/stickfighter/g/ae;)I

    move-result v4

    mul-int/2addr v1, v4

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v2, v3, v1}, Lcom/tweber/stickfighter/d/b;->b(JI)Lcom/tweber/stickfighter/h/p;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/ae;->m(Lcom/tweber/stickfighter/g/ae;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/TextureView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    iget-object v2, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v2, v1, v0}, Lcom/tweber/stickfighter/g/ae;->a(Lcom/tweber/stickfighter/g/ae;Landroid/graphics/Canvas;Lcom/tweber/stickfighter/h/k;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->m(Lcom/tweber/stickfighter/g/ae;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->z(Lcom/tweber/stickfighter/g/ae;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v2}, Lcom/tweber/stickfighter/g/ae;->i(Lcom/tweber/stickfighter/g/ae;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v2}, Lcom/tweber/stickfighter/g/ae;->x(Lcom/tweber/stickfighter/g/ae;)I

    move-result v2

    if-le v2, v0, :cond_3

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0, v5}, Lcom/tweber/stickfighter/g/ae;->c(Lcom/tweber/stickfighter/g/ae;I)I

    new-instance v0, Lcom/tweber/stickfighter/g/ay;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    iget-object v3, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v3}, Lcom/tweber/stickfighter/g/ae;->a(Lcom/tweber/stickfighter/g/ae;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v2, v5, v3}, Lcom/tweber/stickfighter/g/ay;-><init>(Lcom/tweber/stickfighter/g/ae;ILjava/util/ArrayList;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/tweber/stickfighter/g/ay;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/tweber/stickfighter/g/ay;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    iget-object v3, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v3}, Lcom/tweber/stickfighter/g/ae;->i(Lcom/tweber/stickfighter/g/ae;)I

    move-result v3

    iget-object v4, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v4}, Lcom/tweber/stickfighter/g/ae;->y(Lcom/tweber/stickfighter/g/ae;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/tweber/stickfighter/g/ay;-><init>(Lcom/tweber/stickfighter/g/ae;ILjava/util/ArrayList;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/tweber/stickfighter/g/ay;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    :cond_3
    iget-object v2, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v2}, Lcom/tweber/stickfighter/g/ae;->x(Lcom/tweber/stickfighter/g/ae;)I

    move-result v2

    if-ne v2, v0, :cond_4

    new-instance v0, Lcom/tweber/stickfighter/g/ay;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    iget-object v3, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v3}, Lcom/tweber/stickfighter/g/ae;->x(Lcom/tweber/stickfighter/g/ae;)I

    move-result v3

    iget-object v4, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v4}, Lcom/tweber/stickfighter/g/ae;->i(Lcom/tweber/stickfighter/g/ae;)I

    move-result v4

    mul-int/2addr v3, v4

    iget-object v4, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v4}, Lcom/tweber/stickfighter/g/ae;->a(Lcom/tweber/stickfighter/g/ae;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/tweber/stickfighter/g/ay;-><init>(Lcom/tweber/stickfighter/g/ae;ILjava/util/ArrayList;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/tweber/stickfighter/g/ay;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/tweber/stickfighter/g/ay;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    iget-object v3, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v3}, Lcom/tweber/stickfighter/g/ae;->y(Lcom/tweber/stickfighter/g/ae;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v2, v5, v3}, Lcom/tweber/stickfighter/g/ay;-><init>(Lcom/tweber/stickfighter/g/ae;ILjava/util/ArrayList;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/tweber/stickfighter/g/ay;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    :cond_4
    new-instance v0, Lcom/tweber/stickfighter/g/ay;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    iget-object v3, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v3}, Lcom/tweber/stickfighter/g/ae;->x(Lcom/tweber/stickfighter/g/ae;)I

    move-result v3

    iget-object v4, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v4}, Lcom/tweber/stickfighter/g/ae;->i(Lcom/tweber/stickfighter/g/ae;)I

    move-result v4

    mul-int/2addr v3, v4

    iget-object v4, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v4}, Lcom/tweber/stickfighter/g/ae;->a(Lcom/tweber/stickfighter/g/ae;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/tweber/stickfighter/g/ay;-><init>(Lcom/tweber/stickfighter/g/ae;ILjava/util/ArrayList;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/tweber/stickfighter/g/ay;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/tweber/stickfighter/g/ay;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    iget-object v3, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v3}, Lcom/tweber/stickfighter/g/ae;->x(Lcom/tweber/stickfighter/g/ae;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v4}, Lcom/tweber/stickfighter/g/ae;->i(Lcom/tweber/stickfighter/g/ae;)I

    move-result v4

    mul-int/2addr v3, v4

    iget-object v4, p0, Lcom/tweber/stickfighter/g/ai;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v4}, Lcom/tweber/stickfighter/g/ae;->y(Lcom/tweber/stickfighter/g/ae;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/tweber/stickfighter/g/ay;-><init>(Lcom/tweber/stickfighter/g/ae;ILjava/util/ArrayList;)V

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/tweber/stickfighter/g/ay;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1
.end method

.class Lcom/tweber/stickfighter/g/ba;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/g/ae;

.field private final b:Landroid/view/TextureView;

.field private final c:I

.field private volatile d:Z


# direct methods
.method public constructor <init>(Lcom/tweber/stickfighter/g/ae;Landroid/view/TextureView;)V
    .locals 2

    iput-object p1, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/high16 v0, 0x447a0000    # 1000.0f

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/ae;->g(Lcom/tweber/stickfighter/g/ae;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tweber/stickfighter/g/ba;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tweber/stickfighter/g/ba;->d:Z

    iput-object p2, p0, Lcom/tweber/stickfighter/g/ba;->b:Landroid/view/TextureView;

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->a(Lcom/tweber/stickfighter/g/ae;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v2}, Lcom/tweber/stickfighter/g/ae;->y(Lcom/tweber/stickfighter/g/ae;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tweber/stickfighter/g/ae;->a(Lcom/tweber/stickfighter/g/ae;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v1, v0}, Lcom/tweber/stickfighter/g/ae;->b(Lcom/tweber/stickfighter/g/ae;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    return-void
.end method

.method private c()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->E(Lcom/tweber/stickfighter/g/ae;)I

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0, v4}, Lcom/tweber/stickfighter/g/ae;->d(Lcom/tweber/stickfighter/g/ae;I)I

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->z(Lcom/tweber/stickfighter/g/ae;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/ae;->i(Lcom/tweber/stickfighter/g/ae;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/ae;->x(Lcom/tweber/stickfighter/g/ae;)I

    move-result v1

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/ae;->k(Lcom/tweber/stickfighter/g/ae;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v1, v4}, Lcom/tweber/stickfighter/g/ae;->c(Lcom/tweber/stickfighter/g/ae;I)I

    :cond_0
    invoke-direct {p0}, Lcom/tweber/stickfighter/g/ba;->b()V

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/ae;->x(Lcom/tweber/stickfighter/g/ae;)I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->k(Lcom/tweber/stickfighter/g/ae;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/tweber/stickfighter/g/ay;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v2}, Lcom/tweber/stickfighter/g/ae;->y(Lcom/tweber/stickfighter/g/ae;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/tweber/stickfighter/g/ay;-><init>(Lcom/tweber/stickfighter/g/ae;ILjava/util/ArrayList;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/g/ay;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/tweber/stickfighter/g/ay;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v2}, Lcom/tweber/stickfighter/g/ae;->x(Lcom/tweber/stickfighter/g/ae;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v3}, Lcom/tweber/stickfighter/g/ae;->i(Lcom/tweber/stickfighter/g/ae;)I

    move-result v3

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v3}, Lcom/tweber/stickfighter/g/ae;->y(Lcom/tweber/stickfighter/g/ae;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/tweber/stickfighter/g/ay;-><init>(Lcom/tweber/stickfighter/g/ae;ILjava/util/ArrayList;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/g/ay;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ba;->interrupt()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tweber/stickfighter/g/ba;->d:Z

    return-void
.end method

.method public run()V
    .locals 10

    :goto_0
    iget-boolean v0, p0, Lcom/tweber/stickfighter/g/ba;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ba;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->F(Lcom/tweber/stickfighter/g/ae;)I

    move-result v0

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/ae;->a(Lcom/tweber/stickfighter/g/ae;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->y(Lcom/tweber/stickfighter/g/ae;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/tweber/stickfighter/g/ba;->c()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->a(Lcom/tweber/stickfighter/g/ae;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/g/ae;->c(Lcom/tweber/stickfighter/g/ae;I)I

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/ae;->G(Lcom/tweber/stickfighter/g/ae;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/ae;->x(Lcom/tweber/stickfighter/g/ae;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/ae;->H(Lcom/tweber/stickfighter/g/ae;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    iget-object v0, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->a(Lcom/tweber/stickfighter/g/ae;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/ae;->F(Lcom/tweber/stickfighter/g/ae;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/k;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ba;->b:Landroid/view/TextureView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/TextureView;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    :try_start_2
    iget-object v4, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v4, v1, v0}, Lcom/tweber/stickfighter/g/ae;->a(Lcom/tweber/stickfighter/g/ae;Landroid/graphics/Canvas;Lcom/tweber/stickfighter/h/k;)V

    const-wide/16 v4, 0x0

    iget v0, p0, Lcom/tweber/stickfighter/g/ba;->c:I

    int-to-long v6, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v2

    sub-long v2, v6, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ba;->b:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :goto_1
    iget-object v0, p0, Lcom/tweber/stickfighter/g/ba;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->I(Lcom/tweber/stickfighter/g/ae;)I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ba;->b:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v2, p0, Lcom/tweber/stickfighter/g/ba;->b:Landroid/view/TextureView;

    invoke-virtual {v2, v1}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v0
.end method

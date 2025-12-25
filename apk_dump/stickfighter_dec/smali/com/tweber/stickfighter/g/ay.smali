.class Lcom/tweber/stickfighter/g/ay;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/g/ae;

.field private b:I

.field private c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/tweber/stickfighter/g/ae;ILjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/g/ay;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p2, p0, Lcom/tweber/stickfighter/g/ay;->b:I

    iput-object p3, p0, Lcom/tweber/stickfighter/g/ay;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/tweber/stickfighter/g/ay;->c:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/tweber/stickfighter/g/ay;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ay;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/ae;->i(Lcom/tweber/stickfighter/g/ae;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v3, v1, [Lcom/tweber/stickfighter/h/p;

    move v1, v0

    :goto_0
    iget-object v4, p0, Lcom/tweber/stickfighter/g/ay;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v4}, Lcom/tweber/stickfighter/g/ae;->i(Lcom/tweber/stickfighter/g/ae;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/tweber/stickfighter/g/ay;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v4}, Lcom/tweber/stickfighter/g/ae;->A(Lcom/tweber/stickfighter/g/ae;)Lcom/tweber/stickfighter/h/v;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v4

    iget v5, p0, Lcom/tweber/stickfighter/g/ay;->b:I

    add-int/2addr v5, v1

    invoke-virtual {v4, v5}, Lcom/tweber/stickfighter/c/a;->a(I)Lcom/tweber/stickfighter/h/p;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/tweber/stickfighter/g/ay;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v4}, Lcom/tweber/stickfighter/g/ae;->i(Lcom/tweber/stickfighter/g/ae;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    iget-object v4, p0, Lcom/tweber/stickfighter/g/ay;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v4}, Lcom/tweber/stickfighter/g/ae;->g(Lcom/tweber/stickfighter/g/ae;)I

    move-result v4

    int-to-float v4, v4

    div-float v4, v1, v4

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/tweber/stickfighter/g/ay;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->i(Lcom/tweber/stickfighter/g/ae;)I

    move-result v0

    if-ge v1, v0, :cond_1

    aget-object v5, v3, v1

    add-int/lit8 v0, v1, 0x1

    aget-object v6, v3, v0

    if-eqz v5, :cond_1

    if-nez v6, :cond_2

    :cond_1
    const/4 v0, 0x0

    monitor-exit v2

    return-object v0

    :cond_2
    invoke-virtual {v5}, Lcom/tweber/stickfighter/h/p;->c()V

    invoke-virtual {v6}, Lcom/tweber/stickfighter/h/p;->c()V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ay;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_2
    iget-object v7, p0, Lcom/tweber/stickfighter/g/ay;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v7}, Lcom/tweber/stickfighter/g/ae;->g(Lcom/tweber/stickfighter/g/ae;)I

    move-result v7

    iget-object v8, p0, Lcom/tweber/stickfighter/g/ay;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v8}, Lcom/tweber/stickfighter/g/ae;->i(Lcom/tweber/stickfighter/g/ae;)I

    move-result v8

    div-int/2addr v7, v8

    if-ge v0, v7, :cond_3

    int-to-float v7, v0

    mul-float/2addr v7, v4

    invoke-static {v5, v6, v7}, Lcom/tweber/stickfighter/h/p;->a(Lcom/tweber/stickfighter/h/p;Lcom/tweber/stickfighter/h/p;F)Lcom/tweber/stickfighter/h/k;

    move-result-object v7

    iget-object v8, p0, Lcom/tweber/stickfighter/g/ay;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Lcom/tweber/stickfighter/h/p;->d()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tweber/stickfighter/g/ay;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tweber/stickfighter/g/ay;->a(Ljava/lang/Void;)V

    return-void
.end method

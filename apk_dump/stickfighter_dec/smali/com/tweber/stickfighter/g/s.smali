.class Lcom/tweber/stickfighter/g/s;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/tweber/stickfighter/g/r;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/g/r;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/g/s;->b:Lcom/tweber/stickfighter/g/r;

    iput-object p2, p0, Lcom/tweber/stickfighter/g/s;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->c()V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    iget-object v3, p0, Lcom/tweber/stickfighter/g/s;->b:Lcom/tweber/stickfighter/g/r;

    iget-object v3, v3, Lcom/tweber/stickfighter/g/r;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v3}, Lcom/tweber/stickfighter/g/k;->j(Lcom/tweber/stickfighter/g/k;)Lcom/tweber/stickfighter/h/p;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;Lcom/tweber/stickfighter/h/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->e()V

    throw v0

    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->e()V

    const/4 v0, 0x0

    return-object v0
.end method

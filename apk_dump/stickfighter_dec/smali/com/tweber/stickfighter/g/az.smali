.class Lcom/tweber/stickfighter/g/az;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/g/ae;


# direct methods
.method private constructor <init>(Lcom/tweber/stickfighter/g/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/g/az;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tweber/stickfighter/g/ae;Lcom/tweber/stickfighter/g/af;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tweber/stickfighter/g/az;-><init>(Lcom/tweber/stickfighter/g/ae;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/az;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->A(Lcom/tweber/stickfighter/g/ae;)Lcom/tweber/stickfighter/h/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v3

    const v0, 0x7fffffff

    invoke-virtual {v3, v0}, Lcom/tweber/stickfighter/c/a;->b(I)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/az;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->z(Lcom/tweber/stickfighter/g/ae;)I

    move-result v4

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/az;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-object v7

    :cond_1
    invoke-virtual {v3, v1}, Lcom/tweber/stickfighter/c/a;->a(I)Lcom/tweber/stickfighter/h/p;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/p;->d()V

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/p;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    add-int/lit8 v5, v1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/g/az;->publishProgress([Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/az;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/g/ae;->a(Lcom/tweber/stickfighter/g/ae;Lcom/tweber/stickfighter/g/az;)Lcom/tweber/stickfighter/g/az;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/az;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/g/ae;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/g/az;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->D(Lcom/tweber/stickfighter/g/ae;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/tweber/stickfighter/j/d;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/az;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->D(Lcom/tweber/stickfighter/g/ae;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/g/az;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/g/ae;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/g/az;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->C(Lcom/tweber/stickfighter/g/ae;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tweber/stickfighter/g/az;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tweber/stickfighter/g/az;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/g/az;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->C(Lcom/tweber/stickfighter/g/ae;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/tweber/stickfighter/g/az;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/ae;->z(Lcom/tweber/stickfighter/g/ae;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/tweber/stickfighter/g/az;->a([Ljava/lang/Integer;)V

    return-void
.end method

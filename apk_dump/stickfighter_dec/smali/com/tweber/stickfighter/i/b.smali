.class public Lcom/tweber/stickfighter/i/b;
.super Lcom/tweber/stickfighter/i/a;


# instance fields
.field private a:Lcom/tweber/stickfighter/h/v;


# direct methods
.method public constructor <init>(Lcom/tweber/stickfighter/h/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/tweber/stickfighter/i/a;-><init>()V

    iput-object p1, p0, Lcom/tweber/stickfighter/i/b;->a:Lcom/tweber/stickfighter/h/v;

    return-void
.end method


# virtual methods
.method protected a()Lcom/tweber/stickfighter/f/c;
    .locals 1

    sget-object v0, Lcom/tweber/stickfighter/f/c;->a:Lcom/tweber/stickfighter/f/c;

    return-object v0
.end method

.method protected c()Lcom/tweber/stickfighter/f/j;
    .locals 7

    const/4 v2, 0x0

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lcom/tweber/stickfighter/i/b;->a:Lcom/tweber/stickfighter/h/v;

    invoke-interface {v1, v0}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/v;)V

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v0

    iget-object v3, p0, Lcom/tweber/stickfighter/i/b;->a:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v3}, Lcom/tweber/stickfighter/h/v;->b()I

    move-result v3

    int-to-long v4, v3

    invoke-interface {v0, v4, v5}, Lcom/tweber/stickfighter/d/b;->b(J)I

    move-result v3

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/tweber/stickfighter/i/b;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Lcom/tweber/stickfighter/d/b;->e()V

    new-instance v0, Lcom/tweber/stickfighter/f/j;

    iget-object v1, p0, Lcom/tweber/stickfighter/i/b;->a:Lcom/tweber/stickfighter/h/v;

    const/4 v3, 0x0

    const-string v4, "User canceled delete"

    invoke-direct {v0, v1, v3, v4}, Lcom/tweber/stickfighter/f/j;-><init>(Lcom/tweber/stickfighter/h/v;ZLjava/lang/String;)V

    :goto_1
    return-object v0

    :cond_0
    iget-object v4, p0, Lcom/tweber/stickfighter/i/b;->a:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v4}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/tweber/stickfighter/c/a;->a(I)Lcom/tweber/stickfighter/h/p;

    move-result-object v4

    iget-object v5, p0, Lcom/tweber/stickfighter/i/b;->a:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v5}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/tweber/stickfighter/c/a;->c(I)V

    invoke-interface {v1, v4}, Lcom/tweber/stickfighter/d/b;->c(Lcom/tweber/stickfighter/h/p;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tweber/stickfighter/i/b;->a:Lcom/tweber/stickfighter/h/v;

    invoke-interface {v1, v0}, Lcom/tweber/stickfighter/d/b;->b(Lcom/tweber/stickfighter/h/v;)V

    new-instance v0, Lcom/tweber/stickfighter/f/j;

    iget-object v1, p0, Lcom/tweber/stickfighter/i/b;->a:Lcom/tweber/stickfighter/h/v;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4}, Lcom/tweber/stickfighter/f/j;-><init>(Lcom/tweber/stickfighter/h/v;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/tweber/stickfighter/f/j;

    iget-object v3, p0, Lcom/tweber/stickfighter/i/b;->a:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v2, v1}, Lcom/tweber/stickfighter/f/j;-><init>(Lcom/tweber/stickfighter/h/v;ZLjava/lang/String;)V

    goto :goto_1
.end method

.method protected synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/tweber/stickfighter/i/b;->c()Lcom/tweber/stickfighter/f/j;

    move-result-object v0

    return-object v0
.end method

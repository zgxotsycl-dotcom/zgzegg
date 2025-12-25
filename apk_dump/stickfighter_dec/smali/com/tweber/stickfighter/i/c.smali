.class public Lcom/tweber/stickfighter/i/c;
.super Lcom/tweber/stickfighter/i/f;


# instance fields
.field private final a:Lcom/tweber/stickfighter/h/p;


# direct methods
.method public constructor <init>(Lcom/tweber/stickfighter/h/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/tweber/stickfighter/i/f;-><init>()V

    iput-object p1, p0, Lcom/tweber/stickfighter/i/c;->a:Lcom/tweber/stickfighter/h/p;

    return-void
.end method


# virtual methods
.method protected a()Lcom/tweber/stickfighter/f/f;
    .locals 3

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tweber/stickfighter/i/c;->a:Lcom/tweber/stickfighter/h/p;

    invoke-interface {v0, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;)V

    invoke-static {}, Lcom/tweber/stickfighter/h/v;->a()Lcom/tweber/stickfighter/h/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tweber/stickfighter/i/c;->a:Lcom/tweber/stickfighter/h/p;

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/p;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/c/a;->a(I)Lcom/tweber/stickfighter/h/p;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tweber/stickfighter/i/c;->a:Lcom/tweber/stickfighter/h/p;

    invoke-interface {v0, v1}, Lcom/tweber/stickfighter/d/b;->b(Lcom/tweber/stickfighter/h/p;)Lcom/tweber/stickfighter/h/p;

    move-result-object v0

    invoke-static {}, Lcom/tweber/stickfighter/h/v;->a()Lcom/tweber/stickfighter/h/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tweber/stickfighter/c/a;->a(Lcom/tweber/stickfighter/h/p;)V

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/i/c;->a:Lcom/tweber/stickfighter/h/p;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/p;->d()V

    iget-object v0, p0, Lcom/tweber/stickfighter/i/c;->a:Lcom/tweber/stickfighter/h/p;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/p;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->i()V

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    new-instance v0, Lcom/tweber/stickfighter/f/f;

    iget-object v1, p0, Lcom/tweber/stickfighter/i/c;->a:Lcom/tweber/stickfighter/h/p;

    invoke-direct {v0, v1}, Lcom/tweber/stickfighter/f/f;-><init>(Lcom/tweber/stickfighter/h/p;)V

    return-object v0
.end method

.method protected synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/tweber/stickfighter/i/c;->a()Lcom/tweber/stickfighter/f/f;

    move-result-object v0

    return-object v0
.end method

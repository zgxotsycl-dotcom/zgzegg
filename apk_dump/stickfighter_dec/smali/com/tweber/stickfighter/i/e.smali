.class public Lcom/tweber/stickfighter/i/e;
.super Lcom/tweber/stickfighter/i/f;


# instance fields
.field private final a:Lcom/tweber/stickfighter/h/p;


# direct methods
.method public constructor <init>(Lcom/tweber/stickfighter/h/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/tweber/stickfighter/i/f;-><init>()V

    iput-object p1, p0, Lcom/tweber/stickfighter/i/e;->a:Lcom/tweber/stickfighter/h/p;

    return-void
.end method


# virtual methods
.method protected a()Lcom/tweber/stickfighter/f/e;
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tweber/stickfighter/i/e;->a:Lcom/tweber/stickfighter/h/p;

    invoke-interface {v0, v1}, Lcom/tweber/stickfighter/d/b;->a(Lcom/tweber/stickfighter/h/p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/tweber/stickfighter/i/e;->a:Lcom/tweber/stickfighter/h/p;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/p;->d()V

    iget-object v0, p0, Lcom/tweber/stickfighter/i/e;->a:Lcom/tweber/stickfighter/h/p;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/p;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->i()V

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "HELLO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FAILED SaveFrameTask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    new-instance v0, Lcom/tweber/stickfighter/f/e;

    iget-object v1, p0, Lcom/tweber/stickfighter/i/e;->a:Lcom/tweber/stickfighter/h/p;

    invoke-direct {v0, v1}, Lcom/tweber/stickfighter/f/e;-><init>(Lcom/tweber/stickfighter/h/p;)V

    return-object v0
.end method

.method protected synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/tweber/stickfighter/i/e;->a()Lcom/tweber/stickfighter/f/e;

    move-result-object v0

    return-object v0
.end method

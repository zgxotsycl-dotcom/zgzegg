.class public Lcom/tweber/stickfighter/c/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tweber/stickfighter/c/b;

.field private b:I


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tweber/stickfighter/c/b;

    invoke-direct {v0, p1, p2}, Lcom/tweber/stickfighter/c/b;-><init>(J)V

    iput-object v0, p0, Lcom/tweber/stickfighter/c/a;->a:Lcom/tweber/stickfighter/c/b;

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tweber/stickfighter/d/b;->b(J)I

    move-result v0

    iput v0, p0, Lcom/tweber/stickfighter/c/a;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/tweber/stickfighter/c/a;->b:I

    return v0
.end method

.method public a(I)Lcom/tweber/stickfighter/h/p;
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/c/a;->a:Lcom/tweber/stickfighter/c/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/c/b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/p;

    return-object v0
.end method

.method public a(ILcom/tweber/stickfighter/h/p;)V
    .locals 6

    iget-object v0, p0, Lcom/tweber/stickfighter/c/a;->a:Lcom/tweber/stickfighter/c/b;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/c/b;->snapshot()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/tweber/stickfighter/c/a;->a:Lcom/tweber/stickfighter/c/b;

    invoke-virtual {v1}, Lcom/tweber/stickfighter/c/b;->evictAll()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tweber/stickfighter/h/p;

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/p;->b()I

    move-result v1

    if-ge v1, p1, :cond_1

    iget-object v3, p0, Lcom/tweber/stickfighter/c/a;->a:Lcom/tweber/stickfighter/c/b;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/tweber/stickfighter/c/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-lt v1, p1, :cond_0

    iget-object v3, p0, Lcom/tweber/stickfighter/c/a;->a:Lcom/tweber/stickfighter/c/b;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/tweber/stickfighter/c/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/p;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/h/p;->a(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tweber/stickfighter/c/a;->a:Lcom/tweber/stickfighter/c/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/tweber/stickfighter/c/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/tweber/stickfighter/c/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tweber/stickfighter/c/a;->b:I

    return-void
.end method

.method public a(Lcom/tweber/stickfighter/h/p;)V
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/c/a;->a:Lcom/tweber/stickfighter/c/b;

    invoke-virtual {p1}, Lcom/tweber/stickfighter/h/p;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/tweber/stickfighter/c/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/tweber/stickfighter/c/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tweber/stickfighter/c/a;->b:I

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/c/a;->a:Lcom/tweber/stickfighter/c/b;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/c/b;->evictAll()V

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/c/a;->a:Lcom/tweber/stickfighter/c/b;

    invoke-virtual {v0, p1}, Lcom/tweber/stickfighter/c/b;->resize(I)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/c/a;->a:Lcom/tweber/stickfighter/c/b;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/c/b;->resize(I)V

    return-void
.end method

.method public c(I)V
    .locals 6

    iget-object v0, p0, Lcom/tweber/stickfighter/c/a;->a:Lcom/tweber/stickfighter/c/b;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/c/b;->snapshot()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/tweber/stickfighter/c/a;->a:Lcom/tweber/stickfighter/c/b;

    invoke-virtual {v1}, Lcom/tweber/stickfighter/c/b;->evictAll()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tweber/stickfighter/h/p;

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/p;->b()I

    move-result v1

    if-ge v1, p1, :cond_1

    iget-object v3, p0, Lcom/tweber/stickfighter/c/a;->a:Lcom/tweber/stickfighter/c/b;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/tweber/stickfighter/c/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-le v1, p1, :cond_0

    iget-object v3, p0, Lcom/tweber/stickfighter/c/a;->a:Lcom/tweber/stickfighter/c/b;

    add-int/lit8 v4, v1, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/tweber/stickfighter/c/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/p;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/h/p;->a(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/tweber/stickfighter/c/a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tweber/stickfighter/c/a;->b:I

    return-void
.end method

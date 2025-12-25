.class public abstract Lcom/tweber/stickfighter/h/f;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/util/ArrayList;

.field public final b:I

.field public final c:B

.field protected transient d:Z

.field private e:I


# direct methods
.method protected constructor <init>(JJLjava/util/ArrayList;BI)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tweber/stickfighter/h/f;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tweber/stickfighter/h/f;->d:Z

    long-to-int v0, p1

    iput v0, p0, Lcom/tweber/stickfighter/h/f;->b:I

    if-nez p5, :cond_0

    new-instance p5, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p5, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    iput-object p5, p0, Lcom/tweber/stickfighter/h/f;->a:Ljava/util/ArrayList;

    iput-byte p6, p0, Lcom/tweber/stickfighter/h/f;->c:B

    iput p7, p0, Lcom/tweber/stickfighter/h/f;->e:I

    iget-object v0, p0, Lcom/tweber/stickfighter/h/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0, p0}, Lcom/tweber/stickfighter/h/c;->a(Lcom/tweber/stickfighter/h/f;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/h/f;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(FFLandroid/util/SparseArray;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/tweber/stickfighter/h/f;->a(FFLjava/util/ArrayList;Landroid/util/SparseArray;)V

    return-void
.end method

.method public a(FFLjava/util/ArrayList;Landroid/util/SparseArray;)V
    .locals 3

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0, p1, p2}, Lcom/tweber/stickfighter/h/c;->a(FF)V

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/b;

    iget v0, v0, Lcom/tweber/stickfighter/h/b;->a:I

    invoke-virtual {p4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->g()Lcom/tweber/stickfighter/h/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tweber/stickfighter/h/f;->a(FFLjava/util/ArrayList;Landroid/util/SparseArray;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tweber/stickfighter/h/f;->e:I

    return-void
.end method

.method public a(Lcom/tweber/stickfighter/h/c;)V
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/h/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lcom/tweber/stickfighter/h/c;->a(Lcom/tweber/stickfighter/h/f;)V

    return-void
.end method

.method protected abstract a(Lcom/tweber/stickfighter/h/j;Landroid/graphics/Canvas;)V
.end method

.method protected abstract a(Lcom/tweber/stickfighter/h/j;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method public a(Lcom/tweber/stickfighter/h/j;Landroid/graphics/Canvas;Landroid/graphics/Paint;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/tweber/stickfighter/h/f;->a(Lcom/tweber/stickfighter/h/j;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tweber/stickfighter/h/f;->e:I

    return v0
.end method

.method public b(Lcom/tweber/stickfighter/h/j;Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0, p2, p1}, Lcom/tweber/stickfighter/h/c;->a(Landroid/graphics/Canvas;Lcom/tweber/stickfighter/h/j;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tweber/stickfighter/h/f;->d:Z

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tweber/stickfighter/h/f;->d:Z

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "<AO ID=\""

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/tweber/stickfighter/h/f;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" TypeId=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v2, p0, Lcom/tweber/stickfighter/h/f;->c:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" Color=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/tweber/stickfighter/h/f;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tweber/stickfighter/h/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "</AO>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

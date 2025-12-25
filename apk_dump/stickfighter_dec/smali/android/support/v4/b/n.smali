.class public Landroid/support/v4/b/n;
.super Ljava/lang/Object;


# instance fields
.field f:I

.field g:Landroid/support/v4/b/p;

.field h:Landroid/support/v4/b/o;

.field i:Landroid/content/Context;

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid/support/v4/b/n;->j:Z

    iput-boolean v1, p0, Landroid/support/v4/b/n;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/b/n;->l:Z

    iput-boolean v1, p0, Landroid/support/v4/b/n;->m:Z

    iput-boolean v1, p0, Landroid/support/v4/b/n;->n:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/b/n;->i:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public a(ILandroid/support/v4/b/p;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/b/n;->g:Landroid/support/v4/b/p;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Landroid/support/v4/b/n;->g:Landroid/support/v4/b/p;

    iput p1, p0, Landroid/support/v4/b/n;->f:I

    return-void
.end method

.method public a(Landroid/support/v4/b/o;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/b/n;->h:Landroid/support/v4/b/o;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/support/v4/b/n;->h:Landroid/support/v4/b/o;

    return-void
.end method

.method public a(Landroid/support/v4/b/p;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/b/n;->g:Landroid/support/v4/b/p;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/b/n;->g:Landroid/support/v4/b/p;

    if-eq v0, p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/b/n;->g:Landroid/support/v4/b/p;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/b/n;->f:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mListener="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/b/n;->g:Landroid/support/v4/b/p;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-boolean v0, p0, Landroid/support/v4/b/n;->j:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/b/n;->m:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/b/n;->n:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/b/n;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/b/n;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mProcessingChange="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/b/n;->n:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/b/n;->k:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/b/n;->l:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAbandoned="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/b/n;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mReset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/b/n;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_3
    return-void
.end method

.method public b(Landroid/support/v4/b/o;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/b/n;->h:Landroid/support/v4/b/o;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/b/n;->h:Landroid/support/v4/b/o;

    if-eq v0, p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/b/n;->h:Landroid/support/v4/b/o;

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/n;->g:Landroid/support/v4/b/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/b/n;->g:Landroid/support/v4/b/p;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/b/p;->a(Landroid/support/v4/b/n;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p1, v0}, Landroid/support/v4/g/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/n;->h:Landroid/support/v4/b/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/b/n;->h:Landroid/support/v4/b/o;

    invoke-interface {v0, p0}, Landroid/support/v4/b/o;->a(Landroid/support/v4/b/n;)V

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/b/n;->k:Z

    return v0
.end method

.method public final i()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/b/n;->j:Z

    iput-boolean v1, p0, Landroid/support/v4/b/n;->l:Z

    iput-boolean v1, p0, Landroid/support/v4/b/n;->k:Z

    invoke-virtual {p0}, Landroid/support/v4/b/n;->j()V

    return-void
.end method

.method protected j()V
    .locals 0

    return-void
.end method

.method public k()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/b/n;->b()Z

    move-result v0

    return v0
.end method

.method public l()V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v4/b/n;->a()V

    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/b/n;->j:Z

    invoke-virtual {p0}, Landroid/support/v4/b/n;->n()V

    return-void
.end method

.method protected n()V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/b/n;->k:Z

    invoke-virtual {p0}, Landroid/support/v4/b/n;->p()V

    return-void
.end method

.method protected p()V
    .locals 0

    return-void
.end method

.method public q()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v4/b/n;->r()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/b/n;->l:Z

    iput-boolean v1, p0, Landroid/support/v4/b/n;->j:Z

    iput-boolean v1, p0, Landroid/support/v4/b/n;->k:Z

    iput-boolean v1, p0, Landroid/support/v4/b/n;->m:Z

    iput-boolean v1, p0, Landroid/support/v4/b/n;->n:Z

    return-void
.end method

.method protected r()V
    .locals 0

    return-void
.end method

.method public s()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/b/n;->n:Z

    return-void
.end method

.method public t()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/b/n;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/b/n;->m:Z

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Landroid/support/v4/g/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/b/n;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/b/n;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/b/n;->l()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/b/n;->m:Z

    goto :goto_0
.end method

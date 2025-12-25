.class public abstract Lcom/tweber/stickfighter/i/a;
.super Lcom/tweber/stickfighter/i/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tweber/stickfighter/i/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/tweber/stickfighter/f/c;
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final onCancelled()V
    .locals 1

    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, La/a/a/c;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final onEvent(Lcom/tweber/stickfighter/f/b;)V
    .locals 2

    invoke-virtual {p1}, Lcom/tweber/stickfighter/f/b;->a()Lcom/tweber/stickfighter/f/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/i/a;->a()Lcom/tweber/stickfighter/f/c;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/i/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/i/a;->cancel(Z)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, La/a/a/c;->c(Ljava/lang/Object;)V

    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, La/a/a/c;->b(Ljava/lang/Object;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, La/a/a/c;->a(Ljava/lang/Object;)V

    return-void
.end method

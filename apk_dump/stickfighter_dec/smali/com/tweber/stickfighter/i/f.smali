.class public abstract Lcom/tweber/stickfighter/i/f;
.super Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/tweber/stickfighter/i/f;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract d()Ljava/lang/Object;
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tweber/stickfighter/i/f;->a([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, La/a/a/c;->c(Ljava/lang/Object;)V

    goto :goto_0
.end method

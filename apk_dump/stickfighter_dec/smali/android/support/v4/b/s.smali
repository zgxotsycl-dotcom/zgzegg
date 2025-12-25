.class Landroid/support/v4/b/s;
.super Landroid/support/v4/b/y;


# instance fields
.field final synthetic a:Landroid/support/v4/b/q;


# direct methods
.method constructor <init>(Landroid/support/v4/b/q;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v4/b/s;->a:Landroid/support/v4/b/q;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/b/y;-><init>(Landroid/support/v4/b/r;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/b/s;->a:Landroid/support/v4/b/q;

    invoke-static {v0}, Landroid/support/v4/b/q;->a(Landroid/support/v4/b/q;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Landroid/support/v4/b/s;->a:Landroid/support/v4/b/q;

    iget-object v1, p0, Landroid/support/v4/b/s;->a:Landroid/support/v4/b/q;

    iget-object v2, p0, Landroid/support/v4/b/s;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/support/v4/b/q;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/b/q;->a(Landroid/support/v4/b/q;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

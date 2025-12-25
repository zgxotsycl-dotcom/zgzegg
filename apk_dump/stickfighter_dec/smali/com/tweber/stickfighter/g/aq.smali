.class Lcom/tweber/stickfighter/g/aq;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/g/ae;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/g/ae;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/g/aq;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v1, p0, Lcom/tweber/stickfighter/g/aq;->a:Lcom/tweber/stickfighter/g/ae;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/tweber/stickfighter/g/ae;->a(Lcom/tweber/stickfighter/g/ae;Z)V

    return-void
.end method

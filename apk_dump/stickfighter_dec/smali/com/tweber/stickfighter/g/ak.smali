.class Lcom/tweber/stickfighter/g/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/g/aj;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/g/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/g/ak;->a:Lcom/tweber/stickfighter/g/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ak;->a:Lcom/tweber/stickfighter/g/aj;

    iget-object v0, v0, Lcom/tweber/stickfighter/g/aj;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->u(Lcom/tweber/stickfighter/g/ae;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ak;->a:Lcom/tweber/stickfighter/g/aj;

    iget-object v0, v0, Lcom/tweber/stickfighter/g/aj;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/g/ae;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ae;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ak;->a:Lcom/tweber/stickfighter/g/aj;

    iget-object v0, v0, Lcom/tweber/stickfighter/g/aj;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->v(Lcom/tweber/stickfighter/g/ae;)V

    :cond_0
    return-void
.end method

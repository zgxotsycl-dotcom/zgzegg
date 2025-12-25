.class Lcom/tweber/stickfighter/e/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/e/m;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/e/m;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/e/p;->a:Lcom/tweber/stickfighter/e/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/e/p;->a:Lcom/tweber/stickfighter/e/m;

    invoke-static {v0}, Lcom/tweber/stickfighter/e/m;->a(Lcom/tweber/stickfighter/e/m;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

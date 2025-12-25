.class Lcom/tweber/stickfighter/e/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/e/ao;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/e/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/e/ar;->a:Lcom/tweber/stickfighter/e/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/e/ar;->a:Lcom/tweber/stickfighter/e/ao;

    invoke-static {v0}, Lcom/tweber/stickfighter/e/ao;->a(Lcom/tweber/stickfighter/e/ao;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lcom/tweber/stickfighter/views/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/views/EditorToolbar;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/views/EditorToolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/views/e;->a:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/views/e;->a:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-static {v0}, Lcom/tweber/stickfighter/views/EditorToolbar;->a(Lcom/tweber/stickfighter/views/EditorToolbar;)Lcom/tweber/stickfighter/views/k;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/views/e;->a:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-static {v0}, Lcom/tweber/stickfighter/views/EditorToolbar;->a(Lcom/tweber/stickfighter/views/EditorToolbar;)Lcom/tweber/stickfighter/views/k;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tweber/stickfighter/views/k;->b(Landroid/view/View;)V

    goto :goto_0
.end method

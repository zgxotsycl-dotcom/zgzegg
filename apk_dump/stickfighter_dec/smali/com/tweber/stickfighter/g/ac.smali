.class Lcom/tweber/stickfighter/g/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/g/aa;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/g/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/g/ac;->a:Lcom/tweber/stickfighter/g/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/tweber/stickfighter/h/v;->a()Lcom/tweber/stickfighter/h/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tweber/stickfighter/c/a;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ac;->a:Lcom/tweber/stickfighter/g/aa;

    const v1, 0x7f050072

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/g/aa;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/g/ac;->a:Lcom/tweber/stickfighter/g/aa;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/aa;->a(Lcom/tweber/stickfighter/g/aa;)V

    goto :goto_0
.end method

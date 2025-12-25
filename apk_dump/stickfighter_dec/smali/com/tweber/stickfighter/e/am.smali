.class public Lcom/tweber/stickfighter/e/am;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/tweber/stickfighter/e/aj;


# direct methods
.method public constructor <init>(Lcom/tweber/stickfighter/e/aj;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/tweber/stickfighter/e/am;->c:Lcom/tweber/stickfighter/e/aj;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0c00cd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tweber/stickfighter/e/am;->a:Landroid/widget/TextView;

    const v0, 0x7f0c00f2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tweber/stickfighter/e/am;->b:Landroid/widget/ImageView;

    return-void
.end method

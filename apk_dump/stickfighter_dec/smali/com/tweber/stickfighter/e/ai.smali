.class public Lcom/tweber/stickfighter/e/ai;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/tweber/stickfighter/e/ag;


# direct methods
.method public constructor <init>(Lcom/tweber/stickfighter/e/ag;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/tweber/stickfighter/e/ai;->c:Lcom/tweber/stickfighter/e/ag;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0c00cd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tweber/stickfighter/e/ai;->a:Landroid/widget/TextView;

    const v0, 0x7f0c00f2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tweber/stickfighter/e/ai;->b:Landroid/widget/ImageView;

    return-void
.end method

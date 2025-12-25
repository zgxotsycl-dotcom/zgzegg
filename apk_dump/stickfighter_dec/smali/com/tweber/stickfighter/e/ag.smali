.class Lcom/tweber/stickfighter/e/ag;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/e/af;

.field private final b:I

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/tweber/stickfighter/e/af;Ljava/util/List;)V
    .locals 1

    iput-object p1, p0, Lcom/tweber/stickfighter/e/ag;->a:Lcom/tweber/stickfighter/e/af;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tweber/stickfighter/e/ag;->b:I

    iput-object p2, p0, Lcom/tweber/stickfighter/e/ag;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/tweber/stickfighter/e/ai;
    .locals 3

    iget-object v0, p0, Lcom/tweber/stickfighter/e/ag;->a:Lcom/tweber/stickfighter/e/af;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/e/af;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ae;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030048

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tweber/stickfighter/e/ai;

    invoke-direct {v1, p0, v0}, Lcom/tweber/stickfighter/e/ai;-><init>(Lcom/tweber/stickfighter/e/ag;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lcom/tweber/stickfighter/e/ai;I)V
    .locals 3

    iget-object v0, p0, Lcom/tweber/stickfighter/e/ag;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/m;

    iget-object v1, p1, Lcom/tweber/stickfighter/e/ai;->a:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/tweber/stickfighter/h/m;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/tweber/stickfighter/e/ai;->itemView:Landroid/view/View;

    new-instance v2, Lcom/tweber/stickfighter/e/ah;

    invoke-direct {v2, p0, v0}, Lcom/tweber/stickfighter/e/ah;-><init>(Lcom/tweber/stickfighter/e/ag;Lcom/tweber/stickfighter/h/m;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/e/ag;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/tweber/stickfighter/e/ai;

    invoke-virtual {p0, p1, p2}, Lcom/tweber/stickfighter/e/ag;->a(Lcom/tweber/stickfighter/e/ai;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/tweber/stickfighter/e/ag;->a(Landroid/view/ViewGroup;I)Lcom/tweber/stickfighter/e/ai;

    move-result-object v0

    return-object v0
.end method

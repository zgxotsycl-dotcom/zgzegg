.class Lcom/tweber/stickfighter/e/aj;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/e/af;

.field private final b:I

.field private c:[Lcom/tweber/stickfighter/h/l;


# direct methods
.method public constructor <init>(Lcom/tweber/stickfighter/e/af;[Lcom/tweber/stickfighter/h/l;)V
    .locals 1

    iput-object p1, p0, Lcom/tweber/stickfighter/e/aj;->a:Lcom/tweber/stickfighter/e/af;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tweber/stickfighter/e/aj;->b:I

    iput-object p2, p0, Lcom/tweber/stickfighter/e/aj;->c:[Lcom/tweber/stickfighter/h/l;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/tweber/stickfighter/e/am;
    .locals 3

    iget-object v0, p0, Lcom/tweber/stickfighter/e/aj;->a:Lcom/tweber/stickfighter/e/af;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/e/af;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ae;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03004a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tweber/stickfighter/e/am;

    invoke-direct {v1, p0, v0}, Lcom/tweber/stickfighter/e/am;-><init>(Lcom/tweber/stickfighter/e/aj;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lcom/tweber/stickfighter/e/am;I)V
    .locals 3

    iget-object v0, p0, Lcom/tweber/stickfighter/e/aj;->c:[Lcom/tweber/stickfighter/h/l;

    array-length v0, v0

    if-lt p2, v0, :cond_0

    iget-object v0, p1, Lcom/tweber/stickfighter/e/am;->a:Landroid/widget/TextView;

    const v1, 0x7f050077

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p1, Lcom/tweber/stickfighter/e/am;->itemView:Landroid/view/View;

    new-instance v1, Lcom/tweber/stickfighter/e/ak;

    invoke-direct {v1, p0}, Lcom/tweber/stickfighter/e/ak;-><init>(Lcom/tweber/stickfighter/e/aj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/e/aj;->c:[Lcom/tweber/stickfighter/h/l;

    aget-object v0, v0, p2

    iget-object v1, p1, Lcom/tweber/stickfighter/e/am;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/tweber/stickfighter/e/am;->itemView:Landroid/view/View;

    new-instance v2, Lcom/tweber/stickfighter/e/al;

    invoke-direct {v2, p0, v0}, Lcom/tweber/stickfighter/e/al;-><init>(Lcom/tweber/stickfighter/e/aj;Lcom/tweber/stickfighter/h/l;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/e/aj;->c:[Lcom/tweber/stickfighter/h/l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tweber/stickfighter/e/aj;->c:[Lcom/tweber/stickfighter/h/l;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/tweber/stickfighter/e/am;

    invoke-virtual {p0, p1, p2}, Lcom/tweber/stickfighter/e/aj;->a(Lcom/tweber/stickfighter/e/am;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/tweber/stickfighter/e/aj;->a(Landroid/view/ViewGroup;I)Lcom/tweber/stickfighter/e/am;

    move-result-object v0

    return-object v0
.end method

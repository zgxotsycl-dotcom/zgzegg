.class public Lcom/tweber/stickfighter/b/e;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/tweber/stickfighter/b/e;->a:Ljava/util/ArrayList;

    iput p2, p0, Lcom/tweber/stickfighter/b/e;->b:I

    return-void
.end method

.method static synthetic a(Lcom/tweber/stickfighter/b/e;)I
    .locals 1

    iget v0, p0, Lcom/tweber/stickfighter/b/e;->b:I

    return v0
.end method

.method static synthetic a(Lcom/tweber/stickfighter/b/e;Lcom/tweber/stickfighter/h/v;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tweber/stickfighter/b/e;->a(Lcom/tweber/stickfighter/h/v;)V

    return-void
.end method

.method static synthetic a(Lcom/tweber/stickfighter/b/e;Lcom/tweber/stickfighter/h/v;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tweber/stickfighter/b/e;->a(Lcom/tweber/stickfighter/h/v;Landroid/content/Context;)V

    return-void
.end method

.method private a(Lcom/tweber/stickfighter/h/v;)V
    .locals 2

    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/tweber/stickfighter/f/i;

    invoke-direct {v1, p1}, Lcom/tweber/stickfighter/f/i;-><init>(Lcom/tweber/stickfighter/h/v;)V

    invoke-virtual {v0, v1}, La/a/a/c;->c(Ljava/lang/Object;)V

    new-instance v0, Lcom/tweber/stickfighter/i/b;

    invoke-direct {v0, p1}, Lcom/tweber/stickfighter/i/b;-><init>(Lcom/tweber/stickfighter/h/v;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/i/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private a(Lcom/tweber/stickfighter/h/v;Landroid/content/Context;)V
    .locals 3

    const v2, 0x7f050058

    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050059

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/tweber/stickfighter/b/h;

    invoke-direct {v1, p0, p1}, Lcom/tweber/stickfighter/b/h;-><init>(Lcom/tweber/stickfighter/b/e;Lcom/tweber/stickfighter/h/v;)V

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050041

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/tweber/stickfighter/b/j;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030049

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tweber/stickfighter/b/j;

    invoke-direct {v1, v0}, Lcom/tweber/stickfighter/b/j;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lcom/tweber/stickfighter/b/j;I)V
    .locals 3

    iget-object v0, p0, Lcom/tweber/stickfighter/b/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/v;

    iget-object v1, p1, Lcom/tweber/stickfighter/b/j;->itemView:Landroid/view/View;

    new-instance v2, Lcom/tweber/stickfighter/b/f;

    invoke-direct {v2, p0, v0}, Lcom/tweber/stickfighter/b/f;-><init>(Lcom/tweber/stickfighter/b/e;Lcom/tweber/stickfighter/h/v;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lcom/tweber/stickfighter/b/j;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/v;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/tweber/stickfighter/b/i;

    iget-object v2, p1, Lcom/tweber/stickfighter/b/j;->a:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v0, v2}, Lcom/tweber/stickfighter/b/i;-><init>(Lcom/tweber/stickfighter/b/e;Lcom/tweber/stickfighter/h/v;Landroid/widget/ImageView;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/tweber/stickfighter/b/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, p1, Lcom/tweber/stickfighter/b/j;->c:Landroid/view/View;

    new-instance v2, Lcom/tweber/stickfighter/b/g;

    invoke-direct {v2, p0, v0}, Lcom/tweber/stickfighter/b/g;-><init>(Lcom/tweber/stickfighter/b/e;Lcom/tweber/stickfighter/h/v;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/b/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/tweber/stickfighter/b/j;

    invoke-virtual {p0, p1, p2}, Lcom/tweber/stickfighter/b/e;->a(Lcom/tweber/stickfighter/b/j;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/tweber/stickfighter/b/e;->a(Landroid/view/ViewGroup;I)Lcom/tweber/stickfighter/b/j;

    move-result-object v0

    return-object v0
.end method

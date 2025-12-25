.class public Lcom/tweber/stickfighter/b/k;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# instance fields
.field private a:Lcom/tweber/stickfighter/h/v;

.field private b:I

.field private c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/tweber/stickfighter/h/v;ILandroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/tweber/stickfighter/b/k;->a:Lcom/tweber/stickfighter/h/v;

    iput p2, p0, Lcom/tweber/stickfighter/b/k;->b:I

    invoke-direct {p0, p3}, Lcom/tweber/stickfighter/b/k;->a(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/b/k;->c:Landroid/graphics/Bitmap;

    return-void
.end method

.method private a(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-static {p1}, Lcom/tweber/stickfighter/j/d;->c(Landroid/app/Activity;)I

    move-result v0

    iget v1, p0, Lcom/tweber/stickfighter/b/k;->b:I

    div-int/2addr v0, v1

    int-to-float v1, v0

    iget-object v2, p0, Lcom/tweber/stickfighter/b/k;->a:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/v;->d()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/b/k;->c:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/tweber/stickfighter/b/k;->c:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, Lcom/tweber/stickfighter/b/k;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic a(Lcom/tweber/stickfighter/b/k;)Lcom/tweber/stickfighter/h/v;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/b/k;->a:Lcom/tweber/stickfighter/h/v;

    return-object v0
.end method

.method static synthetic a(Lcom/tweber/stickfighter/b/k;Lcom/tweber/stickfighter/b/q;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tweber/stickfighter/b/k;->b(Lcom/tweber/stickfighter/b/q;)V

    return-void
.end method

.method private a(Lcom/tweber/stickfighter/b/q;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/tweber/stickfighter/b/k;->a:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tweber/stickfighter/c/a;->a()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p1, Lcom/tweber/stickfighter/b/q;->itemView:Landroid/view/View;

    invoke-static {}, Lcom/tweber/stickfighter/StickFighterApplication;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050064

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/tweber/stickfighter/b/q;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/tweber/stickfighter/b/k;->a:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tweber/stickfighter/c/a;->a()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v2

    iget-object v3, p0, Lcom/tweber/stickfighter/b/k;->a:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v3}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tweber/stickfighter/c/a;->a(I)Lcom/tweber/stickfighter/h/p;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tweber/stickfighter/d/b;->c(Lcom/tweber/stickfighter/h/p;)V

    iget-object v2, p0, Lcom/tweber/stickfighter/b/k;->a:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tweber/stickfighter/c/a;->c(I)V

    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/b/k;->notifyItemRemoved(I)V

    invoke-virtual {p0, v6, v0}, Lcom/tweber/stickfighter/b/k;->notifyItemRangeChanged(II)V

    iget-object v0, p1, Lcom/tweber/stickfighter/b/q;->itemView:Landroid/view/View;

    invoke-static {}, Lcom/tweber/stickfighter/StickFighterApplication;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050063

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tweber/stickfighter/b/k;)I
    .locals 1

    iget v0, p0, Lcom/tweber/stickfighter/b/k;->b:I

    return v0
.end method

.method static synthetic b(Lcom/tweber/stickfighter/b/k;Lcom/tweber/stickfighter/b/q;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tweber/stickfighter/b/k;->a(Lcom/tweber/stickfighter/b/q;)V

    return-void
.end method

.method private b(Lcom/tweber/stickfighter/b/q;)V
    .locals 6

    invoke-virtual {p1}, Lcom/tweber/stickfighter/b/q;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/tweber/stickfighter/b/k;->a:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tweber/stickfighter/c/a;->a()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v2

    iget-object v3, p0, Lcom/tweber/stickfighter/b/k;->a:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v3}, Lcom/tweber/stickfighter/h/v;->b()I

    move-result v3

    int-to-long v4, v3

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v4, v5, v3}, Lcom/tweber/stickfighter/d/b;->c(JI)V

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v2

    iget-object v3, p0, Lcom/tweber/stickfighter/b/k;->a:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v3}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tweber/stickfighter/c/a;->a(I)Lcom/tweber/stickfighter/h/p;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tweber/stickfighter/d/b;->b(Lcom/tweber/stickfighter/h/p;)Lcom/tweber/stickfighter/h/p;

    move-result-object v2

    iget-object v3, p0, Lcom/tweber/stickfighter/b/k;->a:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v3}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4, v2}, Lcom/tweber/stickfighter/c/a;->a(ILcom/tweber/stickfighter/h/p;)V

    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/b/k;->notifyItemInserted(I)V

    iget-object v0, p1, Lcom/tweber/stickfighter/b/q;->itemView:Landroid/view/View;

    new-instance v2, Lcom/tweber/stickfighter/b/o;

    invoke-direct {v2, p0, v1}, Lcom/tweber/stickfighter/b/o;-><init>(Lcom/tweber/stickfighter/b/k;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p1, Lcom/tweber/stickfighter/b/q;->itemView:Landroid/view/View;

    invoke-static {}, Lcom/tweber/stickfighter/StickFighterApplication;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050062

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/tweber/stickfighter/b/q;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tweber/stickfighter/b/q;

    invoke-direct {v1, v0}, Lcom/tweber/stickfighter/b/q;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lcom/tweber/stickfighter/b/q;I)V
    .locals 4

    iget-object v0, p1, Lcom/tweber/stickfighter/b/q;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tweber/stickfighter/b/k;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p1, Lcom/tweber/stickfighter/b/q;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/b/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tweber/stickfighter/b/p;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/b/p;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/tweber/stickfighter/b/p;

    iget-object v1, p0, Lcom/tweber/stickfighter/b/k;->a:Lcom/tweber/stickfighter/h/v;

    iget-object v2, p0, Lcom/tweber/stickfighter/b/k;->a:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tweber/stickfighter/c/a;->a()I

    move-result v2

    sub-int/2addr v2, p2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p1, Lcom/tweber/stickfighter/b/q;->a:Landroid/widget/ImageView;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/tweber/stickfighter/b/p;-><init>(Lcom/tweber/stickfighter/b/k;Lcom/tweber/stickfighter/h/v;ILandroid/widget/ImageView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/b/p;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, p1, Lcom/tweber/stickfighter/b/q;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/tweber/stickfighter/b/q;->itemView:Landroid/view/View;

    new-instance v1, Lcom/tweber/stickfighter/b/l;

    invoke-direct {v1, p0, p1}, Lcom/tweber/stickfighter/b/l;-><init>(Lcom/tweber/stickfighter/b/k;Lcom/tweber/stickfighter/b/q;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/tweber/stickfighter/b/q;->itemView:Landroid/view/View;

    new-instance v1, Lcom/tweber/stickfighter/b/m;

    invoke-direct {v1, p0, p1}, Lcom/tweber/stickfighter/b/m;-><init>(Lcom/tweber/stickfighter/b/k;Lcom/tweber/stickfighter/b/q;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/b/k;->a:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tweber/stickfighter/c/a;->a()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/tweber/stickfighter/b/q;

    invoke-virtual {p0, p1, p2}, Lcom/tweber/stickfighter/b/k;->a(Lcom/tweber/stickfighter/b/q;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/tweber/stickfighter/b/k;->a(Landroid/view/ViewGroup;I)Lcom/tweber/stickfighter/b/q;

    move-result-object v0

    return-object v0
.end method

.method public onEvent(Lcom/tweber/stickfighter/f/d;)V
    .locals 0

    return-void
.end method

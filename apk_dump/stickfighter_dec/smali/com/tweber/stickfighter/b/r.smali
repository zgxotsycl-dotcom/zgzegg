.class public Lcom/tweber/stickfighter/b/r;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:I

.field private c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;ILandroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/tweber/stickfighter/b/r;->a:Ljava/util/ArrayList;

    iput p2, p0, Lcom/tweber/stickfighter/b/r;->b:I

    invoke-direct {p0, p3}, Lcom/tweber/stickfighter/b/r;->a(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/b/r;->c:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic a(Lcom/tweber/stickfighter/b/r;)I
    .locals 1

    iget v0, p0, Lcom/tweber/stickfighter/b/r;->b:I

    return v0
.end method

.method private a(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-static {p1}, Lcom/tweber/stickfighter/j/d;->c(Landroid/app/Activity;)I

    move-result v0

    iget v1, p0, Lcom/tweber/stickfighter/b/r;->b:I

    div-int/2addr v0, v1

    int-to-float v1, v0

    invoke-static {p1}, Lcom/tweber/stickfighter/j/d;->a(Landroid/app/Activity;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/b/r;->c:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/tweber/stickfighter/b/r;->c:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, Lcom/tweber/stickfighter/b/r;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic a(Lcom/tweber/stickfighter/b/r;Lcom/tweber/stickfighter/h/v;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tweber/stickfighter/b/r;->a(Lcom/tweber/stickfighter/h/v;)V

    return-void
.end method

.method static synthetic a(Lcom/tweber/stickfighter/b/r;Lcom/tweber/stickfighter/h/v;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tweber/stickfighter/b/r;->a(Lcom/tweber/stickfighter/h/v;Landroid/content/Context;)V

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

    const v1, 0x7f05005a

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/tweber/stickfighter/b/u;

    invoke-direct {v1, p0, p1}, Lcom/tweber/stickfighter/b/u;-><init>(Lcom/tweber/stickfighter/b/r;Lcom/tweber/stickfighter/h/v;)V

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
.method public a(Landroid/view/ViewGroup;I)Lcom/tweber/stickfighter/b/w;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tweber/stickfighter/b/w;

    invoke-direct {v1, v0}, Lcom/tweber/stickfighter/b/w;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lcom/tweber/stickfighter/b/w;I)V
    .locals 3

    iget-object v0, p0, Lcom/tweber/stickfighter/b/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/v;

    iget-object v1, p1, Lcom/tweber/stickfighter/b/w;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tweber/stickfighter/b/r;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p1, Lcom/tweber/stickfighter/b/w;->itemView:Landroid/view/View;

    new-instance v2, Lcom/tweber/stickfighter/b/s;

    invoke-direct {v2, p0, v0}, Lcom/tweber/stickfighter/b/s;-><init>(Lcom/tweber/stickfighter/b/r;Lcom/tweber/stickfighter/h/v;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lcom/tweber/stickfighter/b/w;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/v;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/tweber/stickfighter/b/v;

    iget-object v2, p1, Lcom/tweber/stickfighter/b/w;->a:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v0, v2}, Lcom/tweber/stickfighter/b/v;-><init>(Lcom/tweber/stickfighter/b/r;Lcom/tweber/stickfighter/h/v;Landroid/widget/ImageView;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/tweber/stickfighter/b/v;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, p1, Lcom/tweber/stickfighter/b/w;->c:Landroid/view/View;

    new-instance v2, Lcom/tweber/stickfighter/b/t;

    invoke-direct {v2, p0, v0}, Lcom/tweber/stickfighter/b/t;-><init>(Lcom/tweber/stickfighter/b/r;Lcom/tweber/stickfighter/h/v;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/b/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/tweber/stickfighter/b/w;

    invoke-virtual {p0, p1, p2}, Lcom/tweber/stickfighter/b/r;->a(Lcom/tweber/stickfighter/b/w;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/tweber/stickfighter/b/r;->a(Landroid/view/ViewGroup;I)Lcom/tweber/stickfighter/b/w;

    move-result-object v0

    return-object v0
.end method

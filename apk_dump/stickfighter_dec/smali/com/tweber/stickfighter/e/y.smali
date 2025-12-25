.class Lcom/tweber/stickfighter/e/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/e/v;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/e/v;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/e/y;->a:Lcom/tweber/stickfighter/e/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/e/y;->a:Lcom/tweber/stickfighter/e/v;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/e/v;->dismiss()V

    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/tweber/stickfighter/f/g;

    invoke-direct {v1}, Lcom/tweber/stickfighter/f/g;-><init>()V

    invoke-virtual {v0, v1}, La/a/a/c;->c(Ljava/lang/Object;)V

    return-void
.end method

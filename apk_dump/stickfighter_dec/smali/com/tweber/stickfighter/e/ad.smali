.class Lcom/tweber/stickfighter/e/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/e/ab;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/e/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/e/ad;->a:Lcom/tweber/stickfighter/e/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/e/ad;->a:Lcom/tweber/stickfighter/e/ab;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/e/ab;->dismiss()V

    return-void
.end method

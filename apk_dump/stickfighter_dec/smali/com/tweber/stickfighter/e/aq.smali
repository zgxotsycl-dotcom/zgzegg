.class Lcom/tweber/stickfighter/e/aq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/e/ao;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/e/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/e/aq;->a:Lcom/tweber/stickfighter/e/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/e/aq;->a:Lcom/tweber/stickfighter/e/ao;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/e/ao;->dismiss()V

    return-void
.end method

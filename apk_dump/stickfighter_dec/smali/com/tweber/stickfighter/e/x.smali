.class Lcom/tweber/stickfighter/e/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/e/v;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/e/v;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/e/x;->a:Lcom/tweber/stickfighter/e/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/e/x;->a:Lcom/tweber/stickfighter/e/v;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/e/v;->dismiss()V

    return-void
.end method

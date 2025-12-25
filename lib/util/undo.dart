class UndoEntry {
  final String label;
  final void Function() undo;
  final void Function() redo;
  UndoEntry(this.label, this.undo, this.redo);
}

class UndoStack {
  final List<UndoEntry> _stack = [];
  int _index = -1; // points at last applied action

  bool get canUndo => _index >= 0;
  bool get canRedo => _index < _stack.length - 1;

  void push(UndoEntry entry) {
    if (canRedo) {
      _stack.removeRange(_index + 1, _stack.length);
    }
    _stack.add(entry);
    _index = _stack.length - 1;
  }

  void undo() {
    if (!canUndo) return;
    final e = _stack[_index];
    e.undo();
    _index -= 1;
  }

  void redo() {
    if (!canRedo) return;
    final e = _stack[_index + 1];
    e.redo();
    _index += 1;
  }
}


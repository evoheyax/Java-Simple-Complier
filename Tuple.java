
public class Tuple {
	AATExpression tree_;
	Type type_;
	
	public Tuple(AATExpression tree, Type type) {
		tree_ = tree;
		type_ = type;
	}
	
	public AATExpression getTree() {
		return tree_;
	}
	
	public Type getType() {
		return type_;
	}
}

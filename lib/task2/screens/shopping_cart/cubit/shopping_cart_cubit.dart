import 'package:bloc/bloc.dart';
import 'package:tasks/task2/screens/shopping_cart/model/cart_model.dart';

part 'shopping_cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartState([]));

  void addToCart(CartItemModel item) {
    final updatedItems = [...state.items, item];
    emit(CartState(updatedItems));
  }

  void removeFromCart(String itemId) {
    final updatedItems = state.items.where((item) => item.id != itemId).toList();
    emit(CartState(updatedItems));
  }
}
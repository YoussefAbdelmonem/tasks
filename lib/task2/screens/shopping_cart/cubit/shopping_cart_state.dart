part of 'shopping_cart_cubit.dart';


abstract class CartEvent {}

class AddToCartEvent extends CartEvent {
  final CartItemModel item;

  AddToCartEvent(this.item);
}

class RemoveFromCartEvent extends CartEvent {
  final String itemId;

  RemoveFromCartEvent(this.itemId);
}

class CartState {
  final List<CartItemModel> items;

  CartState(this.items);
}


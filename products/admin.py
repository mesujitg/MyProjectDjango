from django.contrib import admin
from products.models import Product


class ProductAdmin(admin.ModelAdmin):
    list_display = ('name', 'brand', 'price', 'features', 'qty')


admin.site.register(Product, ProductAdmin)


from django.contrib import admin
from .models import Users, Subscriptions, Views, Comments, VideoLikes, Videos
# Register your models here.
admin.site.register(Users)
admin.site.register(Subscriptions)
admin.site.register(Views)
admin.site.register(Comments)
admin.site.register(Videos)
admin.site.register(VideoLikes)

from django.db import models
from django.contrib.auth.models import AbstractBaseUser, BaseUserManager
import uuid


# Create your models here.
class MyAccountManager(BaseUserManager):
    def create_user(self, email, username, password=None):
        if not email:
            raise ValueError("Must have email")
        if not username:
            raise ValueError("must have username")

        user = self.model(
            email=self.normalize_email(email),
            username=username,
        )

        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, email, username, password):
        user = self.create_user(
            email=self.normalize_email(email),
            password=password,
            username=username,
        )
        user.is_admin = True
        user.is_staff = True
        user.is_superuser = True
        user.save(using=self._db)


class Users(AbstractBaseUser):
    
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    firstname = models.CharField(max_length=255)
    lastname = models.CharField(max_length=255)
    username = models.CharField(max_length=255, unique=True)
    email = models.EmailField(max_length=255, unique=True)
    password = models.CharField(max_length=255)
    # avatar default value from original repo
    avatar = models.CharField(
        max_length=300,
        default="https://res.cloudinary.com/douy56nkf/image/upload/v1594060920/defaults/txxeacnh3vanuhsemfc8.png"
    )
    # cover default value from original repo
    cover = models.CharField(
        max_length=300,
        default="https://res.cloudinary.com/douy56nkf/image/upload/v1594060919/defaults/xcdnczly5nuwpibolagv.png"
    )
    channelDescription = models.CharField(
        max_length=500,
        blank=True,
        null=True
    )
    isAdmin = models.BooleanField(blank=True, null=True, default=True)
    createdAt = models.DateTimeField(auto_now_add=True, editable=False)
    updatedAt = models.DateTimeField(auto_now_add=True)
    is_admin = models.BooleanField(default=False)
    is_staff = models.BooleanField(default=False)
    is_active = models.BooleanField(default=True)
    is_superuser = models.BooleanField(default=False)

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['username', ]

    objects = MyAccountManager()

    def __str__(self):
        return f"{self.email} and {self.id}"

    def has_perm(self, perm, obj=None):
        return self.is_admin

    def has_module_perms(self, app_label):
        return True


class Videos(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    title = models.CharField(max_length=255)
    description = models.CharField(max_length=500, blank=True, null=True)
    url = models.CharField(max_length=300)
    thumbnail = models.CharField(max_length=300)
    createdAt = models.DateTimeField(auto_now_add=True)
    updatedAt = models.DateTimeField(auto_now_add=True)
    # relation with User table One to many
    user = models.ForeignKey(
        'Users',
        on_delete=models.CASCADE,
        related_name='user_videos'
    )


class VideoLikes(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    like = models.IntegerField()
    createdAt = models.DateTimeField(auto_now_add=True)
    updatedAt = models.DateTimeField(auto_now_add=True)
    # relation with Videos One to many
    video = models.ForeignKey(
        'Videos',
        on_delete=models.CASCADE,
        related_name='likes'
    )
    # relation with User One to many
    user = models.ForeignKey(
        'Users',
        on_delete=models.CASCADE,
        related_name='user_videolikes'
    )


class Subscriptions(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    subscriber = models.UUIDField()
    createdAt = models.DateTimeField(auto_now_add=True)
    updatedAt = models.DateTimeField(auto_now_add=True)
    # relation with User One to many
    subscribeTo = models.ForeignKey(
        'Users',
        on_delete=models.CASCADE,
        related_name='user_subscriptions'
    )


class Comments(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    text = models.CharField(max_length=500, blank=True, null=True)
    createdAt = models.DateTimeField(auto_now_add=True)
    updatedAt = models.DateTimeField(auto_now_add=True)
    # relation with Videos One to many
    video = models.ForeignKey(
        'Videos',
        on_delete=models.CASCADE,
        related_name='comments'
    )
    # relation with Users One to many
    user = models.ForeignKey(
        'Users',
        on_delete=models.CASCADE,
        related_name='user_comments'
    )


class Views(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    createdAt = models.DateTimeField(auto_now_add=True)
    updatedAt = models.DateTimeField(auto_now_add=True)
    # relation with Videos One to many
    video = models.ForeignKey(
        'Videos',
        on_delete=models.CASCADE,
        related_name='views'
    )
    # relation with Users One to many
    user = models.ForeignKey(
        'Users',
        on_delete=models.CASCADE,
        related_name='user_views'
    )

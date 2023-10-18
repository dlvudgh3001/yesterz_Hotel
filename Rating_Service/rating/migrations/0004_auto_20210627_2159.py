# Generated by Django 3.2 on 2021-06-27 21:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('rating', '0003_commentlikes_hotellikes_likecomment'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='commentlikes',
            name='user_uid',
        ),
        migrations.AddField(
            model_name='commentlikes',
            name='avatar',
            field=models.CharField(blank=True, max_length=30),
        ),
        migrations.AddField(
            model_name='commentlikes',
            name='username',
            field=models.CharField(default=1, max_length=255),
            preserve_default=False,
        ),
    ]

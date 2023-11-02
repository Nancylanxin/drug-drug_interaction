# Generated by Django 3.2.12 on 2023-11-02 02:05

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Interaction',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('drug1', models.CharField(max_length=100)),
                ('drug2', models.CharField(max_length=100)),
                ('interaction', models.CharField(max_length=200)),
            ],
            options={
                'verbose_name': '漏洞分类',
                'verbose_name_plural': '漏洞分类',
            },
        ),
    ]
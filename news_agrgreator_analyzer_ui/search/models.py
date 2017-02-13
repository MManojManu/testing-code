from __future__ import unicode_literals

from django.db import models

# Create your models here.
from djangosphinx import SphinxSearch


class SphinxModel(models.Model):
    search = SphinxSearch('newsdb')


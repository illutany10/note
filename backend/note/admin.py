from django.contrib import admin

from .models import Note


class NoteAdmin(admin.ModelAdmin):
    list_display = ["title", "content", "owner", "created_at", "updated_at"]

    class Meta:
        model = Note


admin.site.register(Note, NoteAdmin)

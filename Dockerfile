FROM odoo:17

USER root

# Copiar los módulos personalizados
COPY extra-addons /mnt/extra-addons

# Dar permisos
RUN chown -R odoo:odoo /mnt/extra-addons

USER odoo

# Ejecutar Odoo con los módulos extra
CMD ["odoo", "-d", "database", "--addons-path=/usr/lib/python3/dist-packages/odoo/addons,/mnt/extra-addons"]


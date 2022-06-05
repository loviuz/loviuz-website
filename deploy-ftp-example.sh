#!/bin/sh

hugo --gc --minify
rclone sync --interactive --sftp-host sftp.example.com --sftp-user www-data --sftp-password obscured_password public/ :sftp:/domains/tuosito.it/public_html/

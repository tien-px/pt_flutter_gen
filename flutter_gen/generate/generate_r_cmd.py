# coding=utf-8

from os import read
from flutter_gen.config.config_cmd import ConfigCommand
from ..core.command import Command
from jinja2 import Environment, PackageLoader
from ..utils.str_helpers import snake_to_camel, plural_to_singular
from ..utils.file_helpers import *
from ..utils.json_helpers import get_keys
from ..utils.print import *
from ..utils.file_helpers import create_file, is_file_path_exist
import os


class LocaleItem(object):
    def __init__(self, name, key):
        self.name = name
        self.key = key


class ImageFile(object):
    def __init__(self, image_name, image_file):
        self.image_name = image_name
        self.image_file = image_file


class FontData(object):
    def __init__(self, name, family_name):
        self.name = name
        self.family_name = family_name


class GenerateRCommand(Command):
    def __init__(self):
        super(GenerateRCommand, self).__init__()

    def run(self):
        pi = PrintInfo(name="generate localization - images - colors")
        pi.start()
        # Localization
        localization_items = []
        translations_path = "assets/i18n"
        try:
            for file in os.listdir(translations_path):
                if file.endswith(".json"):
                    name = os.path.basename(file)
                    if name == "en-US.json":
                        json = read_json("%s/en-US.json" % translations_path)
                        break
                    else:
                        json = read_json("%s/%s" % (translations_path, file))
        except FileNotFoundError:
            print_error("i18n file not found")
            return
        val_names = []
        key_paths = []
        get_keys(json, val_names, separator="_")
        get_keys(json, key_paths, separator=".")
        for i in range(len(val_names)):
            localization_items.append(LocaleItem(val_names[i], key_paths[i]))

        # Images
        image_path = "assets/images"
        path = "%s/%s" % (os.getcwd(), image_path)
        list_image_files = []
        if not is_file_path_exist(path):
            print_error("Invalid folder")
            return
        for file in os.listdir(path):
            if file.endswith(".png") or file.endswith(".jpg") or file.endswith(".svg"):
                file_name = os.path.splitext(file)[0].replace("-", "_")
                list_image_files.append(
                    ImageFile(snake_to_camel(file_name), file))
        if not list_image_files:
            print_error("Can't find any image files")

        # Colors
        colors = []
        with open("./assets/color/colors.txt", 'r') as f:
            for line in f:
                color = line.strip().replace('#', '').upper()
                colors.append(color)
        colors = list(dict.fromkeys(colors))

        # Fonts
        fonts = []
        pubspec_text = read("pubspec.yaml")
        pubspec_data = yaml.safe_load(pubspec_text)
        flutter = pubspec_data["flutter"]
        if "fonts" in flutter:
            for font in flutter["fonts"]:
                family_name = font["family"]
                name = family_name[0].lower() + family_name[1:]
                fonts.append(FontData(name, family_name))
        else:
            print_error("No fonts available")

        # Write file
        env = Environment(
            loader=PackageLoader("flutter_gen_templates", "gen"),
            trim_blocks=True,
            lstrip_blocks=True
        )
        template = env.get_template("r.dart")
        content = template.render(
            image_folder=image_path,
            files=list_image_files,
            localization_items=localization_items,
            colors=colors,
            fonts=fonts,
        )

        file_path = create_file(
            content, "r", "g.dart", "lib/generated")
        pi.end()

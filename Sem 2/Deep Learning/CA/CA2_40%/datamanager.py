import os
import shutil


def split_data(train_ratio, root_dir_str, data_dir_str, image_dir_str, train_dir_str, test_dir_str):
    TRAIN_RATIO = train_ratio

    data_dir = os.path.join(root_dir_str, data_dir_str)
    images_dir = os.path.join(data_dir, image_dir_str)
    train_dir = os.path.join(data_dir, train_dir_str)
    test_dir = os.path.join(data_dir, test_dir_str)

    if os.path.exists(train_dir):
        shutil.rmtree(train_dir)
    if os.path.exists(test_dir):
        shutil.rmtree(test_dir)

    os.makedirs(train_dir)
    os.makedirs(test_dir)

    classes = os.listdir(images_dir)

    for c in classes:

        class_dir = os.path.join(images_dir, c)

        images = os.listdir(class_dir)

        n_train = int(len(images) * TRAIN_RATIO)

        train_images = images[:n_train]
        test_images = images[n_train:]

        os.makedirs(os.path.join(train_dir, c), exist_ok=True)
        os.makedirs(os.path.join(test_dir, c), exist_ok=True)

        for image in train_images:
            image_src = os.path.join(class_dir, image)
            image_dst = os.path.join(train_dir, c, image)
            shutil.copyfile(image_src, image_dst)

        for image in test_images:
            image_src = os.path.join(class_dir, image)
            image_dst = os.path.join(test_dir, c, image)
            shutil.copyfile(image_src, image_dst)

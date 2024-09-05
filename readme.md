# File Organization Script

This Bash script organizes files in a specified directory into subdirectories based on their file types. It creates directories for PDFs, images, text files, and other file types, then moves the files into the corresponding directories.

## Features

- **Organize Files**: Sort files into directories based on their extension.
- **Create Directories**: Automatically creates directories if they don't exist.
- **Flexible**: Works with various file types including PDFs, images, and text files.

## Installation

1. **Clone the Repository**:
    ```bash
    git clone https://github.com/Mohamedahmed2k/File-Organization-Script.git
    ```

2. **Navigate to the Directory**:
    ```bash
    cd File-Organization-Script
    ```

3. **Make the Script Executable**:
    ```bash
    chmod +x Bash.sh
    ```

## Usage

1. **Run the Script**:
    ```bash
    ./Bash.sh /path/to/directory
    ```
    Replace `/path/to/directory` with the path to the directory you want to organize.

## Script Functions

- **`path_exi`**: Checks if the provided path exists.
- **`dirc_in_path`**: Verifies if directories are present in the given path.
- **`search_for_exit`**: Searches for files with specific extensions and moves them to corresponding subdirectories.
- **`move_dirc`**: Creates directories if they do not exist and moves files into them.

## Example

Given a directory `/home/user/docs` with files:
- `report.pdf`
- `photo.jpg`
- `notes.txt`
- `archive.zip`

Running the script will:
- Move `report.pdf` to `/home/user/docs/Files_pdf/`
- Move `photo.jpg` to `/home/user/docs/Files_jpg/`
- Move `notes.txt` to `/home/user/docs/Files_txt/`
- Move `archive.zip` to `/home/user/docs/Files_misc/`

## Notes

- Ensure the script has execute permissions:
    ```bash
    chmod +x Bash.sh
    ```
- The script moves directories as well as files. Ensure you provide a valid path.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

- **Author**: Mohamed Ahmed Abdalaziem
- **GitHub**: [Mohamedahmed2k](https://github.com/Mohamedahmed2k)

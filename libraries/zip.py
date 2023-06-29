import zipfile

def extract_archive(archive: str, excelfile: str):
    with zipfile.ZipFile(f"{archive}", mode="r") as archive:
        archive.extract(f"{excelfile}", path="../files")

if __name__ == "__main__":
    extract_archive("localization.zip", "localization.xlsx")


import torch
def botSort(file_path):
    """Runs a shell command and handles errors."""
    try:
        print(f"Executing: {command}")
        result = subprocess.run(command, shell=True, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        print(result.stdout)
        if result.stderr:
            print("Error:", result.stderr)
    except subprocess.CalledProcessError as e:
        print(f"Command '{command}' failed with exit status {e.returncode}")
        print(e.stderr)

if __name__ == "__main__":
    csv_file = 'inference_result.csv'
    botSort(csv_file)
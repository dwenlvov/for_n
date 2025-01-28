# MLOps/DataOps
## Результат обучения
```bash
(base) (venv) denislvov@192 mlflow_example % mlflow run https://github.com/sachua/mlflow-example.git -P alpha=0.42
2025/01/28 16:09:02 INFO mlflow.projects.utils: === Fetching project from https://github.com/sachua/mlflow-example.git into /var/folders/98/0937qnz53jgg4bylz5jyflnr0000gn/T/tmp5ksogwsj ===
2025/01/28 16:09:04 INFO mlflow.projects.utils: === Created directory /var/folders/98/0937qnz53jgg4bylz5jyflnr0000gn/T/tmplz6bf74e for downloading remote URIs passed to arguments of type 'path' ===
2025/01/28 16:09:04 INFO mlflow.projects.backend.local: === Running command 'source /opt/homebrew/Caskroom/miniconda/base/bin/../etc/profile.d/conda.sh && conda activate mlflow-488264a1b079104fc741d90ac0526d194315a1c4 1>&2 && python train.py 0.42 0.1' in run with ID '4ccd2abda6f145e3beb2e0b8d5d47d06' ===
Elasticnet model (alpha=0.420000, l1_ratio=0.100000):
  RMSE: 0.7917149365733894
  MAE: 0.6177463381374034
  R2: 0.19042414117747397
2025/01/28 16:09:06 INFO mlflow.projects: === Run (ID '4ccd2abda6f145e3beb2e0b8d5d47d06') succeeded ===
```

## Тест
```bash
denislvov@MacBook-Pro-Denis ~ % curl -X POST -H "Content-Type: application/json; format=pandas-split" \
--data '{"columns":["fixed acidity", "volatile acidity", "citric acid", "residual sugar", "chlorides", "free sulfur dioxide", "total sulfur dioxide", "density", "pH", "sulphates", "alcohol"], "data": [[12.8, 0.029, 0.48, 0.98, 6.2, 29.0, 3.33, 1.2, 0.39, 75.0, 0.66]]}' \
http://127.0.0.1:1234/invocations
[4.003823159595421]%
```

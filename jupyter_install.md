# install jupyter

1. change your env
```bash
conda activate lib
```

2. install by conda
```bash
conda install jupyter notebook
```

3. generate the config
```bash
jupyter notebook --generate-config
```

4. in `ipython` to set
```bash
ipython
```
```ipython
from jupyter_server.auth import passwd
passwd()

```
copy the Out[2].

5. change the config
open the config
```bash
vim ~/.jupyter/jupyter_notebook_config.py
```

insert the following code in the bottom of the file.

```python
c.NotebookApp.allow_remote_access = True
c.NotebookApp.ip='*'
c.NotebookApp.password = u'argon2:*******'
c.NotebookApp.notebook_dir = '/home/*******(your own dir)'
c.NotebookApp.open_browser = False
c.NotebookApp.port = 8888

```

6. start the jupyter notebook
```bash
jupyter notebook
```
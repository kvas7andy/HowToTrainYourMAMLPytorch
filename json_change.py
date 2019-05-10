import json
import os

wdir = os.getcwd()
for file in os.listdir(path=os.path.join(wdir, 'experiment_config')):
    #print(file)
    f_str = os.path.join(wdir, 'experiment_config', file)
    with open(f_str, "r") as f:
        json_str = f.read()
    #print(json_str)
    json_data = json.loads(json_str)
    ##UPDATE HERE
    json_data.update({'eval_only': True})
    ##
    #print(json_data)
    with open(f_str, "w") as f:
        json.dump(json_data, f)
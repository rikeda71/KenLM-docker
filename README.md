# KenLM-docker

This repo provide the environment of execution [KenLM](https://github.com/kpu/kenlm).
KenLM provide a n-gram language model (is not neural language model).


## Requirements

- Docker


## Usage

### build docker image & train language model

```sh
$ make init-kenlm-docker  # wait a minute
$ make train-language-model N=3 \  # if N=3, training 3-gram language model
    INPUT_PATH=`a path of training target sentences` \
    OUTPUT_PATH=`a path where trained language model is output`
```

### predict sentence probabilities with n-gram language model

- use kenlm python wrapper

```sh
$ make predict-with-language-model \
    OUTPUT_PATH=`a path of trained language model` \
    SENTENCE=`predicting target sentence (For example, "this is a pen .")`
```


## References

- [KenLM](https://github.com/kpu/kenlm)

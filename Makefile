N = 3
INPUT_FILE = target.txt
OUTPUT_PATH = kenlm_model/model.lm
SENTENCE = "This is a pen ."

init-kenlm-docker:
	docker build --network=host --no-cache -t kenlm-image:latest .

train-language-model:
	docker run --rm -i -v ${PWD}:/home kenlm-image /kenlm/build/bin/lmplz -o ${N} < ${INPUT_PATH} > ${OUTPUT_PATH}

predict-with-language-model:
	docker run -i --rm -v ${PWD}:/home kenlm-image /home/predict.py /home/${OUTPUT_PATH} ${SENTENCE}

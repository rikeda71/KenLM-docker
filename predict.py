import argparse

import kenlm


parser = argparse.ArgumentParser()
parser.add_argument("lang_model")
parser.add_argument("sentence")
args = parser.parse_args()

model = kenlm.Model(args.lang_model)
print(model.score(args.sentence, bos=True, eos=True))

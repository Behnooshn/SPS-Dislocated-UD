# SPS Dislocated UD Model

This repository contains a manually corrected Universal Dependencies dataset for spoken Persian, focused on the dependency relation `dislocated`, and a UDPipe model trained on this data.

## Contents

- `data/train.conllu`: training data
- `data/dev.conllu`: development data
- `data/challengeGoldtest-Dislocated.conllu`: challenge test data
- `models/sps_dislocated_model.udpipe`: trained UDPipe model
- `scripts/annotate_with_model.R`: simple annotation script

## Intended use

The model is intended for semi-automatic candidate extraction of possible `dislocated` constructions in spoken Persian. The predictions should be manually verified.

## Main result

On the challenge test set, the model obtained:

- Precision: 0.500
- Recall: 0.261
- F1-score: 0.343

## Citation

Please cite this repository if you use the data or the model.

## License

Add your license here before publishing.

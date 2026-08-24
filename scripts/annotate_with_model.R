library(udpipe)

model_path <- "models/sps_dislocated_model.udpipe"
input_text <- "input.txt"
output_file <- "predictions.conllu"

model <- udpipe_load_model(model_path)
texts <- readLines(input_text, encoding = "UTF-8", warn = FALSE)
texts <- texts[nchar(trimws(texts)) > 0]

pred <- udpipe_annotate(
  model,
  x = texts,
  doc_id = paste0("sent-", seq_along(texts)),
  tokenizer = "generic_tokenizer",
  tagger = "default",
  parser = "default"
)

writeLines(as_conllu(pred), output_file, useBytes = TRUE)
cat("Saved:", output_file, "\n")

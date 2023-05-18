consolex <- function(..., ts = FALSE) {
  # The 'manouver' below is to remove leading zeroes in the hour number.
  if(ts) {
    t <- Sys.time()
    out_txt <- paste0(format(t, '%m/%d '), as.integer(format(t, '%H')), format(t, ':%M'), ' ', ...)
  } else
    out_txt <- paste0(...)

  cat(out_txt)
}

console <- function(..., ts = TRUE) {
  # ts: Se deseja acrescentar datahora.
  consolex(paste0(..., '\n'), ts = ts)
}

const statuses = {
  open: 'success',
  open_adapted: 'success',
  partial: 'warning',
  unknown: 'warning',
  closed: 'error'
};

export function colorForStatus(status)  {
  return statuses[status];
}

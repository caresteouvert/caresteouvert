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

export function rawColorForStatus(status, theme) {
  const statuses = {
    open: theme.success,
    open_adapted: theme.success,
    partial: '#9E9E9E',
    unknown: '#9E9E9E',
    closed: theme.error
  };
  return statuses[status];
}

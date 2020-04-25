const CONTRIBUTIONS_LOCAL_STORAGE = "recentContributions";

export function readContributionFromStorage() {
  try {
    return JSON.parse(localStorage.getItem(CONTRIBUTIONS_LOCAL_STORAGE))
    .filter(c => Date.now() - (c[2]*1000) <= 3600000);
  }
  catch(e) {
    return [];
  }
}

export function pushContribution(contrib) {
  // Update local storage
  const next = readContributionFromStorage();
  next.push(contrib);
  localStorage.setItem(CONTRIBUTIONS_LOCAL_STORAGE, JSON.stringify(next));
  return next;
}

export function getRecentContribution(fid) {
  return readContributionFromStorage().find(c => c[0] === fid);
}

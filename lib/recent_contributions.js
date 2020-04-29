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
  const mycontrib = contrib.slice(0);

  // Update local storage
  const next = readContributionFromStorage();
  const cId = next.findIndex(c => c[0] === mycontrib[0]);
  if(cId >= 0) {
    if(mycontrib.length === 4) {
      if(next[cId].length === 3) {
        next[cId].push({});
      }
      mycontrib[3] = Object.assign({}, next[cId][3], mycontrib[3]);
      if(mycontrib[1] === 'same') {
        mycontrib[1] = next[cId][1];
      }
    }
    else if(mycontrib.length === 3 && next[cId].length === 4) {
      mycontrib.push(next[cId][3]);
    }

    next[cId] = mycontrib;
  }
  else {
    next.push(mycontrib);
  }

  localStorage.setItem(CONTRIBUTIONS_LOCAL_STORAGE, JSON.stringify(next));
  return next;
}

export function getRecentContribution(fid) {
  return readContributionFromStorage().find(c => c[0] === fid);
}

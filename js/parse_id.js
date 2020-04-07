const types = {
  n: 'node',
  w: 'way',
  r: 'relation'
};
export default function(id) {
  const type = types[id[0]];
  return { type, id: id.substring(1)  };
}

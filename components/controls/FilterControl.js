// Control implemented as ES6 class
class HelloWorldControl {
  onAdd(map) {
    this._map = map;
    this._container = document.createElement('div');
    this._container.className = 'mapboxgl-ctrl mapboxgl-ctrl-group';
    const button = document.createElement('button');
    button.setAttribute('type', 'button');
    button.addEventListener('click', this.filterDeliver.bind(this))
    const span = document.createElement('span');
    button.appendChild(span);
    span.innerText = 'D';
    this._container.appendChild(button);
    return this._container;
  }

  filterDeliver() {
    const layers =  this._map.getStyle().layers
    layers.filter(l => /poi/.test(l.id) ).map((layer) => {
      const filters = this._map.getFilter(layer.id)
      if (filters.some(f => f[1] === 'delivery')) {
        this._map.setFilter(layer.id, filters.filter(f => f.length > 1 && f[1] !== 'delivery'))
      } else {
        this._map.setFilter(layer.id, filters.concat([['==', 'delivery', 'yes']]))
      }
    })
  }

  onRemove() {
    this._container.parentNode.removeChild(this._container);
    this._map = undefined;
  }
}

export default HelloWorldControl;
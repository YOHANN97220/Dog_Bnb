import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('town-form');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };

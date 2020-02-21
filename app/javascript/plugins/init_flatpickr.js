import flatpickr from 'flatpickr';

// TEST PRIX
const parseDate = (string) => {
  const pattern = /(\d{2})-(\d{2})-(\d{4})/;
  return new Date(string.replace(pattern,'$3-$2-$1'));
}

const updateCosts = function(days) {
  const costs = document.querySelector('.costs')

  if (costs) {
    let daysElem = document.getElementById('days');
    let totalPriceElem = document.getElementById('total-price');

    let dayRate = JSON.parse(costs.dataset.rate);
    let price = days * dayRate;
    let totalPrice = price;

    daysElem.innerHTML = days;
    totalPriceElem.innerHTML = totalPrice;

  }
}

const toggleDateInputs = () => {
  const startDateInput = document.getElementById('booking_start_date');
  const endDateInput = document.getElementById('booking_end_date');
  const costs = document.querySelector('.costs');

  if (startDateInput && endDateInput) {
    const unvailableDates = JSON.parse(document.querySelector('.widget-content').dataset.unavailable)
    flatpickr(startDateInput, {
      enableTime: false,
      minDate: 'today',
      dateFormat: 'd-m-Y',
      disable: unvailableDates,
      autoclose: true,
      onChange: function(selectedDates, selectedDate) {
        if (selectedDate === '') {
          // test prix
          costs.classList.remove('is-visible');
          endDateInput.disabled = true;
        }
        let minDate = selectedDates[0];
        minDate.setDate(minDate.getDate());
        endDateCalendar.set('minDate', minDate);
        endDateInput.disabled = false;
      }
    });
    const endDateCalendar =
      flatpickr(endDateInput, {
        dateFormat: 'd-m-Y',
        disable: unvailableDates,
        autoclose: true,
        onChange: function(_, selectedDate) {
          if (selectedDate === '') {
            costs.classList.remove('is-visible');
          } else {
            let startDate = parseDate(startDateInput.value);
            let endDate = parseDate(endDateInput.value)
            // TEST PRIX
            let days = Math.ceil((endDate - startDate) / (1000 * 3600 * 24));
            updateCosts(days);

            costs.classList.add('is-visible');
          }
        },
      });
  }
};

export { toggleDateInputs }

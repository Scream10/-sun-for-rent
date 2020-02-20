import flatpickr from 'flatpickr';

const toggleDateInputs = () => {
  const startDateInput = document.getElementById('booking_start_date');
  const endDateInput = document.getElementById('booking_end_date');

  if (startDateInput && endDateInput) {
    const unvailableDates = JSON.parse(document.querySelector('.widget-content').dataset.unavailable)
    flatpickr(startDateInput, {
      enableTime: true,
      minDate: 'today',
      dateFormat: 'd-m-Y',
      disable: unvailableDates,
      onChange: function(selectedDates, selectedDate) {
        if (selectedDate === '') {
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
      });
  }
};

export { toggleDateInputs }

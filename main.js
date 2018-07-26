const hiddenInput = document.getElementById('data');
const checkBoxes = document.querySelectorAll('.item-checkbox');

let itemsIdToDelete = [];

// creating a loop, to listen to clicks
    checkBoxes.forEach(function (checkBox) {
        checkBox.addEventListener('click', checkBoxClickHandler);
    });

// creating a function, to send or delete id from array, if it's checked
    function checkBoxClickHandler(e) {
        const isChecked = e.srcElement.checked;
        if (isChecked) {
            itemsIdToDelete.push(e.srcElement.value);
        } else {
            itemsIdToDelete.splice(itemsIdToDelete.indexOf(e.srcElement.value),1);
        }
        hiddenInput.value = itemsIdToDelete;
    };
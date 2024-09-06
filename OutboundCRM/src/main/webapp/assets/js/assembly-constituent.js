/**
 * 
 */
// Example data, replace this with your API data or other source
const lokSabhaData = [
    { id: 1, name: 'Lok Sabha 1' },
    { id: 2, name: 'Lok Sabha 2' },
    // more data...
];

const vidhanSabhaData = [
    { id: 1, name: 'Vidhan Sabha 1' },
    { id: 2, name: 'Vidhan Sabha 2' },
    // more data...
];

const subDivisionData = [
    { id: 1, name: 'Sub Division 1' },
    { id: 2, name: 'Sub Division 2' },
    // more data...
];

// Function to populate dropdown
function populateDropdown(dropdownId, data) {
    const dropdown = document.getElementById(dropdownId);
    data.forEach(item => {
        const option = document.createElement('option');
        option.value = item.id;
        option.textContent = item.name;
        dropdown.appendChild(option);
    });
}

// Populate all dropdowns
populateDropdown('lokSabhaDropdown', lokSabhaData);
populateDropdown('vidhanSabhaDropdown', vidhanSabhaData);
populateDropdown('subDivisionDropdown', subDivisionData);

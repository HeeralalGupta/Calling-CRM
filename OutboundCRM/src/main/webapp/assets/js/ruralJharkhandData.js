
// Data for Jharkhand's districts, blocks, panchayats, and villages
	const jharkhandData = {
	    'Ranchi': {
	        'Kanke': {
	            'Kanke': ['Ratu', 'Hatia', 'Kanke', 'Pithoria'],
	            'Nagri': ['Nagri', 'Bariatu', 'Gondpur']
	        },
	        'Ormanjhi': {
	            'Ormanjhi': ['Ormanjhi', 'Rajhara', 'Sarai']
	        }
	        // Add more blocks, panchayats, and villages for Ranchi
	    },
	    'Dhanbad': {
	        'Govindpur': {
	            'Govindpur': ['Chirkunda', 'Govindpur', 'Karmatar']
	        },
	        'Tundi': {
	            'Tundi': ['Tundi', 'Gandey', 'Madhuban']
	        }
	        // Add more blocks, panchayats, and villages for Dhanbad
	    },
	    'Jamshedpur': {
	        'Bagbera': {
	            'Bagbera': ['Bagbera', 'Sitaramdera', 'Birsanagar']
	        },
	        'Ghatsila': {
	            'Ghatsila': ['Ghatsila', 'Kandra', 'Dhalbhumgarh']
	        }
	        // Add more blocks, panchayats, and villages for Jamshedpur
	    }
	    // Add more districts, blocks, panchayats, and villages for Jharkhand
	};

	// Populate districts in the district dropdown
	const districtDropdown = document.getElementById('districtDropdown');
	Object.keys(jharkhandData).forEach(district => {
	    const option = document.createElement('option');
	    option.value = district;
	    option.textContent = district;
	    districtDropdown.appendChild(option);
	});

	// Event listener to update block dropdown based on district selection
	districtDropdown.addEventListener('change', function () {
	    const blockDropdown = document.getElementById('blockDropdown');
	    const panchayatDropdown = document.getElementById('panchayatDropdown');
	    const villageDropdown = document.getElementById('villageDropdown');
	    const selectedDistrict = this.value;

	    // Clear existing options
	    blockDropdown.innerHTML = '<option value="">Select Block</option>';
	    panchayatDropdown.innerHTML = '<option value="">Select Panchayat</option>';
	    villageDropdown.innerHTML = '<option value="">Select Village</option>';

	    if (selectedDistrict && jharkhandData[selectedDistrict]) {
	        const blocks = Object.keys(jharkhandData[selectedDistrict]);
	        blocks.forEach(block => {
	            const option = document.createElement('option');
	            option.value = block;
	            option.textContent = block;
	            blockDropdown.appendChild(option);
	        });
	    }
	});

	// Event listener to update panchayat dropdown based on block selection
	document.getElementById('blockDropdown').addEventListener('change', function () {
	    const panchayatDropdown = document.getElementById('panchayatDropdown');
	    const villageDropdown = document.getElementById('villageDropdown');
	    const selectedDistrict = document.getElementById('districtDropdown').value;
	    const selectedBlock = this.value;

	    // Clear existing options
	    panchayatDropdown.innerHTML = '<option value="">Select Panchayat</option>';
	    villageDropdown.innerHTML = '<option value="">Select Village</option>';

	    if (selectedDistrict && selectedBlock && jharkhandData[selectedDistrict][selectedBlock]) {
	        const panchayats = Object.keys(jharkhandData[selectedDistrict][selectedBlock]);
	        panchayats.forEach(panchayat => {
	            const option = document.createElement('option');
	            option.value = panchayat;
	            option.textContent = panchayat;
	            panchayatDropdown.appendChild(option);
	        });
	    }
	});

	// Event listener to update village dropdown based on panchayat selection
	document.getElementById('panchayatDropdown').addEventListener('change', function () {
	    const villageDropdown = document.getElementById('villageDropdown');
	    const selectedDistrict = document.getElementById('districtDropdown').value;
	    const selectedBlock = document.getElementById('blockDropdown').value;
	    const selectedPanchayat = this.value;

	    // Clear existing options
	    villageDropdown.innerHTML = '<option value="">Select Village</option>';

	    if (selectedDistrict && selectedBlock && selectedPanchayat && jharkhandData[selectedDistrict][selectedBlock][selectedPanchayat]) {
	        const villages = jharkhandData[selectedDistrict][selectedBlock][selectedPanchayat];
	        villages.forEach(village => {
	            const option = document.createElement('option');
	            option.value = village;
	            option.textContent = village;
	            villageDropdown.appendChild(option);
	        });
	    }
	});
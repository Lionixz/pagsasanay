// Toggle Sidebar
function toggleSidebar() {
    const sidebar = document.getElementById('sidebar');
    sidebar.classList.toggle('close'); // This will close the sidebar when toggled
}

// Toggle Submenu
function toggleSubMenu(button) {
    const subMenu = button.nextElementSibling;
    const dropdownIcon = button.querySelector('.dropdown-icon');
    subMenu.classList.toggle('show');
    dropdownIcon.classList.toggle('rotated');
}

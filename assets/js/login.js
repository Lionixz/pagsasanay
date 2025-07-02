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

 const togglePassword = document.getElementById('togglePassword');
        const passwordField = document.getElementById('password');

        togglePassword.addEventListener('click', function (e) {
            const type = passwordField.type === 'password' ? 'text' : 'password';
            passwordField.type = type;
            this.classList.toggle('fa-eye-slash');
            this.classList.toggle('fa-eye');
        });

        // Client-side form validation
        document.getElementById('loginForm').addEventListener('submit', function (e) {
            let isValid = true;
            const email = document.getElementById('email').value;
            const password = document.getElementById('password').value;

            // Basic client-side validation
            if (!email || !password) {
                isValid = false;
                alert("Both fields are required.");
            }

            if (!isValid) {
                e.preventDefault(); // Prevent form submission if validation fails
            }
        });
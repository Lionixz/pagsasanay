<!-- includes/footer.php -->
<footer>
    <script>
        // Get the modal
        var modal = document.getElementById("myModal");

        // Get the <span> element that closes the modal
        var closeModalBtn = document.getElementById("closeModalBtn");

        // Function to open the modal
        function openModal() {
            modal.style.display = "block";  // Make the modal visible
        }

        // Function to close the modal
        function closeModal() {
            modal.style.display = "none";  // Hide the modal
        }

        // When the user clicks on <span> (x), close the modal
        closeModalBtn.onclick = function () {
            closeModal();
        }

        // When the page loads, open the modal
        window.onload = function () {
            openModal();  // Show the modal
            setTimeout(function () {
                closeModal();  // Close the modal after 3 seconds
            }, 500000);
        }

        // Optional: Close the modal if the user clicks outside of it
        window.onclick = function (event) {
            if (event.target == modal) {
                closeModal();  // Close the modal if the user clicks outside
            }
        }

    </script>
</footer>

</body>

</html>
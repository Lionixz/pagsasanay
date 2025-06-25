const validation = new JustValidate("#signup");

validation
    .addField("#name", [
        {
            rule: "required",
            errorMessage: "Name is required"
        }
    ])
    .addField("#email", [
        {
            rule: "required",
            errorMessage: "Email is required"
        },
        {
            rule: "email",
            errorMessage: "Email is invalid"
        },
        {
            validator: (value) => () => {
                return fetch("validate-email.php?email=" + encodeURIComponent(value))
                    .then(response => response.json())
                    .then(json => json.available);
            },
            errorMessage: "Email already taken"
        }
    ])
    .addField("#password", [
        {
            rule: "required",
            errorMessage: "Password is required"
        },
        {
            rule: "password",
            errorMessage: "Password is invalid"
        }
    ])
    .addField("#password_confirmation", [
        {
            validator: (value, fields) => value === fields["#password"].elem.value,
            errorMessage: "Passwords should match"
        }
    ])
    .onSuccess(() => {
        document.getElementById("signup").submit();
    });

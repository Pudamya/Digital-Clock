# Digital Clock Web Application

A simple and aesthetically pleasing digital clock web application that displays the current date and time. The clock updates every second and is styled using CSS.

## Project Structure

```
digital-clock/
├── css/
│   └── style.css            # Styles for the digital clock
├── js/
│   └── script.js            # JavaScript for real-time updates
├── WEB-INF/
│   ├── web.xml              # Web application configuration
│   ├── classes/            # Compiled Java classes (if any)
│   └── lib/                 # External libraries (if any)
├── index.jsp                # Main JSP file
├── README.md                # This file
└── .gitignore               # Git ignore file
```

## Features

- **Real-time Updates**: The clock displays the current time and updates every second.
- **Styled Appearance**: The clock has a modern, aesthetically pleasing design with a gradient background and frosted glass effect.

## Technologies Used

- **HTML**: Structure of the web page.
- **CSS**: Styling and layout of the clock.
- **JavaScript**: Real-time updates of the time.
- **JSP**: JavaServer Pages for dynamic content (optional in this example).

## Setup Instructions

### Prerequisites

- **Java Development Kit (JDK)**: Ensure JDK is installed if you plan to run the JSP parts.
- **Apache Tomcat** or another Java EE server: For running JSP files.

### Running the Project

1. **Clone the Repository**:

   ```sh
   git clone https://github.com/Pudamya/Digital-Clock.git
   ```

2. **Navigate to the Project Directory**:

   ```sh
   cd digital-clock
   ```

3. **Deploy the Project**:

   - If using Apache Tomcat:
     - Copy the `digital-clock` directory into the `webapps` directory of Tomcat.
     - Start Tomcat and access the clock via `http://localhost:8080/digital-clock`.

4. **Open the Project**:

   - Open `index.jsp` in a web browser or deploy it to a Java web server as described above.

## Code Explanation

- **`index.jsp`**: Contains the HTML structure of the clock and includes CSS and JavaScript files.
- **`css/style.css`**: Provides styling for the clock, including background, font, and layout.
- **`js/script.js`**: Contains JavaScript code to update the time every second.
- **`WEB-INF/web.xml`**: Configures the web application (includes servlet mappings and other settings).

## Contribution

Feel free to fork the repository and submit pull requests for improvements or bug fixes. Contributions are welcome!

## License

This project is licensed under the [MIT License](LICENSE).

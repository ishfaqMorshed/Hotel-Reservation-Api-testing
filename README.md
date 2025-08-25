# Hotel-Reservation-Api-testing

```markdown
# Hotel Reservation API Testing

This project involves automated **API testing** for the **Hotel Reservation System** using **Postman**, **Newman**, and **Jenkins** for **CI/CD**. The goal is to ensure the API works correctly by running tests on various endpoints for functionality, performance, and edge cases. This repository showcases the integration of **automated testing** and **continuous integration** through **Jenkins**.

---

## Project Structure

```

/hotel-reservation-api-testing
/Postman
\- BookingApi.json           # Postman Collection file
/TestCases
\- test-cases.md             # Detailed Test Cases in Markdown
/Reports
\- newman-report.html        # Newman HTML Report
\- jenkins-report.txt        # Jenkins Logs and Test Results
README.md
.gitignore

````

---

## API Documentation

API documentation for **Hotel Reservation System** is available through **Swagger** (integrated using SwaggerHub). You can access it [here](https://your_swaggerhub_url).

### Endpoints:

#### 1. **GET /booking/{id}**
   - **Description**: Fetch booking details by booking ID.
   - **Response**: 
     ```json
     {
       "firstname": "John",
       "lastname": "Doe",
       "totalprice": 150,
       "depositpaid": true,
       "bookingdates": {
         "checkin": "2023-01-01",
         "checkout": "2023-01-10"
       }
     }
     ```
   
#### 2. **POST /booking**
   - **Description**: Create a new booking.
   - **Request Body**:
     ```json
     {
       "firstname": "John",
       "lastname": "Doe",
       "totalprice": 150,
       "depositpaid": true,
       "bookingdates": {
         "checkin": "2023-01-01",
         "checkout": "2023-01-10"
       }
     }
     ```
   
#### 3. **PUT /booking/{id}**
   - **Description**: Update an existing booking by ID.

---

## How to Run the Tests

### **Step 1**: Running Tests in **Postman**
- Import the **Postman collection** (`BookingApi.json`) and **Environment** (`Environment.json`) into **Postman**.
- Run the collection and view results directly in the Postman interface.

### **Step 2**: Running Tests with **Newman**
To run the tests using **Newman** (Postman's CLI tool), use the following command:
```bash
newman run Postman/BookingApi.json -e Postman/Environment.json -d TestData/testdata.json --reporters=cli,htmlextra --reporter-htmlextra-export "Reports/newman-report.html"
````

This will run the **data-driven tests** using **Newman** and generate a detailed **HTML report**.

---

## Jenkins Integration for Automated Testing

### **Jenkins Job**:

This project also integrates **Jenkins** to run automated tests continuously.

1. **Jenkins Configuration**: The **Jenkins pipeline** (configured in the `Jenkinsfile`) runs the tests on every trigger and generates the reports.
2. **Reports**:

   * **Newman HTML report**: Available in the `/Reports` folder as `newman-report.html`.
   * **Jenkins report**: Available as `jenkins-report.txt`.

---

## Data-Driven Testing

Data-driven testing is implemented using **testdata.json**, which is passed dynamically into the tests. This allows running tests on multiple sets of data.

### Example of data-driven tests in Newman:

```bash
newman run Postman/BookingApi.json -e Postman/Environment.json -d TestData/testdata.json --reporters=cli,htmlextra --reporter-htmlextra-export "Reports/newman-report.html"
```

---

## Test Cases

### Test Case 1: **Verify status code for Get Booking ID**

* **Method**: GET
* **Endpoint**: `/booking/{id}`
* **Test Steps**:

  * Send GET request to `/booking/{id}`
  * Verify that the status code is 200
* **Expected Result**:

  * Status code is 200.
  * Response body should not be empty.

### Test Case 2: **Verify booking creation**

* **Method**: POST
* **Endpoint**: `/booking`
* **Test Steps**:

  * Send POST request with booking data
  * Verify `firstname` and `lastname` match the input values
* **Expected Result**:

  * Status code is 200
  * Response body includes the correct `firstname` and `lastname`

### Test Case 3: **Verify response time for Get Booking ID**

* **Method**: GET
* **Endpoint**: `/booking/{id}`
* **Test Steps**:

  * Send GET request
  * Verify response time is less than 500ms
* **Expected Result**:

  * Response time is less than 500ms
  * Status code is 200

---

## Jenkins Build Report

The Jenkins build integrates with **Newman** to run the tests automatically. Here's an example of the Jenkins report:

* **Build Status**: Success
* **Build Number**: 45
* **Test Summary**:

  * Total Tests Run: 50
  * Passed: 48
  * Failed: 2
* **Build Logs**: You can check the full Jenkins logs and view test results in the `jenkins-report.txt` file.

---

## UX Features

| Feature                 | Logic                                                    |
| ----------------------- | -------------------------------------------------------- |
| **Spinner**             | `{{ !run_missing_workflow.isFetching }}` in hidden field |
| **Success Message**     | Event Handler → Query Success → Show Notification        |
| **Button Trigger**      | Triggers `run_missing_workflow`                          |
| **Table/Chart Binding** | `{{ run_missing_workflow.data }}`                        |

---

## How to Run It Yourself

### **Step 1**: Create Jenkins Job

* Follow the instructions in the **Jenkinsfile** to create a Jenkins pipeline that runs the tests and generates the reports.

### **Step 2**: Upload Test Data

* Upload the **CSV** or **JSON** files for **data-driven testing** into the `TestData` folder.

### **Step 3**: Run Jenkins Job

* Trigger the **Jenkins job** manually or automatically via GitHub integration.

---

## Key Takeaways

* **Jenkins Integration**: Demonstrates automated testing with **Jenkins** to ensure continuous testing and reporting.
* **Data-Driven Testing**: Enhances test coverage by running the same set of tests on multiple sets of data.
* **Automation Pipeline**: Showcase your **CI/CD** skills by integrating **Newman** with **Jenkins**.

---

## Final Result

* **282 missing encounters** were found across thousands of records.
* **Continuous audit** is now enabled with automated testing.
* **Dashboard** helps analysts, managers, and QA teams monitor data quality.

---

## Author

Developed by **Ishfaq Morshed** for demonstrating **automated API testing** and **Jenkins integration** in a real-world project.

* **Built using**: Postman, Newman, Jenkins, Data-Driven Testing

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

### **Screenshots of Jenkins Job**:

![Jenkins Test Execution](screenshots/jenkins-build.png)


```

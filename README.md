

```markdown
# 🏨 Hotel Reservation API Testing 🏨

This project involves automated **API testing** for the **Hotel Reservation System** using **Postman**, **Newman**, and **Jenkins** for **CI/CD**. The goal is to ensure the API works correctly by running tests on various endpoints for functionality, performance, and edge cases. This repository showcases the integration of **automated testing** and **continuous integration** through **Jenkins**.

---

## 📁 Project Structure

/hotel-reservation-api-testing
│
├── /Documentation # Project and API Documentation 📜
│ └── API Documentation Link # Swagger API Documentation 🌐
│
├── /Postman # Postman Collection and Environment
│ └── BookingApi.json # Postman Collection file 📚
│
├── /TestCase # Test Case Documentation 📝
│ └── test-cases.md # Detailed Test Cases in Markdown 📝
│
├── /Reports # Test Reports
│ ├── newman-report.html # Newman HTML Report 📑
│ └── jenkins-report.txt # Jenkins Logs and Test Results 🖥️
│
├── README.md # Project Overview and Setup Instructions 📄
└── .gitignore # Git Ignore file 🚫

````

---

## 📜 API Documentation

For detailed **API documentation** for the **Hotel Reservation System**, please refer to the official SwaggerHub link:

[**API Documentation on SwaggerHub**](https://app.swaggerhub.com/apis/ishfak/Booking_API/1.0.0) 🌐

### Endpoints:

#### 1. **GET /booking/{id}** 📖
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

#### 2. **POST /booking** 📝
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

#### 3. **PUT /booking/{id}** 🔄
   - **Description**: Update an existing booking by ID.

---

## 🧑‍💻 How to Run the Tests

### **Step 1**: Running Tests in **Postman** 🚀
- Import the **Postman collection** (`BookingApi.json`) and **Environment** (`Environment.json`) into **Postman**.
- Run the collection and view results directly in the Postman interface.

### **Step 2**: Running Tests with **Newman** 🎯
To run the tests using **Newman** (Postman's CLI tool), use the following command:
```bash
newman run Postman/BookingApi.json -e Postman/Environment.json -d TestData/testdata.json --reporters=cli,htmlextra --reporter-htmlextra-export "Reports/newman-report.html"
````

This will run the **data-driven tests** using **Newman** and generate a detailed **HTML report**.

---

## 🏗️ Jenkins Integration for Automated Testing

### **Jenkins Job**:

This project also integrates **Jenkins** to run automated tests continuously.

1. **Jenkins Configuration**: The **Jenkins pipeline** (configured in the `Jenkinsfile`) runs the tests on every trigger and generates the reports.
2. **Reports**:

   * **Newman HTML report**: Available in the `/Reports` folder as `newman-report.html`.
   * **Jenkins report**: Available as `jenkins-report.txt`.

---

## 🔄 Data-Driven Testing

Data-driven testing is implemented using **testdata.json**, which is passed dynamically into the tests. This allows running tests on multiple sets of data.

### Example of data-driven tests in Newman:

```bash
newman run Postman/BookingApi.json -e Postman/Environment.json -d TestData/testdata.json --reporters=cli,htmlextra --reporter-htmlextra-export "Reports/newman-report.html"
```

---

## 🔥 How to Run It Yourself

### **Step 1**: Create Jenkins Job 🛠️

* Follow the instructions in the **Jenkinsfile** to create a Jenkins pipeline that runs the tests and generates the reports.

### **Step 2**: Upload Test Data 📥

* Upload the **CSV** or **JSON** files for **data-driven testing** into the `TestData` folder.

### **Step 3**: Run Jenkins Job 🏃

* Trigger the **Jenkins job** manually or automatically via GitHub integration.

---

## 💡 Key Takeaways

* **Jenkins Integration**: Demonstrates automated testing with **Jenkins** to ensure continuous testing and reporting.
* **Data-Driven Testing**: Enhances test coverage by running the same set of tests on multiple sets of data.
* **Automation Pipeline**: Showcase your **CI/CD** skills by integrating **Newman** with **Jenkins**.

---

## 👨‍💻 Author

Developed by **Ishfaq Morshed** for demonstrating **automated API testing** and **Jenkins integration** in a real-world project.

* **Built using**: Postman 🛠️, Newman 🖥️, Jenkins 🔄, Data-Driven Testing 📊

---



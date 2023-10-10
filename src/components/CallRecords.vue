<template>
    <div>
      <h1>Call Records</h1>
      <table>
        <thead>
          <tr>
            <th>Date and Time</th>
            <th>From</th>
            <th>To</th>
            <th>Duration (secs)</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="record in callRecords" :key="record._id">
            <td>{{ record.start }}</td>
            <td>{{ record.from }}</td>
            <td>{{ record.to }}</td>
            <td>{{ calculateDuration(record.start, record.end) }}</td>
          </tr>
        </tbody>
      </table>
    </div>
  </template>
  
  <script>
  import axios from './axios-config'; // Import the custom Axios instance
  
  const apiClient = axios.create({
    baseURL: 'http://45.119.160.27:8080', // Your API endpoint
    withCredentials: false, // Include credentials (cookies, Authorization headers, etc.)  
  });
  
  export default {
    data() {
      return {
        callRecords: [],
      };
    },
    mounted() {
      this.fetchCallRecords();
    },
    methods: {
      async fetchCallRecords() {
        try {
          const response = await apiClient.get('/cdrs/hosted.voice.atomcomm.com/ext-timestamp', {
            params: {
              start: '2023-09-05T10:00:00Z',
              end: '2023-10-05T11:00:00Z',
              extension: '890'
            }
          });
          this.callRecords = response.data;
        } catch (error) {
          // Handle errors more gracefully
          console.error('Error fetching call records:', error);
          this.callRecords = []; // Clear the records to indicate loading failure
        }
      },
      calculateDuration(start, end) {
        const startDate = new Date(start);
    margin-top: 20px;
  }
  
  th, td {
    border: 1px solid #ddd;
    padding: 10px;
    text-align: left;
  }
  
  th {
    background-color: #f2f2f2;
  }
  </style>
       const endDate = new Date(end);
        const durationInSeconds = (endDate - startDate) / 1000;
        return durationInSeconds.toFixed(2);
      },
    },
  };
  </script>
  
  <style scoped>
  table {
    width: 100%;
    border-collapse: collapse;
   
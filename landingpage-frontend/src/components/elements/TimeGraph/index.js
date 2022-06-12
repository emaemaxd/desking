import { Link } from "gatsby";
import React from "react"
import * as styles from "./index.module.scss"
import { LineChart, Line, ResponsiveContainer } from 'recharts'
import { Bar, Doughnut } from 'react-chartjs-2';
import { Chart as ChartJS, CategoryScale, LinearScale, BarElement, Title, Tooltip, Legend,} from 'chart.js';
import faker from 'faker';


const TimeGraph = (props) => {

   /* const data = [{ name: 'Mo', uv: 10 }, { name: 'Di', uv: 8 },
    { name: 'Mi', uv: 5}, { name: 'Do', uv: 8 },{ name: 'Fr', uv: 6 },{ name: 'Sa', uv: 7 },] */
    
    ChartJS.register(
      CategoryScale,
      LinearScale,
      BarElement,
      Title,
      Tooltip,
      Legend
    );
    
    const options = {
      responsive: true,
      plugins: {
        legend: {
          position: 'top',
        },
        title: {
          display: true,
          text: 'Chart.js Bar Chart',
        },
      },
    };
    
    const labels = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
    
    const data = {
      labels,
      datasets: [
        {
          label: 'Dataset 1',
          data: labels.map(() => faker.datatype.number({ min: 0, max: 1000 })),
          backgroundColor: 'rgba(255, 99, 132, 0.5)',
        },
        {
          label: 'Dataset 2',
          data: labels.map(() => faker.datatype.number({ min: 0, max: 1000 })),
          backgroundColor: 'rgba(53, 162, 235, 0.5)',
        },
      ],
    };
    
    
    return (
        <div style={{ maxHeight: 360, height: '100%' }}>
            <ResponsiveContainer>
            <Bar options={options} data={data} />;
            </ResponsiveContainer>
        </div>
    );

}

export default TimeGraph
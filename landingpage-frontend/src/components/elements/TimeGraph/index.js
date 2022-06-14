import { Link } from "gatsby";
import React from "react"
import * as styles from "./index.module.scss"
import { Bar } from 'react-chartjs-2';
import { Chart as ChartJS, CategoryScale, LinearScale, BarElement, Title, Tooltip, Legend} from 'chart.js';
const  {faker} = require('@faker-js/faker');

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
          text: 'Arbeitszeiten',
        },
      },
    };
    
    const labels = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
    
    const data = {
      labels,
      datasets: [
        {
          label: 'SOLL',
          data: labels.map(() => faker.datatype.number({ min: 0, max: 8 })),
          backgroundColor: 'rgba(255, 99, 132, 0.5)',
        },
        {
          label: 'IST',
          data: labels.map(() => faker.datatype.number({ min: 0, max: 8 })),
          backgroundColor: 'rgba(53, 162, 235, 0.5)',
        },
      ],
    };
    
    
    return (
        <div style={{ maxHeight: 360, height: '100%', marginBottom: '15%' }}>
            <Bar options={options} data={data} />;
        </div>
    )

}

export default TimeGraph
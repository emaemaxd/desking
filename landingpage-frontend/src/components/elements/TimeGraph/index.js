import { Link } from "gatsby";
import React from "react"
import * as styles from "./index.module.scss"
import { LineChart, Line, ResponsiveContainer } from 'recharts'

const TimeGraph = (props) => {

    const data = [{ name: 'Mo', uv: 10 }, { name: 'Di', uv: 8 },
    { name: 'Mi', uv: 5}, { name: 'Do', uv: 8 },{ name: 'Fr', uv: 6 },{ name: 'Sa', uv: 7 },]

    return (
        <div style={{ maxHeight: 360, height: '100%' }}>
            <ResponsiveContainer>
                <LineChart data={data}>
                    <Line type="linear" dataKey="uv" stroke="#3C3429" />
                </LineChart>
            </ResponsiveContainer>
        </div>
    );

}

export default TimeGraph
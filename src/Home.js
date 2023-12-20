import React from 'react';
import { Link } from 'react-router-dom';

const Home = () => {
    return (
        <div>
            <h1>Welcome to Our E-Commerce Store</h1>
            {/* Add links to Register and Login pages */}
            <nav>
                <ul>
                    <li><Link to="/register">Register</Link></li>
                    <li><Link to="/login">Login</Link></li>
                </ul>
            </nav>
            {/* Your product list and other content goes here */}
        </div>
    );
};

export default Home;

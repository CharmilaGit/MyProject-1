# Use an official base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . .

# Install dependencies
RUN npm install

# Expose port 3000
EXPOSE 3000

# Define the command to run the application
CMD ["npm", "start"]


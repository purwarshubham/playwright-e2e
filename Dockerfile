# Base image with Node + Playwright deps
FROM mcr.microsoft.com/playwright:v1.55.0-jammy

# Set working directory
WORKDIR /app

# Copy package.json and lock files first (for better caching)
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy your test source
COPY . .

# Run tests by default (can override in kubectl or CI)
CMD ["npx", "playwright", "test", "--reporter=list"]

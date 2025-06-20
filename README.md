# CTS App (Component Technical Specification)

This is a Ruby on Rails application for managing component technical specifications. It allows you to add, edit, and view multiple sets of technical data, ordering information, connection data, dimensions, and image uploads for each item.

---

## Tech Stack

- **Ruby on Rails 8**
- **PostgreSQL** (as database)
- **Bootstrap** (for UI)
- **Active Storage** (for image uploads)
- **JSONB fields** (for structured dynamic form data)

---

## Features

- Add/Edit/Delete items with:
  - Technical Data (JSON key-value pairs)
  - Ordering Information (Cat No, Description, Pack)
  - Connection Data (JSON key-value pairs)
  - Dimensions (JSON key-value pairs)
  - Image Upload (with preview)
- Dynamic form fields using JavaScript
- JSON validations to ensure data presence
- Clean Bootstrap-based UI

---

## Setup Instructions

### Prerequisites

- Ruby installed (`ruby -v`)
- Rails 8+
- PostgreSQL installed and running

---

### 1. Clone the Repository

```bash
git clone https://github.com/udayprakashdwivedi/cts_app.git
